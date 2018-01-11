package smart.mall.dto;

import java.io.Serializable;
import java.util.List;

/**
 * 分页类
 */
public class Page<T> implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final int DEFAULT_MAX_PAGE_SIZE = 1000;
	public static final int DEFAULT_PAGE = 1;
	public static final int DEFAULT_PAGE_SIZE = 15;

	private Integer page = DEFAULT_PAGE;
	private Integer pageSize = DEFAULT_PAGE_SIZE;
	private Integer totalPage = 1;
	private Integer totalResult = 0;
	private List<T> list;

	public Page() {
	}

	public Page(Integer page) {
		this.setPage(page);
	}

	public Page(Integer page, Integer pageSize) {
		this.setPage(page);
		this.setPageSize(pageSize);
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		if (pageSize != null && pageSize > 0) {
			this.pageSize = pageSize;
			if (pageSize > DEFAULT_MAX_PAGE_SIZE) {
				this.pageSize = DEFAULT_MAX_PAGE_SIZE;
			}
		}
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		if (page != null && page > 0) {
			this.page = page;
		}
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getTotalResult() {
		return totalResult;
	}

	public void setTotalResult(Integer totalResult) {
		this.totalResult = totalResult;
		this.totalPage = totalResult % pageSize == 0 ? totalResult / pageSize : (totalResult / pageSize + 1);
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

}
