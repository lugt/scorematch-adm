package smart.mall.service;

import java.util.Map;

import smart.mall.domain.ComDictionaryDO;

/**
 * 数据字典(com_dictionary) 实体类的数据服务类 
 * 
 * author: wutianbin
 */ 
public interface ComDictionaryService extends BaseService<ComDictionaryDO> {

	void loadAll(Map<String, Map<String, String>> dictMap);

	Integer getIdByTypeAndCode(String dictType, String dictCode);
	
}

