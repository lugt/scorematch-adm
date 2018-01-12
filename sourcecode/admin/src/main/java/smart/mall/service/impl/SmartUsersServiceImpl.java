package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SmartUsersDao;
import smart.mall.service.SmartUsersService;
import smart.mall.domain.SmartUsersDO;

/**
 * 用户基本信息(smart_users) 实体类的数据服务类实现 
 * 
 * author: Frapo
 */ 
@Service
@Primary
public class SmartUsersServiceImpl extends BaseServiceImpl<SmartUsersDO>
        implements SmartUsersService {

    @Autowired 
    private SmartUsersDao smartUsersDao;

}

