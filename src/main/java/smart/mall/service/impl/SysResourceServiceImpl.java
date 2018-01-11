package smart.mall.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import smart.mall.dao.SysResourceDao;
import smart.mall.dao.SysRoleResourceDao;
import smart.mall.domain.SysResourceDO;
import smart.mall.dto.Tree;
import smart.mall.service.SysResourceService;
import smart.mall.utils.BuildTree;

/**
 * 资源(sys_resource) 实体类的数据服务类实现 
 * 
 * author: wutianbin
 */ 
@Service
@Primary
public class SysResourceServiceImpl extends BaseServiceImpl<SysResourceDO>
        implements SysResourceService {

    @Autowired 
    private SysResourceDao sysResourceDao;
    
    @Autowired 
    private SysRoleResourceDao sysRoleResourceDao;

    
    @Override
    public List<SysResourceDO> listMenuByUser(String userNo){
    	return this.sysResourceDao.listMenuByUser(userNo);
    }
    
	@Override
	public Tree<SysResourceDO> getSysMenuTree(String userNo) {
		List<Tree<SysResourceDO>> trees = loadTreeListByUser(userNo);
		// 默认顶级菜单为０，根据数据库实际情况调整
		Tree<SysResourceDO> tree = BuildTree.build(trees);
		return tree;
	}

	@Override
	public List<Tree<SysResourceDO>> listMenuTree(String userNo) {
		List<Tree<SysResourceDO>> trees = loadTreeListByUser(userNo);
		// 默认顶级菜单为０，根据数据库实际情况调整
		List<Tree<SysResourceDO>> list = BuildTree.buildList(trees, "0");
		return list;
	}

	@Override
	public Tree<SysResourceDO> getTree() {
		List<SysResourceDO> menuDOs = sysResourceDao.listAll();
		List<Tree<SysResourceDO>> trees = loadTreeList(menuDOs);
		// 默认顶级菜单为０，根据数据库实际情况调整
		Tree<SysResourceDO> t = BuildTree.build(trees);
		return t;
	}

	@Override
	public Tree<SysResourceDO> getTree(Integer roleId) {
		// 根据roleId查询权限
		List<SysResourceDO> menuDOs = sysResourceDao.listAll();
		
		List<Integer> menuIds = sysRoleResourceDao.listMenuIdByRoleId(roleId);
		List<Integer> temp = menuIds;
		for (SysResourceDO menu : menuDOs) {
			if (temp.contains(menu.getParentId())) {
				menuIds.remove(menu.getParentId());
			}
		}
		
		List<Tree<SysResourceDO>> trees = new ArrayList<Tree<SysResourceDO>>();
		for (SysResourceDO sysMenuDO : menuDOs) {
			Tree<SysResourceDO> tree = new Tree<SysResourceDO>();
			tree.setId(sysMenuDO.getId().toString());
			tree.setParentId(sysMenuDO.getParentId().toString());
			tree.setText(sysMenuDO.getName());
			Map<String, Object> state = new HashMap<>(16);
			Integer menuId = sysMenuDO.getId();
			if (menuIds.contains(menuId)) {
				state.put("selected", true);
			} else {
				state.put("selected", false);
			}
			tree.setState(state);
			trees.add(tree);
		}
		// 默认顶级菜单为０，根据数据库实际情况调整
		Tree<SysResourceDO> t = BuildTree.build(trees);
		return t;
	}

	private List<Tree<SysResourceDO>> loadTreeListByUser(String userNo) {
		List<SysResourceDO> menuDOs = sysResourceDao.listMenuByUser(userNo);
		return loadTreeList(menuDOs);
	}

	private List<Tree<SysResourceDO>> loadTreeList(List<SysResourceDO> menuDOs) {
		List<Tree<SysResourceDO>> trees = new ArrayList<Tree<SysResourceDO>>();
		for (SysResourceDO sysMenuDO : menuDOs) {
			Tree<SysResourceDO> tree = new Tree<SysResourceDO>();
			tree.setId(sysMenuDO.getId().toString());
			tree.setParentId(sysMenuDO.getParentId().toString());
			tree.setText(sysMenuDO.getName());
			
			Map<String, Object> attributes = new HashMap<>(16);
			attributes.put("url", sysMenuDO.getUrl());
			tree.setAttributes(attributes);
			trees.add(tree);
		}
		return trees;
	}

	@Override
	public Set<String> listPerms(String userNo) {
		// TODO 怎么玩权限？
		return null;
	}

}

