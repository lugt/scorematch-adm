package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SysMasterServerDO;

/**
 * 负载均衡-定时任务主服务器(sys_master_server) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysMasterServerDao extends BaseDao<SysMasterServerDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

