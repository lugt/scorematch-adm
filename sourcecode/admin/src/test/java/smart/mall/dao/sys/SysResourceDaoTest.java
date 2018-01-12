package smart.mall.dao.sys;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import smart.mall.dao.SysResourceDao;
import smart.mall.domain.SysResourceDO;


@RunWith(SpringRunner.class)
@SpringBootTest
public class SysResourceDaoTest {
	
	@Autowired
	private SysResourceDao sysResourceDao;
	
	@Test
	public void testSysResourceDao_save() {
		newSysResourceDo();
	}
	
	@Test
	public void testSysResourceDao_update() {
		SysResourceDO sr = new SysResourceDO();
		Integer newId = newSysResourceDo();
		if (newId != null) {
			sr.setId(newId);
			sr.setCode("code");
			
			Integer obj = sysResourceDao.update(sr);
			// 成功为1
			Assert.assertEquals(new Integer(1), obj);
		 } else {
			System.out.println("testSysResourceDao_update()时没执行成功，因为 newId = null");
		 }
	}
	
	private Integer newSysResourceDo(){
		SysResourceDO sr = new SysResourceDO();
		sr.setName("c");
		sr.setCode("2");
		sr.setResType("M");
		sr.setUrl("wwcwww");
		sr.setParentId(1);
		sr.setIsShow(11);
		sr.setMenuOrder(8);
		Integer obj = sysResourceDao.save(sr);
		Assert.assertEquals(new Integer(1), obj);
	
		return sr.getId();
	}
}

