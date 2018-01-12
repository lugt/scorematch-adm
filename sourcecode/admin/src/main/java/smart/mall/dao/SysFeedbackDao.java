package smart.mall.dao;

import org.apache.ibatis.annotations.Mapper;

import smart.mall.domain.SysFeedbackDO;

/**
 * sys_feedback 实体类的Dao 
 * 
 * author: wutianbin
 */ 
@Mapper 
public interface SysFeedbackDao extends BaseDao<SysFeedbackDO> {

    // 非常规sql写这里--- xml 自动生成,不再手动在xml中写sql !! 

}

