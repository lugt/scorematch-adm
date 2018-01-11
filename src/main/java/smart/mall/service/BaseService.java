package smart.mall.service;

import java.util.List;

import smart.mall.dto.Page;

/**
 * 
 * 服务类,基本方法
 * 
 * @param <T>
 */
public interface BaseService<T> {

	public int save(T t);

	public int saveBatch(List<T> list);

	int delete(Object key);

	public int deleteByKeyBatch(List<T> list);

	public int deleteByExample(T example);

	public int update(T t);

	public int updateByExample(T update, T example);

	public int updateBatch(List<T> list);

	public int countByExample(T example);

	public List<T> listByExample(Integer page, Integer pageSize, T example);

	public List<T> listByExample(Integer page, Integer pageSize, T example, String orderString);

	Page<T> listPage(Integer page, Integer pageSize, T example);

	Page<T> listPage(Integer page, Integer pageSize, T example, String orderString);

	T getByKey(T example);

	T saveOne(List<T> list);
}
