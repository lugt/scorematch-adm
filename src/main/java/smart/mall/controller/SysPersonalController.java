package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysPersonalDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysPersonalService;
import smart.mall.domain.SysPersonalDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysPersonalService;

/**
 * 个人信息(sys_personal) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysPersonalController extends BaseController<SysPersonalDO> {

    @Autowired
    private SysPersonalService sysPersonalService;

    @RequestMapping("/sysPersonal/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysPersonalDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysPersonal/listPage")
    @Override
    public String listPage(Model model, SysPersonalDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysPersonal/savePage")
    @Override
    public String savePage(SysPersonalDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/sysPersonal/updatePage")
    @Override
    public String updatePage(SysPersonalDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/sysPersonal/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SysPersonalDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/sysPersonal/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SysPersonalDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/sysPersonal/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SysPersonalDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/sysPersonal/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysPersonalDO key) {
        return super.getByKey(key);
    }

}

