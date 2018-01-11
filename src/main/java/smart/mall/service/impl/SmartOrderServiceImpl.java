package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SmartOrderDao;
import smart.mall.service.SmartOrderService;
import smart.mall.domain.SmartOrderDO;

/**
 * 订单表(smart_order) 实体类的数据服务类实现 
 * 
 * author: Frapo
 */ 
@Service
@Primary
public class SmartOrderServiceImpl extends BaseServiceImpl<SmartOrderDO>
        implements SmartOrderService {

    @Autowired 
    private SmartOrderDao smartOrderDao;

}

