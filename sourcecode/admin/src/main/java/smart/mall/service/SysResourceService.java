package smart.mall.service;

import java.util.List;
import java.util.Set;

import smart.mall.domain.SysResourceDO;
import smart.mall.dto.Tree;

/**
 * 资源(sys_resource) 实体类的数据服务类 
 * 
 * author: wutianbin
 */ 
public interface SysResourceService extends BaseService<SysResourceDO> {

	/**
	 * 根据用户获取系统菜单
	 * 
	 * @param userNo
	 * @return
	 */
	Tree<SysResourceDO> getSysMenuTree(String userNo);

	List<Tree<SysResourceDO>> listMenuTree(String userNo);

	Tree<SysResourceDO> getTree();

	Tree<SysResourceDO> getTree(Integer roleId);

	Set<String> listPerms(String userNo);

	List<SysResourceDO> listMenuByUser(String userNo);
	
	

}

