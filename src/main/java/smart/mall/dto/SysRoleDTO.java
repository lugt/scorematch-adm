package smart.mall.dto;

import smart.mall.domain.SysRoleDO;
import smart.mall.domain.SysRoleDO;

public class SysRoleDTO extends SysRoleDO {
	
	/** "1,2,5,7" */
	private String menuIds;
	
	private String roleSign;

	public String getMenuIds() {
		return menuIds;
	}

	public String getRoleSign() {
		return roleSign;
	}

	public void setRoleSign(String roleSign) {
		this.roleSign = roleSign;
	}

	public void setMenuIds(String menuIds) {
		this.menuIds = menuIds;
	}

	@Override
	public String toString() {
		return "SysRoleDTO [ menuIds=" + menuIds + ", " 
				+ super.toString() +" ]";
	}

	public static SysRoleDTO cloneFrom(SysRoleDO role) {
		SysRoleDTO dto = new SysRoleDTO();
		dto.setId(role.getId());
		dto.setName(role.getName());
		dto.setRemark(role.getRemark());
		dto.setRoleCode(role.getRoleCode());
		return dto;
	}

}
