package smart.mall.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import smart.mall.dao.SysRoleDao;
import smart.mall.dao.SysRoleResourceDao;
import smart.mall.dao.SysUserRoleDao;
import smart.mall.service.SysRoleService;
import smart.mall.domain.SysRoleDO;
import smart.mall.domain.SysRoleResourceDO;
import smart.mall.dto.SysRoleDTO;

/**
 * 角色(sys_role) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysRoleServiceImpl extends BaseServiceImpl<SysRoleDO>
        implements SysRoleService {

	private static final Logger logger = LoggerFactory.getLogger(SysRoleServiceImpl.class);
	
    @Autowired 
    private SysRoleDao sysRoleDao;

    @Autowired 
    private SysRoleResourceDao sysRoleResourceDao;
    
    @Autowired 
    private SysUserRoleDao sysUserRoleDao;

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int deleteByKeyBatch(List<SysRoleDO> list) {
		int ret = 0;
		for (SysRoleDO role : list) {
			deleteRoleResources(role);
			int thisRet = sysRoleDao.deleteByKey(role);
			ret += thisRet;
		}
		return ret;
	}
	
	@Override
	public int updateBatchExt(List<SysRoleDTO> list) {
		int ret = 0;
		for (SysRoleDTO role : list) {
			logger.debug("SysRoleServiceImpl.updateBatchExt():" + role);
			int thisRet = sysRoleDao.update(role);
			resetDefaultRole(role);
			updateRoleResources(role);
			ret += thisRet;
		}
		return ret;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int saveBatchExt(List<SysRoleDTO> list) {
		int ret = 0;
		for (SysRoleDTO role : list) {
			int thisRet = sysRoleDao.save(role);
			if (thisRet > 0) {
				resetDefaultRole(role);
				saveRoleResources(role);
			}
			ret += thisRet;
		}
		return ret;
	}

	private void resetDefaultRole(SysRoleDTO role) {
		if ("1".equals(role.getIsDefault())) {
			if (role.getId() != null) {
				sysRoleDao.resetOtherNotDefaultRole(role.getId());
			}
		}		
	}

	private void deleteRoleResources(SysRoleDO role) {
		SysRoleResourceDO example = new SysRoleResourceDO();
		example.setRoleId(role.getId());
		sysRoleResourceDao.deleteByExample(example);
	}

	private void saveRoleResources(SysRoleDTO role) {
		List<Integer> resList = strTolistOfMenus(role.getMenuIds());
		if (resList != null && resList.size() > 0) {
			for (Integer resId : resList) {
				SysRoleResourceDO roleRes = new SysRoleResourceDO();
				roleRes.setRoleId(role.getId());
				roleRes.setResourceId(resId);
				sysRoleResourceDao.save(roleRes);
			}
		}
	}

	private void updateRoleResources(SysRoleDTO role) {
		// 先删除原来的权限
		deleteRoleResources(role);
		// 加入新的权限
		saveRoleResources(role);
	}

	private List<Integer> strTolistOfMenus(String menuIds) {
		if (menuIds == null || menuIds.trim().isEmpty()) {
			return null;
		}
		
		List<Integer> menuIdList = new ArrayList<Integer>();
		
		String[] menus = menuIds.split(",");
		for(String menu : menus) {
			try {
				Integer menuId = Integer.valueOf(menu);
				menuIdList.add(menuId);
			} catch(Exception e) {
				logger.error("处理角色的可用菜单时转换出错：menuIds=" + menuIds);
			}
		}
		
		return menuIdList;
	}

	@Override
	public List<SysRoleDO> listAll() {
		return sysRoleDao.listAll();
	}

	@Override
	public List<SysRoleDTO> listAll(String userNo) {
		List<SysRoleDTO> outList = new ArrayList<SysRoleDTO>();

		List<SysRoleDO> list = sysRoleDao.listAll();
		List<Integer> userRoles = sysUserRoleDao.listRoleIdByUser(userNo);
		for (SysRoleDO role : list) {
			SysRoleDTO roleDTO = SysRoleDTO.cloneFrom(role);
			roleDTO.setRoleSign("false");
			for (Integer roleId : userRoles) {
				if (Objects.equals(role.getId(), roleId)) {
					roleDTO.setRoleSign("true");
					break;
				}
			}
			outList.add(roleDTO);
		}
		
		return outList;
	}

	@Override
	public SysRoleDO findByCode(String code, Integer filterId) {
		List<SysRoleDO> list = null;
		if (filterId != null) {
			list = sysRoleDao.findByCodeEx(code, filterId);
		} else {
			list = sysRoleDao.findByCode(code);
		}
		
		if (list == null || list.size() <= 0) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Override
	public SysRoleDO findByName(String name, Integer filterId) {
		List<SysRoleDO> list = null;
		if (filterId != null) {
			list = sysRoleDao.findByNameEx(name, filterId);
		} else {
			list = sysRoleDao.findByName(name);
		}

		if (list == null || list.size() <= 0) {
			return null;
		} else {
			return list.get(0);
		}
	}

}

