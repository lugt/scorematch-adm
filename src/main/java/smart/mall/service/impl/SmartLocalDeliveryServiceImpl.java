package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SmartLocalDeliveryDao;
import smart.mall.service.SmartLocalDeliveryService;
import smart.mall.domain.SmartLocalDeliveryDO;

/**
 * 发货派送(smart_local_delivery) 实体类的数据服务类实现 
 * 
 * author: Frapo
 */ 
@Service
@Primary
public class SmartLocalDeliveryServiceImpl extends BaseServiceImpl<SmartLocalDeliveryDO>
        implements SmartLocalDeliveryService {

    @Autowired 
    private SmartLocalDeliveryDao smartLocalDeliveryDao;

}

