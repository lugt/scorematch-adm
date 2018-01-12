package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import smart.mall.domain.SysPersonalDO;

/**
 * 个人信息(sys_personal) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysPersonalDao extends BaseDao<SysPersonalDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

	@Select("select distinct * from sys_personal where user_no in (${idStr})")
	@ResultMap("sysPersonalMap")
	List<SysPersonalDO> listByIds(@Param("idStr") String idStr);

}

