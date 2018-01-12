package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysRoleResourceDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysRoleResourceService;
import smart.mall.domain.SysRoleResourceDO;
import smart.mall.service.SysRoleResourceService;

/**
 * 角色资源权限(sys_role_resource) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysRoleResourceController extends BaseController<SysRoleResourceDO> {

    @Autowired
    private SysRoleResourceService sysRoleResourceService;

    @RequestMapping("/sysRoleResource/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysRoleResourceDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysRoleResource/listPage")
    @Override
    public String listPage(Model model, SysRoleResourceDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysRoleResource/savePage")
    @Override
    public String savePage(SysRoleResourceDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/sysRoleResource/updatePage")
    @Override
    public String updatePage(SysRoleResourceDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/sysRoleResource/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SysRoleResourceDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/sysRoleResource/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SysRoleResourceDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/sysRoleResource/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SysRoleResourceDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/sysRoleResource/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysRoleResourceDO key) {
        return super.getByKey(key);
    }

}

