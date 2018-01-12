package smart.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * 实体类的读取器基类
 */
public interface BaseDao<T> {

	public int save(T t);

	public int delete(@Param("key") Object key);

	public int deleteByExample(@Param("example") T example);

	public int update(T t);

	public int updateByExample(@Param("update") T update, @Param("example") T example);

	public T getByKey(@Param("key") Object key);

	public int countByExample(@Param("example") T example);

	/**
	 * 根据 example 中的条件进行查询
	 * 
	 * @param page 第几页
	 * @param pageSize 每页记录数
	 * @param example 条件内容
	 * @param orderBy 排序串，需要用数据库中的字段定义，比如： "user_no desc" 
	 * @return
	 */
	public List<T> listByExample(@Param("page") Integer page, @Param("pageSize") Integer pageSize,
			@Param("example") T example, @Param("orderBy") String orderBy);

	public int deleteByKey(@Param("delete") T t);

}
