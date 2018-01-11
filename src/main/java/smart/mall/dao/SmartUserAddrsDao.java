package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SmartUserAddrsDO;

/**
 * 用户地址综合(smart_user_addrs) 实体类的Dao 
 * 
 * author: Frapo
 */ 
@Mapper 
public interface SmartUserAddrsDao extends BaseDao<SmartUserAddrsDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

