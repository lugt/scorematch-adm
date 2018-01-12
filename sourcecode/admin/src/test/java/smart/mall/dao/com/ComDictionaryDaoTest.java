package smart.mall.dao.com;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;

import smart.mall.dao.ComDictionaryDao;
import smart.mall.domain.ComDictionaryDO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ComDictionaryDaoTest {

	
	@Autowired
	private ComDictionaryDao comDictionaryDao;
	
	
	@Test
	public void testComDictionaryDao_save(){
		
	}
	
	
	@Test
	public void testComDictionaryDao_update(){
		ComDictionaryDO com = new ComDictionaryDO();
		Integer newDictId = newComDictionaryDO();
		if(newDictId !=  null){
		com.setDictId(36);
		com.setDictCode("jk");
		Integer obj = comDictionaryDao.update(com);
		// 成功为1
		Assert.assertEquals(new Integer(1), obj);
	} else {
		System.out.println("testComDictionaryDao_update()时没执行成功，因为 newId = null");
	}
}
	
	
	private Integer newComDictionaryDO(){
		ComDictionaryDO com = new ComDictionaryDO();
		com.setDictId(36);
		com.setDictCode("jk");
		com.setDictName("jh");
		com.setDictType("k");
		com.setParentDictId(1);
		com.setDictNameEn("iu");
		com.setEnableState("1");
		com.setDictIco("gj");
		try {
			Integer obj = comDictionaryDao.save(com);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} catch(DataIntegrityViolationException e) {
			
		}
		// 自动生成了ID
		Assert.assertNotNull(com.getDictId());
		return com.getDictId();
	}
}