package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import smart.mall.domain.SysUserRoleDO;

/**
 * 用户角色(sys_user_role) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysUserRoleDao extends BaseDao<SysUserRoleDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

	@Select("SELECT role_id FROM sys_user_role "
			+ " WHERE user_no = #{userNo}")
	@ResultType(Integer.class)
	List<Integer> listRoleIdByUser(@Param("userNo") String userNo);
	
}

