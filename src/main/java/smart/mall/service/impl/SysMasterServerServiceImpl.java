package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysMasterServerDao;
import smart.mall.service.SysMasterServerService;
import smart.mall.domain.SysMasterServerDO;
import smart.mall.dao.SysMasterServerDao;

/**
 * 负载均衡-定时任务主服务器(sys_master_server) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysMasterServerServiceImpl extends BaseServiceImpl<SysMasterServerDO>
        implements SysMasterServerService {

    @Autowired 
    private SysMasterServerDao sysMasterServerDao;

}

