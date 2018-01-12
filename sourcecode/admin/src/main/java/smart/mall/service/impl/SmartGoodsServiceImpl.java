package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SmartGoodsDao;
import smart.mall.service.SmartGoodsService;
import smart.mall.domain.SmartGoodsDO;

/**
 * 商品信息表(smart_goods) 实体类的数据服务类实现 
 * 
 * author: Frapo
 */ 
@Service
@Primary
public class SmartGoodsServiceImpl extends BaseServiceImpl<SmartGoodsDO>
        implements SmartGoodsService {

    @Autowired 
    private SmartGoodsDao smartGoodsDao;

}

