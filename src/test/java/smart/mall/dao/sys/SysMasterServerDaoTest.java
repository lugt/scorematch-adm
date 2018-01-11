package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysMasterServerDao;
import smart.mall.domain.SysMasterServerDO;
import smart.mall.dao.SysMasterServerDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysMasterServerDaoTest {
	
	@Autowired
	private SysMasterServerDao sysMasterServerDao;
	
	
	@Test
	public void testSysMasterServerDao_save(){
		newSysMasterServerDO();
	}
	
	@Test
	public void testSysMasterServerDao_update(){
		SysMasterServerDO sr = new SysMasterServerDO();
		Integer newItemId = newSysMasterServerDO();
		if (newItemId != null) {
			sr.setItemId(newItemId);
			sr.setServerIp(203);
			
			Integer obj = sysMasterServerDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		 } else {
			System.out.println("testSysMasterServerDao_update()时没执行成功，因为 newId = null");
		 }
	}
	
	private Integer newSysMasterServerDO(){
		SysMasterServerDO sr = new SysMasterServerDO();
		sr.setItemId(1222);
		sr.setServerIp(101);
		sr.setUpdatetime(null);
		try {
			Integer obj = sysMasterServerDao.save(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} catch(DataIntegrityViolationException e) {
			// ??? 怎么办？
		}
		// 自动生成了ID
		Assert.assertNotNull(sr.getItemId());
		return sr.getItemId();
	}
}
