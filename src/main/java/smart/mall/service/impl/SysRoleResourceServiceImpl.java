package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysRoleResourceDao;
import smart.mall.service.SysRoleResourceService;
import smart.mall.domain.SysRoleResourceDO;

/**
 * 角色资源权限(sys_role_resource) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysRoleResourceServiceImpl extends BaseServiceImpl<SysRoleResourceDO>
        implements SysRoleResourceService {

    @Autowired 
    private SysRoleResourceDao sysRoleResourceDao;

}

