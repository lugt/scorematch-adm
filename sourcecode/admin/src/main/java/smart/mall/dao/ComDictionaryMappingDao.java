package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.ComDictionaryMappingDO;

/**
 * 第三方数据字典com_dictionary与业务系统字典映射(com_dictionary_mapping) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface ComDictionaryMappingDao extends BaseDao<ComDictionaryMappingDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

