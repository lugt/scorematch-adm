package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.ComDictionaryMappingDao;
import smart.mall.service.ComDictionaryMappingService;
import smart.mall.domain.ComDictionaryMappingDO;
import smart.mall.dao.ComDictionaryMappingDao;
import smart.mall.domain.ComDictionaryMappingDO;
import smart.mall.service.ComDictionaryMappingService;

/**
 * 第三方数据字典com_dictionary与业务系统字典映射(com_dictionary_mapping) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class ComDictionaryMappingServiceImpl extends BaseServiceImpl<ComDictionaryMappingDO>
        implements ComDictionaryMappingService {

    @Autowired 
    private ComDictionaryMappingDao comDictionaryMappingDao;

}

