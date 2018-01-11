package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SmartDeliveryAddrDao;
import smart.mall.service.SmartDeliveryAddrService;
import smart.mall.domain.SmartDeliveryAddrDO;

/**
 * 用户地址(smart_delivery_addr) 实体类的数据服务类实现 
 * 
 * author: Frapo
 */ 
@Service
@Primary
public class SmartDeliveryAddrServiceImpl extends BaseServiceImpl<SmartDeliveryAddrDO>
        implements SmartDeliveryAddrService {

    @Autowired 
    private SmartDeliveryAddrDao smartDeliveryAddrDao;

}

