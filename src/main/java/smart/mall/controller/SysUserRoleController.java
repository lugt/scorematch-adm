package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysUserRoleDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysUserRoleService;
import smart.mall.domain.SysUserRoleDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysUserRoleService;

/**
 * 用户角色(sys_user_role) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysUserRoleController extends BaseController<SysUserRoleDO> {

    @Autowired
    private SysUserRoleService sysUserRoleService;

    @RequestMapping("/sysUserRole/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysUserRoleDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysUserRole/listPage")
    @Override
    public String listPage(Model model, SysUserRoleDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysUserRole/savePage")
    @Override
    public String savePage(SysUserRoleDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/sysUserRole/updatePage")
    @Override
    public String updatePage(SysUserRoleDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/sysUserRole/saveBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> saveBatch(@RequestBody List<SysUserRoleDO> list) {
        return super.saveBatch(list);
    }

    @RequestMapping("/sysUserRole/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SysUserRoleDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/sysUserRole/updateBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> updateBatch(@RequestBody List<SysUserRoleDO> list) {
        return super.updateBatch(list);
    }

    @RequestMapping("/sysUserRole/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysUserRoleDO key) {
        return super.getByKey(key);
    }

}

