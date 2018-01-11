package smart.mall.service;

import java.util.List;

import smart.mall.domain.SysRoleDO;
import smart.mall.dto.SysRoleDTO;

/**
 * 角色(sys_role) 实体类的数据服务类 
 * 
 * author: wutianbin
 */ 
public interface SysRoleService extends BaseService<SysRoleDO> {

	int saveBatchExt(List<SysRoleDTO> list);

	int updateBatchExt(List<SysRoleDTO> list);
	
	List<SysRoleDO> listAll();

	List<SysRoleDTO> listAll(String userNo);
	
	SysRoleDO findByCode(String code, Integer filterId);
	
	SysRoleDO findByName(String name, Integer filterId);
	
}

