package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysAtachmentDao;
import smart.mall.domain.SysAtachmentDO;
import smart.mall.dao.SysAtachmentDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysAtachmentDaoTest {

	@Autowired
	private SysAtachmentDao sysAtachmentDao;
	
	@Test
	public void tsetSysAtachmentDao_save(){
		newSysAtachmentDO();
	}
	
	@Test
	public void tsetSysAtachmentDao_update(){
		SysAtachmentDO sr = new SysAtachmentDO();
		Integer newId = newSysAtachmentDO();
		if (newId != null) {
			sr.setId(newId);
			sr.setFileName("ss");
			
			Integer obj = sysAtachmentDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		} else {
			System.out.println("tsetSysAtachmentDao_update()时没执行成功，因为 newId = null");
		}
	}
	
	private Integer newSysAtachmentDO(){
		SysAtachmentDO sr = new SysAtachmentDO();
		sr.setParentTableName("ss");
		sr.setParentRowId("12");
		sr.setFileName("ss");
		sr.setFileExtName("s");
		sr.setFilePath("s");
		sr.setCreatedByCode("s");
		sr.setCreatedByName("s");
		sr.setCreatedOn(null);
		sr.setCreatedBy("s");
		sr.setModifiedOn(null);
		sr.setModifiedBy("d");
		try {
			Integer obj = sysAtachmentDao.save(sr);
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
