package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SmartDeliveryAddrDO;

/**
 * 用户地址(smart_delivery_addr) 实体类的Dao 
 * 
 * author: Frapo
 */ 
@Mapper 
public interface SmartDeliveryAddrDao extends BaseDao<SmartDeliveryAddrDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

