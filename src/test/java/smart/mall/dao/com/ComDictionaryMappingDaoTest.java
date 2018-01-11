package smart.mall.dao.com;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.ComDictionaryMappingDao;
import smart.mall.domain.ComDictionaryMappingDO;
import smart.mall.dao.ComDictionaryMappingDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ComDictionaryMappingDaoTest {

	
	@Autowired
	private ComDictionaryMappingDao comDictionaryMappingDao;
	
	
	@Test
	public void testComDictionaryMappingDao_save(){
		newComDictionaryMappingDO();
	}
	
	
	@Test
	public void testComDictionaryMappingDao_update(){
		ComDictionaryMappingDO com = new ComDictionaryMappingDO();
		Integer newId = newComDictionaryMappingDO();
		if(newId != null){
			com.setId(newId);
			com.setDictCodeCloud("5");
			Integer obj = comDictionaryMappingDao.update(com);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} else {
			System.out.println("testComDictionaryMappingDao_update()时没执行成功，因为 newId = null");
		}
	}
	
	
	private Integer newComDictionaryMappingDO(){
		ComDictionaryMappingDO com = new ComDictionaryMappingDO();
		com.setDictCodeCloud("5");
		com.setDictCodeThirdSys("15");
		com.setDictCodeThirdType("ftrg");
		try {
			Integer obj = comDictionaryMappingDao.save(com);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} catch(DataIntegrityViolationException e) {
		
		}
		// 自动生成了ID
		Assert.assertNotNull(com.getId());
		return com.getId();
	}
}
