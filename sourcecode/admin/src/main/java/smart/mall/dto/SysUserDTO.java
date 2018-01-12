package smart.mall.dto;

import smart.mall.domain.SysUserDO;
import smart.mall.domain.SysUserDO;

public class SysUserDTO extends SysUserDO {

	/** 备用电话， 来自于 sys_personal */
	private String phoneBak;   
	
	/** 所属角色： "1,2,5,7" */
	private String roleIds;
	

	public String getRoleIds() {
		return roleIds;
	}

	public void setRoleIds(String roleIds) {
		this.roleIds = roleIds;
	}

	public String getPhoneBak() {
		return phoneBak;
	}

	public void setPhoneBak(String phoneBak) {
		this.phoneBak = phoneBak;
	}

	@Override
	public String toString() {
		return "SysUserDTO [ roleIds=" + roleIds + ", " 
				+ "phoneBak=" + phoneBak + ", " 
				+ super.toString() +" ]";
	}

	public static SysUserDTO cloneFrom(SysUserDO user) {
		SysUserDTO dto = new SysUserDTO();
		dto.setUserNo(user.getUserNo());
		dto.setDeptId(user.getDeptId());
		dto.setDeptName(user.getDeptName());
		dto.setGender(user.getGender());
		dto.setMobilePhone(user.getMobilePhone());
		dto.setPassword(user.getPassword());
		dto.setPCode(user.getPCode());
		dto.setStatus(user.getStatus());
		dto.setUserLoginName(user.getUserLoginName());
		dto.setUserName(user.getUserName());
		dto.setUserNameEn(user.getUserNameEn());
		return dto;
	}

}
