package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SmartUserAddrsDao;
import smart.mall.service.SmartUserAddrsService;
import smart.mall.domain.SmartUserAddrsDO;

/**
 * 用户地址综合(smart_user_addrs) 实体类的数据服务类实现 
 * 
 * author: Frapo
 */ 
@Service
@Primary
public class SmartUserAddrsServiceImpl extends BaseServiceImpl<SmartUserAddrsDO>
        implements SmartUserAddrsService {

    @Autowired 
    private SmartUserAddrsDao smartUserAddrsDao;

}

