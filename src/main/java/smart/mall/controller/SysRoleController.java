package smart.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysRoleDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysRoleDTO;
import smart.mall.service.SysRoleService;
import smart.mall.domain.SysRoleDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysRoleDTO;
import smart.mall.service.SysRoleService;

/**
 * 角色(sys_role) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysRoleController extends BaseController<SysRoleDO> {

    @Autowired
    private SysRoleService sysRoleService;

    @RequestMapping("/sysRole/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysRoleDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysRole/listPage")
    @Override
    public String listPage(Model model, SysRoleDO example) {
    	logger.debug("roseController.listPage(" + example.toString());
        return super.listPage(model, example);
    }

    @RequestMapping("/sysRole/savePage")
    @Override
    public String savePage(SysRoleDO t, Model model) {
        return super.savePage(t, model);
    }

    @RequestMapping("/sysRole/updatePage")
    @Override
    public String updatePage(SysRoleDO t, Model model) {
        return super.updatePage(t, model);
    }

    @RequestMapping("/sysRole/saveBatch")
    @ResponseBody
    public RetResult<Integer> saveBatchExt(@RequestBody List<SysRoleDTO> list) {
    	// 进行角色重复的检测
    	for(SysRoleDTO dto : list) {
    		String code = dto.getRoleCode();
    		String name = dto.getName();
    		if (code == null || code.trim().isEmpty()) {
    			return RetResult.errorRet("角色编号不能是空值！");
    		} else if (name == null || name.trim().isEmpty()) {
    			return RetResult.errorRet("角色名称不能是空值！");
    		} else if (sysRoleService.findByCode(code, null) != null) {
    			return RetResult.errorRet("角色编号已经被使用，请换一个！");
    		} else if (sysRoleService.findByName(name, null) != null) {
    			return RetResult.errorRet("角色名称已经被使用，请换一个！");
    		}
    	}
        // 扩展了批量保存的处理，加入了对菜单权限的处理
    	return new RetResult<>(sysRoleService.saveBatchExt(list));
    }

    @RequestMapping("/sysRole/updateBatch")
    @ResponseBody
    public RetResult<Integer> updateBatchExt(@RequestBody List<SysRoleDTO> list) {
    	// 进行角色重复的检测
    	for(SysRoleDTO dto : list) {
    		Integer id = dto.getId();
    		String code = dto.getRoleCode();
    		String name = dto.getName();
    		if (code == null || code.trim().isEmpty()) {
    			return RetResult.errorRet("角色编号不能是空值！");
    		} else if (name == null || name.trim().isEmpty()) {
    			return RetResult.errorRet("角色名称不能是空值！");
    		} else if (sysRoleService.findByCode(code, id) != null) {
    			return RetResult.errorRet("角色编号已经被使用，请换一个！");
    		} else if (sysRoleService.findByName(name, id) != null) {
    			return RetResult.errorRet("角色名称已经被使用，请换一个！");
    		}
    	}

        return new RetResult<>(sysRoleService.updateBatchExt(list));
    }

    @RequestMapping("/sysRole/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SysRoleDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/sysRole/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysRoleDO key) {
        return super.getByKey(key);
    }

}

