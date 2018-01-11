package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysPersonalDao;
import smart.mall.domain.SysPersonalDO;
import smart.mall.dao.SysPersonalDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysPersonalDaoTest {
	
	@Autowired
	private SysPersonalDao sysPersonalDao;
	
	@Test
	public void testSysPersonalDao_save(){
		
		
	}
	
	@Test
	public void testSysPersonalDao_update(){
		SysPersonalDO sr = new SysPersonalDO();
		String newUserNo = newSysPersonalDO();
		if (newUserNo != null) {
			sr.setUserNo(newUserNo);
			sr.setHeadImg("qq");
			
			Integer obj = sysPersonalDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} else {
			System.out.println("testSysPersonalDao_update()时没执行成功，因为 newId = null");
		}
	}

	private String newSysPersonalDO(){
		SysPersonalDO sr = new SysPersonalDO();
		sr.setUserNo("4455");
		sr.setHeadImg("qq");
		sr.setBirthday(null);
		sr.setPhoneBak("1363336544");
		sr.setEmail("122@21");
		sr.setSpecialty("wqw");
		sr.setWechat("4546");
		sr.setOpenWx(null);
		sr.setAddress("wqwqw");
		sr.setOpenAddr(null);
		sr.setCarId("2552");
		sr.setOpenCarId(null);
		sr.setParentAddr("sdsd");
		sr.setOpenParAddr(null);
		sr.setLifePhoto1("wq");
		sr.setLifePhoto2("fv");
		sr.setLifePhoto3("gh");
		sr.setCreatedOn(null);
		sr.setCreatedBy("wq");
		sr.setModifiedOn(null);
		sr.setModifiedBy("ff");
		try {
			Integer obj = sysPersonalDao.save(sr);
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
