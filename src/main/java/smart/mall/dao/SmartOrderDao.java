package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SmartOrderDO;

/**
 * 订单表(smart_order) 实体类的Dao 
 * 
 * author: Frapo
 */ 
@Mapper 
public interface SmartOrderDao extends BaseDao<SmartOrderDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

