package smart.mall.controller;

import java.util.Date;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import smart.mall.common.MyCustomDateEditor;
import smart.mall.common.UtilContext;
import smart.mall.dto.Page;
import smart.mall.common.MyCustomDateEditor;
import smart.mall.common.UtilContext;
import smart.mall.dto.Page;

/**
 * 控制类基类
 */
public abstract class AbstractController {

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new MyCustomDateEditor());
	}

	protected Logger logger = LoggerFactory.getLogger(AbstractController.class);

	public AbstractController() {
		logger = LoggerFactory.getLogger(getClass());
	}

	protected Integer getPage() {
		String page = UtilContext.getCurrentRequest().getParameter("page");
		if (!StringUtils.isEmpty(page) && page.matches("\\d+")) {
			return Integer.parseInt(page);
		}
		return Page.DEFAULT_PAGE;

	}

	protected Integer getPageSize() {
		String pageSize = UtilContext.getCurrentRequest().getParameter("pageSize");
		if (!StringUtils.isEmpty(pageSize) && pageSize.matches("\\d+")) {
			return Integer.parseInt(pageSize);
		}
		return Page.DEFAULT_PAGE_SIZE;

	}

	protected void printRequestParameters(HttpServletRequest request) {
		Enumeration<?> names = request.getParameterNames();
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			logger.debug("requestParameters:" + name + "=" + request.getParameter(name));
		}
	}

}
