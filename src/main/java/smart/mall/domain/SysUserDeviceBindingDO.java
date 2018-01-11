package smart.mall.domain;

import java.util.Date;

/**
 * 用户绑定设备表(sys_user_device_binding) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysUserDeviceBindingDO {
    /** id */;
    private Integer id;

    /** 用户工号 */;
    private String userNo;

    /** 个推clientId */;
    private String clientId;

    /** 设备名称 */;
    private String deviceName;

    /** 首次绑定时间 */;
    private Date bindTime;

    /** 最近登录时间 */;
    private Date lastLoginTime;

    /** 是否在黑名单内： 1 在 、0 不在 */;
    private Integer onBlackList;

    /** 创建日期 */;
    private Date createdOn;

    /** 创建人工号 */;
    private String createdBy;

    /** 修改日期 */;
    private Date modifiedOn;

    /** 修改人 */;
    private String modifiedBy;


    /** setter: id */;
    public void setId(Integer id) {
        this.id = id;
    }

    /** getter: id */;
    public Integer getId() {
        return id;
    }

    /** setter: 用户工号 */;
    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    /** getter: 用户工号 */;
    public String getUserNo() {
        return userNo;
    }

    /** setter: 个推clientId */;
    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    /** getter: 个推clientId */;
    public String getClientId() {
        return clientId;
    }

    /** setter: 设备名称 */;
    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    /** getter: 设备名称 */;
    public String getDeviceName() {
        return deviceName;
    }

    /** setter: 首次绑定时间 */;
    public void setBindTime(Date bindTime) {
        this.bindTime = bindTime;
    }

    /** getter: 首次绑定时间 */;
    public Date getBindTime() {
        return bindTime;
    }

    /** setter: 最近登录时间 */;
    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    /** getter: 最近登录时间 */;
    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    /** setter: 是否在黑名单内： 1 在 、0 不在 */;
    public void setOnBlackList(Integer onBlackList) {
        this.onBlackList = onBlackList;
    }

    /** getter: 是否在黑名单内： 1 在 、0 不在 */;
    public Integer getOnBlackList() {
        return onBlackList;
    }

    /** setter: 创建日期 */;
    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    /** getter: 创建日期 */;
    public Date getCreatedOn() {
        return createdOn;
    }

    /** setter: 创建人工号 */;
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    /** getter: 创建人工号 */;
    public String getCreatedBy() {
        return createdBy;
    }

    /** setter: 修改日期 */;
    public void setModifiedOn(Date modifiedOn) {
        this.modifiedOn = modifiedOn;
    }

    /** getter: 修改日期 */;
    public Date getModifiedOn() {
        return modifiedOn;
    }

    /** setter: 修改人 */;
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    /** getter: 修改人 */;
    public String getModifiedBy() {
        return modifiedBy;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((id == null) ? 0 : id.hashCode());
        resultHashCode = prime * resultHashCode + ((userNo == null) ? 0 : userNo.hashCode());
        resultHashCode = prime * resultHashCode + ((clientId == null) ? 0 : clientId.hashCode());
        resultHashCode = prime * resultHashCode + ((deviceName == null) ? 0 : deviceName.hashCode());
        resultHashCode = prime * resultHashCode + ((bindTime == null) ? 0 : bindTime.hashCode());
        resultHashCode = prime * resultHashCode + ((lastLoginTime == null) ? 0 : lastLoginTime.hashCode());
        resultHashCode = prime * resultHashCode + ((onBlackList == null) ? 0 : onBlackList.hashCode());
        resultHashCode = prime * resultHashCode + ((createdOn == null) ? 0 : createdOn.hashCode());
        resultHashCode = prime * resultHashCode + ((createdBy == null) ? 0 : createdBy.hashCode());
        resultHashCode = prime * resultHashCode + ((modifiedOn == null) ? 0 : modifiedOn.hashCode());
        resultHashCode = prime * resultHashCode + ((modifiedBy == null) ? 0 : modifiedBy.hashCode());

        return resultHashCode;
    }

    @Override
    public boolean equals(Object obj) { 
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }

        SysUserDeviceBindingDO other = (SysUserDeviceBindingDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (userNo == null) {
            if (other.userNo != null) {
                return false;
            }
        } else if (!userNo.equals(other.userNo)) {
            return false; 
        }

        if (clientId == null) {
            if (other.clientId != null) {
                return false;
            }
        } else if (!clientId.equals(other.clientId)) {
            return false; 
        }

        if (deviceName == null) {
            if (other.deviceName != null) {
                return false;
            }
        } else if (!deviceName.equals(other.deviceName)) {
            return false; 
        }

        if (bindTime == null) {
            if (other.bindTime != null) {
                return false;
            }
        } else if (!bindTime.equals(other.bindTime)) {
            return false; 
        }

        if (lastLoginTime == null) {
            if (other.lastLoginTime != null) {
                return false;
            }
        } else if (!lastLoginTime.equals(other.lastLoginTime)) {
            return false; 
        }

        if (onBlackList == null) {
            if (other.onBlackList != null) {
                return false;
            }
        } else if (!onBlackList.equals(other.onBlackList)) {
            return false; 
        }

        if (createdOn == null) {
            if (other.createdOn != null) {
                return false;
            }
        } else if (!createdOn.equals(other.createdOn)) {
            return false; 
        }

        if (createdBy == null) {
            if (other.createdBy != null) {
                return false;
            }
        } else if (!createdBy.equals(other.createdBy)) {
            return false; 
        }

        if (modifiedOn == null) {
            if (other.modifiedOn != null) {
                return false;
            }
        } else if (!modifiedOn.equals(other.modifiedOn)) {
            return false; 
        }

        if (modifiedBy == null) {
            if (other.modifiedBy != null) {
                return false;
            }
        } else if (!modifiedBy.equals(other.modifiedBy)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SysUserDeviceBindingDO [");
        sb.append("id=").append(id).append(",");
        sb.append("userNo=").append(userNo).append(",");
        sb.append("clientId=").append(clientId).append(",");
        sb.append("deviceName=").append(deviceName).append(",");
        sb.append("bindTime=").append(bindTime).append(",");
        sb.append("lastLoginTime=").append(lastLoginTime).append(",");
        sb.append("onBlackList=").append(onBlackList).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


