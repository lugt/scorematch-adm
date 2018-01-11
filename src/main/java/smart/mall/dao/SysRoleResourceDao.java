package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import smart.mall.domain.SysRoleResourceDO;

/**
 * 角色资源权限(sys_role_resource) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysRoleResourceDao extends BaseDao<SysRoleResourceDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 
	
	@Select("SELECT resource_id FROM sys_role_resource "
			+ " WHERE role_id = #{roleId}")
	@ResultType(Integer.class)
	List<Integer> listMenuIdByRoleId(@Param("roleId") Integer roleId);
	
}	



