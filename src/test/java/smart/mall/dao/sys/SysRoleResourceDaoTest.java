package smart.mall.dao.sys;

import java.util.Random;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysResourceDao;
import smart.mall.dao.SysRoleDao;
import smart.mall.dao.SysRoleResourceDao;
import smart.mall.domain.SysResourceDO;
import smart.mall.domain.SysRoleDO;
import smart.mall.domain.SysRoleResourceDO;
import smart.mall.dao.SysRoleDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysRoleResourceDaoTest {
	
	@Autowired
	private SysRoleResourceDao sysRoleResourceDao;
	
	@Autowired
	private SysRoleDao sysRoleDao;
	
	@Autowired
	private SysResourceDao sysResourceDao;
	
	@Test
	public void testSysRoleResourceDao_save() {
		// 1、往Role里面添加新的记录，并记下记录的roleId
		Integer roleId = newSysRole();

		// 2、往Resource里面添加新的记录，并记下记录的resourceId
		Integer resourceId = newSysResource();
		
		// 3、把roleId和resourceId添加到RoleResource中
		SysRoleResourceDO sr = new SysRoleResourceDO();
		
		sr.setRoleId(roleId);
		sr.setResourceId(resourceId);
		
		Integer obj = sysRoleResourceDao.save(sr);
		
		Assert.assertEquals(new Integer(1), obj);
	}
	
	private Integer newSysResource() {
		return 1;
	}

	private Integer newSysRole() {
		SysRoleDO sr = new SysRoleDO();
		int num = new Random().nextInt(10000000);
		String roleName = "角色" + num;
		String roleCode = "role" + num;
		sr.setName(roleName);
		sr.setRoleCode(roleCode);
		sr.setRemark("");
		try {
			Integer obj = sysRoleDao.save(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} catch(DataIntegrityViolationException e) {
			// ??? 怎么办？
		}
		// 自动生成了ID
		Assert.assertNotNull(sr.getId());
		return sr.getId();
	}
	
	public Integer testSysResourceDao_save() {
		SysResourceDO sr = new SysResourceDO();
		sr.setName("1");
		sr.setCode("");
		sr.setResType("M");
		sr.setUrl("wwwww"); 
		sr.setParentId(3);
		sr.setIsShow(1);
		sr.setMenuOrder(8);
		Integer obj = sysResourceDao.save(sr);
		
		Assert.assertEquals(new Integer(1), obj);
		
		return sr.getId();
	}

}
