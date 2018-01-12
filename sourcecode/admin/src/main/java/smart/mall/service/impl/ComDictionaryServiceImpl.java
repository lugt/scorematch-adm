package smart.mall.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.ComDictionaryDao;
import smart.mall.service.ComDictionaryService;
import smart.mall.domain.ComDictionaryDO;

/**
 * 数据字典(com_dictionary) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class ComDictionaryServiceImpl extends BaseServiceImpl<ComDictionaryDO>
        implements ComDictionaryService {
	
    @Autowired 
    private ComDictionaryDao comDictionaryDao;

	@Override
	public void loadAll(Map<String, Map<String, String>> dictMap) {
//      如下格式的信息添加到dictMap里面：
//		Map<String, String> userType = new TreeMap<>();
//		userType.put("F", "飞行员");
//		userType.put("C", "乘务员");
//		userType.put("A", "安全员");
//		dictMap.put("userType", userType);
		List<ComDictionaryDO> list = comDictionaryDao.listAll();
		if (list == null || list.size() <= 0) {
			return;
		}
		
		// 只做一次循环，按照dict_type把信息（dict_code, dict_name）分类出来
		for(ComDictionaryDO obj : list) {
			String typeName = obj.getDictType();
			
			Map<String, String> valueMap = dictMap.get(typeName);
			if (valueMap == null) {
				valueMap = new LinkedHashMap<>();
				dictMap.put(typeName, valueMap);
			}
			
			valueMap.put(obj.getDictCode(), obj.getDictName());
		}
	}

	@Override
	public Integer getIdByTypeAndCode(String dictType, String dictCode) {
		ComDictionaryDO example = new ComDictionaryDO();
		example.setDictType(dictType);
		example.setDictCode(dictCode);
		
		List<ComDictionaryDO> list = comDictionaryDao.listByExample(1, 1, example, null);
		if (list == null || list.size() <= 0) {
			return null;
		} else {
			return list.get(0).getDictId();
		}
	}

}

