package smart.mall.service;

import java.util.List;
import java.util.Map;

import smart.mall.domain.SysUserDO;
import smart.mall.dto.SysUserDTO;

/**
 * 用户表(sys_user) 实体类的数据服务类 
 * 
 * author: wutianbin
 */ 
public interface SysUserService extends BaseService<SysUserDO> {

	int saveBatchExt(List<SysUserDTO> list);

	int updateBatchExt(List<SysUserDTO> list);

	SysUserDO verifyUser(String loginName, String password);
	
	int resetPassword(SysUserDO user);

	Map<String, SysUserDO> listByIds(List<String> userNoList);
	
	SysUserDTO getByKeyEx(SysUserDO example);
	
	List<String> getUserIdList(List<Object> list);
	
	Map<String, SysUserDO> getMapByNo(List<Object> ObjListContainUserNo);

	SysUserDO findByLoginName(String loginName, String filterNo);

	SysUserDO findByNo(String userNo);

}

