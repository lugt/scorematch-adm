package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SysVisitLogDO;

/**
 * 系统API调用日志表(sys_visit_log) 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysVisitLogDao extends BaseDao<SysVisitLogDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

