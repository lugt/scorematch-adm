package smart.mall.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import smart.mall.domain.SysUserDO;
import smart.mall.domain.SysUserDO;

public class ShiroUtils {
	
	public static Subject getSubjct() {
		return SecurityUtils.getSubject();
	}
	
	public static SysUserDO getUser() {
		return (SysUserDO)getSubjct().getPrincipal();
	}
	
	public static String getUserNo() {
		return getUser().getUserNo();
	}
	
	public static void logout() {
		getSubjct().logout();
	}
	
}
