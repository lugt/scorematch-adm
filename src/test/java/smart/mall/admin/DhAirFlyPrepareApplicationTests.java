package smart.mall.admin;

import java.util.List;
import java.util.Random;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DhAirFlyPrepareApplicationTests {

	@Test
	public void testFpExamDefineDao() {
		/*FpExamDefineDO fp = new FpExamDefineDO();
		String examName = "飞行培训" + new Random().nextInt(10000000);
		fp.setExamName(examName);
		fp.setExamType("B");
		fp.setLanguage("cn");
		fp.setState(1);
		fp.setUserType("X");
		Integer obj = fpExamDefineDao.save(fp);
		// 成功为1
		Assert.assertEquals(new Integer(1), obj);
		// 自动生成了ID
		Assert.assertNotNull(fp.getId());
		fp.setUserType("C");
		obj = fpExamDefineDao.update(fp);
		// 成功更新
		Assert.assertEquals(new Integer(1), obj);

		FpExamDefineDO example = new FpExamDefineDO();
		example.setExamName(examName);
		obj = fpExamDefineDao.countByExample(example);
		// 成功查询到数据
		Assert.assertTrue(obj >= 1);
		List<FpExamDefineDO> list = fpExamDefineDao.listByExample(1, 10, example, null);
		Assert.assertTrue(list != null && list.size() == obj.intValue());

		FpExamDefineDO update = new FpExamDefineDO();
		update.setExamType("S");
		obj = fpExamDefineDao.updateByExample(update, example);
		// 成功更新
		Assert.assertTrue(obj >= 1);
		list = fpExamDefineDao.listByName(examName, 10);
		Assert.assertTrue(list != null && list.size() > 0);
		System.out.println(obj);*/
	}

}
