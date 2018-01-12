package smart.mall.service.impl;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import smart.mall.dao.SysPersonalDao;
import smart.mall.dao.SysUserDao;
import smart.mall.dao.SysUserRoleDao;
import smart.mall.service.SysPersonalService;
import smart.mall.service.SysUserService;
import smart.mall.utils.BeanUtil;
import smart.mall.utils.MD5Utils;
import smart.mall.domain.SysPersonalDO;
import smart.mall.domain.SysUserDO;
import smart.mall.domain.SysUserRoleDO;
import smart.mall.dto.Page;
import smart.mall.dto.SysUserDTO;
import smart.mall.dao.SysUserRoleDao;

/**
 * 用户表(sys_user) 实体类的数据服务类实现
 * 
 * author: wutianbin
 */
@Service
@Primary
public class SysUserServiceImpl extends BaseServiceImpl<SysUserDO> implements SysUserService {
	
	private static final Logger logger = LoggerFactory.getLogger(SysUserServiceImpl.class);
	
	@Value("${oa.enabled}")
	private String oaapiEnabled;
	
	@Autowired
	private SysUserDao sysUserDao;

	@Autowired
	private SysPersonalDao sysPersonalDao;

	@Autowired
	private SysPersonalService sysPersonalService;
	
	@Autowired
	private SysUserRoleDao sysUserRoleDao;

	private boolean oaapiIsEnabled() {
		if (oaapiEnabled != null) {
			if ("true".equals(oaapiEnabled.trim().toLowerCase())) {
				return true;
			}
		}
		return false;
	}
	
	@Override
	public SysUserDTO getByKeyEx(SysUserDO example) {
		SysUserDO user = this.getByKey(example);
		if (user != null) {
			SysUserDTO dto = new SysUserDTO();
            BeanUtils.copyProperties(user, dto);
            
			SysPersonalDO personal = sysPersonalDao.getByKey(user.getUserNo());
			if (personal != null) {
				dto.setPhoneBak(personal.getPhoneBak());
			}
			
			return dto;
		}
		
		return null;
	}
	
	@Override
	public int save(SysUserDO t) {
		String pwd = t.getPassword();
		if (pwd != null) {
			try {
				pwd = calcScrPassword(t, pwd);
				t.setPassword(pwd);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}
		
		int ret = sysUserDao.save(t);
		return ret;
	}
	
	@Override
	public int resetPassword(SysUserDO user) {
		String userNo = user.getUserNo();
		if (userNo == null || userNo.trim().isEmpty()) {
			return 0;
		}
		
		String pwd = user.getPassword();  // 明文密码
		try {
			pwd = calcScrPassword(user, pwd);
			if (this.oaapiIsEnabled()) {
				// 修改OA上的密码
				if (user.getPCode() != null && !user.getPCode().trim().isEmpty()) {
					// PCode有值，说明是从OA同步过来的用户，需要同时修改OA上的密码
					//dhAirOaApiService.resetPassword(user.getUserNo(), pwd);
				}
			}
			return sysUserDao.resetPwd(userNo, pwd);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public SysUserDO verifyUser(String loginName, String password) {
		List<SysUserDO> list = sysUserDao.listForLogin(loginName);
		if (list != null && list.size() > 0) {
			for(SysUserDO sysUser : list) {
//				//TODO 开发 暂时模拟登录
//				if(inputName.equals("A0001")){
//					return sysUser;
//				}
				boolean oaLoginOK = false;
				if (oaapiIsEnabled()) {
					if (sysUser.getPCode() != null && !sysUser.getPCode().trim().isEmpty()) {
						// 启用OA接口，并且用户是从OA同步过来的，就需要到OA上验证
						oaLoginOK = verifyPasswordByOA(sysUser, password);
					}
				}
				
				if (oaLoginOK) {
					return sysUser;
				} else {
					// OA登录失败，采用本系统登录
					if (verifyPassword(sysUser, password)) {
						return sysUser;
					}				
				}
			}
		}
		
		return null;
	}

	private boolean verifyPasswordByOA(SysUserDO sysUser, String password) {
		// 给OA传递原码
		//return dhAirOaApiService.oaLigin(sysUser.getUserLoginName(), password);
		return true;
	}

	private boolean verifyPassword(SysUserDO sysUser, String password) {
		// UPPER(MD5(CONCAT(MD5(?), user_no)))
		// admin,12345678,,3C2C28608BF517CBF83E2345779C804B
		try {
			String scr = calcScrPassword(sysUser, password);

			logger.debug("inputPwd：" + password + ", user_no: " + sysUser.getUserNo());
			
			logger.debug("计算出来的密码：" + scr);
			logger.debug("数据库中的密码：" + sysUser.getPassword());
			
			return scr.equals(sysUser.getPassword());
		} catch(Exception e) {
			logger.error("校验出异常：", e);
		}
		
		return false;
	}

	private String calcScrPassword(SysUserDO sysUser, String password) throws NoSuchAlgorithmException {
		String s_pwd = MD5Utils.getMD5(password).toLowerCase();
		String s_pwdAndNo = MD5Utils.getMD5(s_pwd + sysUser.getUserNo());
		String scr = s_pwdAndNo.toUpperCase();
		return scr;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int deleteByKeyBatch(List<SysUserDO> list) {
		int ret = 0;
		for (SysUserDO user : list) {
			deleteUserRoles(user);
			deletePersonal(user);
			int thisRet = sysUserDao.deleteByKey(user);
			ret += thisRet;
		}
		return ret;
	}
	
	private void deletePersonal(SysUserDO user) {
		SysPersonalDO example = new SysPersonalDO();
		example.setUserNo(user.getUserNo());
		sysPersonalDao.deleteByExample(example);
	}

	@Override
	public int updateBatchExt(List<SysUserDTO> list) {
		int ret = 0;
		for (SysUserDTO user : list) {
			logger.debug("SysUserServiceImpl.updateBatchExt():" + user);
			int thisRet = sysUserDao.update(user);
			
			updateUserRoles(user);
			saveOrUpdatePersonal(user);
			
			ret += thisRet;
		}
		return ret;
	}

	private void updateUserRoles(SysUserDTO user) {
		// 先删除原来的权限
		deleteUserRoles(user);
		// 加入新的权限
		saveUserRoles(user);
	}

	private void saveUserRoles(SysUserDTO user) {
		List<Integer> roleList = strTolistOfInteger(user.getRoleIds());
		if (roleList != null && roleList.size() > 0) {
			for (Integer roleId : roleList) {
				SysUserRoleDO roleRes = new SysUserRoleDO();
				roleRes.setUserNo(user.getUserNo());
				roleRes.setRoleId(roleId);
				sysUserRoleDao.save(roleRes);
			}
		}
	}

	private List<Integer> strTolistOfInteger(String roleIds) {
		if (roleIds == null || roleIds.trim().isEmpty()) {
			return null;
		}
		
		List<Integer> roleIdList = new ArrayList<Integer>();
		
		String[] roles = roleIds.split(",");
		for(String role : roles) {
			try {
				Integer roleId = Integer.valueOf(role);
				roleIdList.add(roleId);
			} catch(Exception e) {
				logger.error("转换为List<Integer>出错：roleIds=" + roleIds);
			}
		}
		
		return roleIdList;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int saveBatchExt(List<SysUserDTO> list) {
		int ret = 0;
		for (SysUserDTO user : list) {
			int thisRet = this.save(user);
			if (thisRet > 0) {
				saveUserRoles(user);
				saveOrUpdatePersonal(user);
			}
			ret += thisRet;
		}
		return ret;
	}

	private void saveOrUpdatePersonal(SysUserDTO user) {
		SysPersonalDO personal = new SysPersonalDO();
		personal.setUserNo(user.getUserNo());
		personal.setPhoneBak(user.getPhoneBak());

		SysPersonalDO updateObj = sysPersonalDao.getByKey(personal.getUserNo());
		
		if (updateObj == null) {
			sysPersonalDao.save(personal);
		} else {
			sysPersonalDao.update(personal);
		}
	}

	private void deleteUserRoles(SysUserDO user) {
		SysUserRoleDO example = new SysUserRoleDO();
		example.setUserNo(user.getUserNo());
		sysUserRoleDao.deleteByExample(example);
	}

	@Override
	public Map<String, SysUserDO> listByIds(List<String> ids) {
		logger.debug("listByIds(" + ids);
		if (ids == null || ids.size() <= 0) {
			return null;
		}
		
		StringBuffer sb = new StringBuffer();
		for(String id : ids) {
			sb.append(",").append("'" + id + "'");
		}
		
		sb.deleteCharAt(0);
		
		String idStr = sb.toString().trim();
		if (idStr.isEmpty()) {
			return null;
		}
		
		List<SysUserDO> list = sysUserDao.listByIds(idStr);
		if (list == null || list.size() <= 0) {
			return null;
		}
		
		Map<String, SysUserDO> map = new HashMap<>();
		for (SysUserDO obj : list) {
			map.put(obj.getUserNo(), obj);
		}
		
		return map;
	}

    @SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
    public Page listPage(Integer page, Integer pageSize, SysUserDO example) {
        Page ret = super.listPage(page, pageSize, example);
        
        Map<String, SysPersonalDO> personalMap = getPersonalMap(ret.getList());
        
        List destList = new ArrayList<>(ret.getList().size());
        for (Object obj : ret.getList()) {
        	SysUserDTO dto = new SysUserDTO();
            BeanUtils.copyProperties(obj, dto);
            
            if(personalMap != null && personalMap.containsKey(dto.getUserNo())){
                dto.setPhoneBak(personalMap.get(dto.getUserNo()).getPhoneBak());
            }
            
            destList.add(dto);
        }

        ret.setList(destList);

        return ret;
    }
    
	private Map<String, SysPersonalDO> getPersonalMap(List<Object> readDOList) {
    	List<String> ids = getUserIdList(readDOList);
    	Map<String, SysPersonalDO> objMap = sysPersonalService.listByIds(ids);
    	return objMap;
	}

	@Override
    public List<String> getUserIdList(List<Object> list) {
    	List<String> ids = new ArrayList<String>();
    	
    	for (Object obj : list) {
    		String userNo = (String)BeanUtil.getFieldValueByName(obj, "userNo");
    		if (userNo != null && !userNo.trim().isEmpty()) {
    			ids.add(userNo);
    		}
    	}
    	
		return ids;
	}

	@Override
	public Map<String, SysUserDO> getMapByNo(List<Object> ObjListContainUserNo) {
    	List<String> ids = getUserIdList(ObjListContainUserNo);
    	Map<String, SysUserDO> objMap = this.listByIds(ids);
    	return objMap;
	}

	@Override
	public SysUserDO findByLoginName(String loginName, String filterNo) {
		List<SysUserDO> list = null;
		if (filterNo != null && !filterNo.trim().isEmpty()) {
			list = sysUserDao.findByLoginNameEx(loginName, filterNo);
		} else {
			list = sysUserDao.findByLoginName(loginName);
		}
		
		if (list == null || list.size() <= 0) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Override
	public SysUserDO findByNo(String userNo) {
		List<SysUserDO> list = sysUserDao.findByNo(userNo);
		
		if (list == null || list.size() <= 0) {
			return null;
		} else {
			return list.get(0);
		}
	}

}
