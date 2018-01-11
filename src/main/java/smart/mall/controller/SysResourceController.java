package smart.mall.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import smart.mall.domain.SysResourceDO;
import smart.mall.dto.RetResult;
import smart.mall.dto.Tree;
import smart.mall.service.SysResourceService;
import smart.mall.domain.SysResourceDO;
import smart.mall.dto.RetResult;
import smart.mall.service.SysResourceService;

/**
 * 资源(sys_resource) 的后台维护控制类 
 * 
 * author: wutianbin
 */ 
@Controller
public class SysResourceController extends BaseController<SysResourceDO> {

	private static final Logger logger = LoggerFactory.getLogger(SysResourceController.class);
	
    @Autowired
    private SysResourceService sysResourceService;

    @RequestMapping("/sysResource/list")
    @ResponseBody
    @Override
    @SuppressWarnings("rawtypes")
    public RetResult list(SysResourceDO example) {
        return super.list(example);
    }

    @RequestMapping("/sysResource/listPage")
    @Override
    public String listPage(Model model, SysResourceDO example) {
        return super.listPage(model, example);
    }

    @RequestMapping("/sysResource/tree")
	@ResponseBody
	public Tree<SysResourceDO> tree() {
		logger.debug("????????????????????????tree()");
		// Tree<SysResourceDO> menus = new Tree<SysResourceDO>();
		Tree<SysResourceDO> menus = sysResourceService.getTree();
		return menus;
	}

    @RequestMapping("/sysResource/tree/{roleId}")
	@ResponseBody
	public Tree<SysResourceDO> tree(@PathVariable("roleId") Integer roleId) {
		logger.debug("????????????????????????tree()，roleId=" + roleId);
		//Tree<SysResourceDO> menus = new Tree<SysResourceDO>();
		Tree<SysResourceDO> menus = sysResourceService.getTree(roleId);
		return menus;
	}

}
