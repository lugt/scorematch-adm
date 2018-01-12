package smart.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysUserRoleDao;
import smart.mall.service.SysUserRoleService;
import smart.mall.domain.SysUserRoleDO;

/**
 * 用户角色(sys_user_role) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysUserRoleServiceImpl extends BaseServiceImpl<SysUserRoleDO>
        implements SysUserRoleService {

    @Autowired 
    private SysUserRoleDao sysUserRoleDao;

}

