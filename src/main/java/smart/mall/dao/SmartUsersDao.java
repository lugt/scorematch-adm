package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SmartUsersDO;

/**
 * 用户基本信息(smart_users) 实体类的Dao 
 * 
 * author: Frapo
 */ 
@Mapper 
public interface SmartUsersDao extends BaseDao<SmartUsersDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

