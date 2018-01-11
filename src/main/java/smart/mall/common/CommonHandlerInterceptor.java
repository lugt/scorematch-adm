package smart.mall.common;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import smart.mall.domain.SysResourceDO;
import smart.mall.domain.SysUserDO;
import smart.mall.service.ComDictionaryService;
import smart.mall.service.SysResourceService;
import smart.mall.domain.SysResourceDO;
import smart.mall.service.ComDictionaryService;
import smart.mall.service.SysResourceService;

@Component
public class CommonHandlerInterceptor implements HandlerInterceptor {

	Logger logger = LoggerFactory.getLogger(CommonHandlerInterceptor.class);
	String globalDict = "globalDict";
	Map<String, Map<String, String>> dictMap = null;

	@Autowired
	private ComDictionaryService comDictionaryService;

	@Autowired
	private SysResourceService sysResourceService;

	@SuppressWarnings("unchecked")
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (dictMap == null) {
			loadDictMap();
		}
		HttpSession session = request.getSession();
		ServletContext context = session.getServletContext();
		if (context.getAttribute(globalDict) == null) {
			context.setAttribute(globalDict, dictMap);
		}

		String path = UtilContext.getRequestPath(request);
		String url = request.getRequestURL().toString();
		logger.debug("preHandle path={},remoteIP={}, url={}", path, request.getRemoteAddr(), url);

		if (path.startsWith("/admin")) {
			SysUserDO sysUser = (SysUserDO) session.getAttribute("sysUser");
			if (sysUser == null) {
				response.sendRedirect("/login?from="+ URLEncoder.encode(path,"utf-8"));
				return false;
			} else {
				Map<String, SysResourceDO> userMenuMap = (Map<String, SysResourceDO>) session
						.getAttribute("userMenuMap");
				List<SysResourceDO> userMenuList = (List<SysResourceDO>) session.getAttribute("userMenuList");
				if (userMenuMap == null || userMenuList == null) {
					userMenuList = this.sysResourceService.listMenuByUser(sysUser.getUserNo());
					userMenuMap = this.getUserMenuMap(userMenuList);
					session.setAttribute("userMenuList", userMenuList);
					session.setAttribute("userMenuMap", userMenuMap);
				}
				if (!path.equals("/admin") && !userMenuMap.containsKey(path)) {
					logger.warn("非法访问, path={},remoteIP={}, url={}", path, request.getRemoteAddr(), url);
					// TODO 菜单未添加 暂时放过
					//return false;
				}
			}
		}
		return true;
	}

	private Map<String, SysResourceDO> getUserMenuMap(List<SysResourceDO> userMenuList) {
		Map<String, SysResourceDO> map = new HashMap<String, SysResourceDO>();
		for (SysResourceDO menu : userMenuList) {
			map.put(menu.getUrl(), menu);
		}
		return map;
	}

	private void loadDictMap() {
		dictMap = new HashMap<>();
		comDictionaryService.loadAll(dictMap);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

}
