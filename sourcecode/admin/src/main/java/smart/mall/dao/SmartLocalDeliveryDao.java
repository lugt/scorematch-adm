package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SmartLocalDeliveryDO;

/**
 * 发货派送(smart_local_delivery) 实体类的Dao 
 * 
 * author: Frapo
 */ 
@Mapper 
public interface SmartLocalDeliveryDao extends BaseDao<SmartLocalDeliveryDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

