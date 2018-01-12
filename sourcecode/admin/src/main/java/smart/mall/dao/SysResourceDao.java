package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import smart.mall.domain.SysResourceDO;

/**
 * 资源(sys_resource) 实体类的Dao
 * 
 * author: wutianbin
 */
@Mapper
public interface SysResourceDao extends BaseDao<SysResourceDO> {

	// 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !!

	@Select("SELECT DISTINCT t1.* FROM sys_resource t1 "
			+ "INNER JOIN  sys_role_resource t2  ON t1.id=t2.resource_id "
			+ "INNER JOIN  sys_user_role t3  ON t3.role_id=t2.role_id "
			+ "WHERE t3.user_no =#{userNo} AND is_show=1 ORDER BY t1.menu_order")
	@ResultMap("sysResourceMap")
	List<SysResourceDO> listMenuByUser(@Param("userNo") String userNo);

	@Select("SELECT * FROM sys_resource m ORDER BY m.menu_order ")
	@ResultMap("sysResourceMap")
	List<SysResourceDO> listAll();

}
