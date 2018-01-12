package smart.mall.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.common.SHA3Digest;
import smart.mall.domain.SysUserDO;
import smart.mall.dto.Ret;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysRoleDTO;
import smart.mall.dto.SysUserDTO;
import smart.mall.service.SysRoleService;
import smart.mall.service.SysUserService;
import smart.mall.domain.SysUserDO;
import smart.mall.dto.Ret;
import smart.mall.dto.RetResult;
import smart.mall.dto.SysRoleDTO;
import smart.mall.dto.SysUserDTO;
import smart.mall.service.SysRoleService;
import smart.mall.service.SysUserService;

/**
 * 用户表(sys_user) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysUserController extends BaseController<SysUserDO> {

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private SysRoleService sysRoleService;

    @RequestMapping("/sysUser/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysUserDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysUser/listPage")
    @Override
    public String listPage(Model model, SysUserDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysUser/exList")
    public String exList(Model model, SysUserDO example) {
        super.listPage(model, example);
        return "/sysUser/exlist";
    }

    @RequestMapping("/sysUser/savePage")
    public String savePage(SysUserDTO t, Model model) {
    	// 获取Roles,返回给页面
    	model.addAttribute("roles", sysRoleService.listAll());
    	return super.savePage(t, model);
    }

    @RequestMapping("/sysUser/updatePage")
    public String updatePage(SysUserDTO t, Model model) {
		List<SysRoleDTO> roles = sysRoleService.listAll(t.getUserNo());
		model.addAttribute("roles", roles);

		@SuppressWarnings("rawtypes")
		RetResult ret = new RetResult<>(sysUserService.getByKeyEx(t));
		
		if (ret.getRet().equals(Ret.OK.getCode())) {
			model.addAttribute("ret", ret);
			logger.debug(model.toString());
			return this.baseName + "/update";
		}
		return null;
    }

    @RequestMapping("/sysUser/resetPwdPage")
    public String resetPwdPage(SysUserDO t, Model model) {
    	@SuppressWarnings("rawtypes")
		RetResult ret = this.getByKey(t);
		if (ret.getRet().equals(Ret.OK.getCode())) {
			model.addAttribute("ret", ret);
			return this.baseName + "/resetPwd";
		}
		return null;
    }

    @RequestMapping("/sysUser/resetPwd")
    @ResponseBody
    public RetResult<Integer> resetPwd(@RequestBody SysUserDO user) {
    	return new RetResult<>(sysUserService.resetPassword(user));
    }

    @RequestMapping("/sysUser/saveBatch")
    @ResponseBody
    public RetResult<Integer> saveBatchExt(@RequestBody List<SysUserDTO> list) {
    	for(SysUserDTO dto : list) {
    		String userNo = dto.getUserNo();
    		String loginName = dto.getUserLoginName();
    		if (userNo == null || userNo.trim().isEmpty()) {
    			return RetResult.errorRet("用户工号不能是空值！");
    		} else if (sysUserService.findByNo(userNo) != null) {
    			return RetResult.errorRet("用户工号已经被使用，请换一个！");
    		} else if (loginName != null && !loginName.trim().isEmpty() &&
    				sysUserService.findByLoginName(loginName, null) != null) {
    			return RetResult.errorRet("登录帐号已经被使用，请换一个！");
    		}
    	}

    	fillDept(list);
        return new RetResult<>(sysUserService.saveBatchExt(list));
    }

    @RequestMapping("/sysUser/updateBatch")
    @ResponseBody
    public RetResult<Integer> updateBatchExt(@RequestBody List<SysUserDTO> list) {
    	for(SysUserDTO dto : list) {
    		String userNo = dto.getUserNo();
    		String loginName = dto.getUserLoginName();
    		if (loginName != null && !loginName.trim().isEmpty() 
    				&& sysUserService.findByLoginName(loginName, userNo) != null) {
    			return RetResult.errorRet("登录帐号已经被使用，请换一个！");
    		}
    	}
    	fillDept(list);
        return new RetResult<>(sysUserService.updateBatchExt(list));
    }

    private boolean fillDept(List<SysUserDTO> list) {
		for (SysUserDTO user : list) {
			String deptName = user.getDeptName();
			if (StringUtils.isEmpty(deptName)) {
				return false;
			}

			//user.setDeptId(dept.getDeptId());
		}
		
		return true;

		
	}

	@RequestMapping("/sysUser/deleteBatch")
    @ResponseBody
    @Override
    public RetResult<Integer> deleteBatch(@RequestBody List<SysUserDO> list) {
        return super.deleteBatch(list);
    }

    @RequestMapping("/sysUser/getByKey")
    @ResponseBody
    @SuppressWarnings("rawtypes")
    public RetResult getByKey(SysUserDO key) {
        return super.getByKey(key);
    }

}

