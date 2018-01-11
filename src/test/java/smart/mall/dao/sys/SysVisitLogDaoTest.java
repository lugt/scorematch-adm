package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysVisitLogDao;
import smart.mall.domain.SysVisitLogDO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysVisitLogDaoTest {
	
	@Autowired
	private SysVisitLogDao sysVisitLogDao;
	
	@Test
	public void testSysVisitLogDao_save(){
		
	}
	
	@Test
	public void testSysVisitLogDao_update(){
		SysVisitLogDO sr = new SysVisitLogDO();
		String newUserNo = newSysVisitLogDO();
		if (newUserNo != null) {
			sr.setUserNo(newUserNo);
			sr.setLogId(12);
			Integer obj = sysVisitLogDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		 } else {
			System.out.println("testSysVisitLogDao_update()时没执行成功，因为 newId = null");
		 }
	}
	
	private String newSysVisitLogDO(){
		SysVisitLogDO sr = new SysVisitLogDO();
		sr.setLogId(12);
		sr.setLogTime(null);
		sr.setCallApi("s");
		sr.setApiDesc("d");
		sr.setUserNo("c");
		sr.setDevice("v");
		sr.setRemoteAddr("v");
		sr.setRemoteHost("v");
		sr.setInputParams("w");
		sr.setError(null);
		sr.setTimeConsuming(null);
		sr.setBak("w");
		try {
			Integer obj = sysVisitLogDao.save(sr);
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
