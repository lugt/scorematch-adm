package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import smart.mall.domain.SysAtachmentDO;

/**
 * 附件(sys_atachment) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysAtachmentDao extends BaseDao<SysAtachmentDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

	@Select("select distinct * from sys_atachment where parent_table_name = #{tableName} and parent_row_id = #{rowId}")
	@ResultMap("sysAtachmentMap")
	List<SysAtachmentDO> listForParentTable(@Param("tableName") String tableName, @Param("rowId")String rowId);
	
}

