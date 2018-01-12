package smart.mall.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * 
 * web 上下文信息获取
 */
public class UtilContext {
	public static ServletRequestAttributes currentRequestAttributes() {
		RequestAttributes requestAttr = RequestContextHolder.currentRequestAttributes();
		if (!(requestAttr instanceof ServletRequestAttributes)) {
			throw new IllegalStateException("Current request is not a servlet request");
		}
		return (ServletRequestAttributes) requestAttr;
	}

	public static HttpSession getCurrentSession() {
		return currentRequestAttributes().getRequest().getSession();
	}

	public static HttpServletRequest getCurrentRequest() {
		return currentRequestAttributes().getRequest();
	}

	public static String getRequestPath(HttpServletRequest request) {
		String servletPath = request.getServletPath();
		String requestUri = request.getRequestURI();
		// Detecting other characters that the servlet container cut off (like
		// anything after ';')
		if (requestUri != null && servletPath != null && !requestUri.endsWith(servletPath)) {
			int pos = requestUri.indexOf(servletPath);
			if (pos > -1) {
				servletPath = requestUri.substring(requestUri.indexOf(servletPath));
			}
		}
		if (null != servletPath && !"".equals(servletPath)) {
			return servletPath;
		}
		int startIndex = request.getContextPath().equals("") ? 0 : request.getContextPath().length();
		int endIndex = request.getPathInfo() == null ? requestUri.length()
				: requestUri.lastIndexOf(request.getPathInfo());
		if (startIndex > endIndex) { // this should not happen
			endIndex = startIndex;
		}
		return requestUri.substring(startIndex, endIndex);
	}
}
