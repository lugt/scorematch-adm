package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import smart.mall.domain.ComDictionaryDO;
import smart.mall.domain.ComDictionaryDO;

/**
 * 数据字典(com_dictionary) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface ComDictionaryDao extends BaseDao<ComDictionaryDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

	@Select("select * from com_dictionary ORDER BY dict_type, order_no ")
	@ResultMap("comDictionaryMap")
	List<ComDictionaryDO> listAll();

}

