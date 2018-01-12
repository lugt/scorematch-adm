package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysUserRoleDao;
import smart.mall.domain.SysUserRoleDO;
import smart.mall.dao.SysUserRoleDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysUserRoleDaoTest {

	@Autowired
	private SysUserRoleDao sysUserRoleDao;
	
	@Test
	public void testSysUserRoleDao_save(){
		
	}
	
	@Test
	public void testSysUserRoleDao_update(){
		SysUserRoleDO sr = new SysUserRoleDO();
		Integer newId = newSysUserRoleDO();
		if(newId != null){
			sr.setId(newId);
			sr.setUserNo("1123");
			Integer obj = sysUserRoleDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		 } else {
			System.out.println("testSysUserRoleDao_update()时没执行成功，因为 newId = null");
		 }
	}
	
	private Integer newSysUserRoleDO(){
		SysUserRoleDO sr = new SysUserRoleDO();
		sr.setUserNo("1123");
		sr.setRoleId(null);
		sr.setCreatedOn(null);
		sr.setCreatedBy("");
		sr.setModifiedOn(null);
		sr.setModifiedBy("");
		try {
			Integer obj = sysUserRoleDao.save(sr);
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
