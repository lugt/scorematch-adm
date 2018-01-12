package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SmartGoodsDO;

/**
 * 商品信息表(smart_goods) 实体类的Dao 
 * 
 * author: Frapo
 */ 
@Mapper 
public interface SmartGoodsDao extends BaseDao<SmartGoodsDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

