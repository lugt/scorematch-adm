package smart.mall.dto;

import java.util.Date;

import smart.mall.domain.SysUserDeviceBindingDO;
import smart.mall.domain.SysUserDeviceBindingDO;

public class SysUserDeviceBindingDTO extends SysUserDeviceBindingDO {
	
	private Date beginTime;
	
	private Date endTime;
	
	private String userName;

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
