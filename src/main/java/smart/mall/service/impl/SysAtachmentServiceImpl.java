package smart.mall.service.impl;

import org.springframework.context.annotation.Primary;
import smart.mall.dto.RetResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysAtachmentDao;
import smart.mall.service.SysAtachmentService;
import smart.mall.domain.SysAtachmentDO;
import smart.mall.dao.SysAtachmentDao;

import java.util.List;

/**
 * 附件(sys_atachment) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysAtachmentServiceImpl extends BaseServiceImpl<SysAtachmentDO>
        implements SysAtachmentService {

    @Autowired 
    private SysAtachmentDao sysAtachmentDao;

}

