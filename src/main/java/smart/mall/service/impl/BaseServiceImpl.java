package smart.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.Transactional;

import smart.mall.dao.BaseDao;
import smart.mall.dto.Page;
import smart.mall.service.BaseService;
import smart.mall.utils.BeanUtil;

/**
 * 
 * 服务类,基本方法
 * 
 * @param <T>
 */
@Primary
public class BaseServiceImpl<T> implements BaseService<T> {

	@Autowired
	private BaseDao<T> baseDao;

	@Override
	public T getByKey(T example) {
		List<T> list = this.baseDao.listByExample(1, 1, example, null);
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public int save(T t) {
		return baseDao.save(t);
	}

	@Override
	public int update(T t) {
		return baseDao.update(t);
	}

	@Override
	public int delete(Object key) {
		return baseDao.delete(key);
	}

	@Override
	public int countByExample(T example) {
		return baseDao.countByExample(example);
	}

	@Override
	public List<T> listByExample(Integer page, Integer pageSize, T example) {
		return baseDao.listByExample(page, pageSize, example, null);
	}

	@Override
	public List<T> listByExample(Integer page, Integer pageSize, T example, String orderString) {
		return baseDao.listByExample(page, pageSize, example, orderString);
	}

	@Override
	public Page<T> listPage(Integer page, Integer pageSize, T example) {
		Page<T> ret = new Page<T>(page, pageSize);
		ret.setList(this.listByExample(page, pageSize, example));
		ret.setTotalResult(this.countByExample(example));
		return ret;
	}

	@Override
	public Page<T> listPage(Integer page, Integer pageSize, T example, String orderString) {
		Page<T> ret = new Page<T>(page, pageSize);
		ret.setList(this.listByExample(page, pageSize, example, orderString));
		ret.setTotalResult(this.countByExample(example));
		return ret;
	}

	@Override
	public int updateByExample(T update, T example) {
		if (BeanUtil.checkFieldValueNull(example)) {
			// 如果example的所有属性都是null，则直接返回0，避免更新所有的数据
			return 0;
		}

		return baseDao.updateByExample(update, example);
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int updateBatch(List<T> list) {
		int ret = 0;
		for (T t : list) {
			ret += this.baseDao.update(t);
		}
		return ret;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int saveBatch(List<T> list) {
		int ret = 0;
		for (T t : list) {
			ret += this.baseDao.save(t);
		}
		return ret;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public T saveOne(List<T> list) {
		int ret = 0;
		T t = list.get(0);
		this.baseDao.save(t);
		return t;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public int deleteByKeyBatch(List<T> list) {
		int ret = 0;
		for (T t : list) {
			ret += this.baseDao.deleteByKey(t);
		}
		return ret;
	}

	@Override
	public int deleteByExample(T example) {
		if (BeanUtil.checkFieldValueNull(example)) {
			// 如果example的所有属性都是null，则直接返回0，避免删除所有的数据
			return 0;
		}
		
		return baseDao.deleteByExample(example);
	}

}
