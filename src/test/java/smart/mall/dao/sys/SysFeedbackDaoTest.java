package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysFeedbackDao;
import smart.mall.domain.SysFeedbackDO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysFeedbackDaoTest {

	
	@Autowired
	private SysFeedbackDao sysFeedbackDao;
	
	
	@Test
	public void testSysFeedbackDao_save(){
		newSysFeedbackDO();
	}
	
	
	@Test
	public void testSysFeedbackDao_update(){
		SysFeedbackDO sys = new SysFeedbackDO();
		Integer newId = newSysFeedbackDO();
		if(newId != null){
			sys.setId(newId);
			sys.setContent("332");
			Integer obj = sysFeedbackDao.update(sys);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} else {
			System.out.println("testSysFeedbackDao_update()时没执行成功，因为 newId = null");
		}
	}
	
	
	private Integer newSysFeedbackDO(){
		SysFeedbackDO sys = new SysFeedbackDO();
		sys.setContent("332");
		sys.setCreatedOn(null);
		try {
			Integer obj = sysFeedbackDao.save(sys);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} catch(DataIntegrityViolationException e) {
		
		}
			// 自动生成了ID
		Assert.assertNotNull(sys.getId());
		return sys.getId();
	}
}