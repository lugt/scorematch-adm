package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import smart.mall.domain.SysRoleDO;

/**
 * 角色(sys_role) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysRoleDao extends BaseDao<SysRoleDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

	@Select("SELECT * FROM sys_role m ")
	@ResultMap("sysRoleMap")
	List<SysRoleDO> listAll();

	@Select("SELECT * FROM sys_role m where role_code=#{roleCode} and id != #{filterId}")
	@ResultMap("sysRoleMap")
	List<SysRoleDO> findByCodeEx(@Param("roleCode")String code, @Param("filterId")Integer filterId);

	@Select("SELECT * FROM sys_role m where role_code=#{roleCode}")
	@ResultMap("sysRoleMap")
	List<SysRoleDO> findByCode(@Param("roleCode")String code);

	@Select("SELECT * FROM sys_role m where name=#{roleName} and id != #{filterId}")
	@ResultMap("sysRoleMap")
	List<SysRoleDO> findByNameEx(@Param("roleName")String roleName, @Param("filterId")Integer filterId);

	@Select("SELECT * FROM sys_role m where name=#{roleName}")
	@ResultMap("sysRoleMap")
	List<SysRoleDO> findByName(@Param("roleName")String name);

	@Update("update sys_role set is_default = 0 where id!=#{filterId}")
	int resetOtherNotDefaultRole(@Param("filterId")Integer filterId);

}

