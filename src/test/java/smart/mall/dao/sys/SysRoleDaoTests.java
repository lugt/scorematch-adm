package smart.mall.dao.sys;

import java.util.Random;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysRoleDao;
import smart.mall.domain.SysRoleDO;
import smart.mall.dao.SysRoleDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysRoleDaoTests {

	@Autowired
	private SysRoleDao sysRoleDao;


	@Test
	public void test_list() {
		System.out.println(
				sysRoleDao.listByExample(1, 10, new SysRoleDO(), "id desc"));
		System.out.println(
				sysRoleDao.listByExample(1, 10, new SysRoleDO(), "id asc"));
	}
	
	//@Test
	public void testSysRoleDao_save() {
		newSysRoleDO();
	}
	
	//@Test
	public void testSysRoleDao_update() {
		SysRoleDO sr = new SysRoleDO();
		Integer newId = newSysRoleDO();
		if (newId != null) {
			sr.setId(newId);
			sr.setRemark("remark");
			
			Integer obj = sysRoleDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} else {
			System.out.println("testSysRoleDao_update()时没执行成功，因为 newId = null");
		}
	}
	
	private Integer newSysRoleDO() {
		SysRoleDO sr = new SysRoleDO();
		int num = new Random().nextInt(10000000);
		String roleName = "角色" + num;
		String roleCode = "role" + num;
		sr.setName(roleName);
		sr.setRoleCode(roleCode);
		sr.setRemark("s");
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
}
