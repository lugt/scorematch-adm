package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysUserDao;
import smart.mall.domain.SysUserDO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysUserDaoTest {
	
	@Autowired
	private SysUserDao sysUserDao;
	
	@Test
	public void testSysUserDao_save(){
		newSysUserDao();
	}
	
	@Test
	public void testSysUserDao_update(){
		SysUserDO sr = new SysUserDO();
		String newUserNo = newSysUserDao();
		if (newUserNo != null) {
			sr.setUserNo(newUserNo);
			sr.setUserName("we");
			Integer obj = sysUserDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		 } else {
			System.out.println("testSysUserDao_update()时没执行成功，因为 newId = null");
		 }
	}

	private String newSysUserDao(){
		SysUserDO sr = new SysUserDO();
		sr.setUserLoginName("ss");
		sr.setPassword("1235541");
		sr.setUserName("ss");
		sr.setUserNameEn("ss");
		sr.setMobilePhone("13564848594");
		sr.setPCode("w");
		sr.setDeptId(null);
		sr.setDeptName("ss");
		sr.setStatus(1);
		sr.setCreatedOn(null);
		sr.setCreatedBy("w");
		sr.setModifiedOn(null);
		sr.setModifiedBy("s");
		try {
			Integer obj = sysUserDao.save(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} catch(DataIntegrityViolationException e) {
			// ??? 怎么办？
		}
		// 自动生成了ID
		Assert.assertNotNull(sr.getUserNo());
		return sr.getUserNo();
	}
}
