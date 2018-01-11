package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysVisitLogDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysVisitLogDTO;
import smart.mall.service.SysVisitLogService;
import smart.mall.domain.SysVisitLogDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysVisitLogDTO;
import smart.mall.service.SysVisitLogService;

/**
 * 系统API调用日志表(sys_visit_log) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysVisitLogController extends BaseController<SysVisitLogDO> {

    @Autowired
    private SysVisitLogService sysVisitLogService;

    @RequestMapping("/sysVisitLog/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysVisitLogDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysVisitLog/listPage")
    public String listPage(Model model, SysVisitLogDTO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysVisitLog/updatePage")
    public String updatePage(SysVisitLogDTO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/sysVisitLog/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysVisitLogDO key) {
        return super.getByKey(key);
    }

}

