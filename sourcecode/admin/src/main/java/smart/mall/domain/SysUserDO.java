package smart.mall.domain;

import java.util.Date;

/**
 * 用户表(sys_user) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysUserDO {
    /** 用户工号 */;
    private String userNo;

    /** 账号 */;
    private String userLoginName;

    /** 密码 */;
    private String password;

    /** user_name */;
    private String userName;

    /** user_name_en */;
    private String userNameEn;

    /** 手机 */;
    private String mobilePhone;

    /** FOC代码 */;
    private String pCode;

    /** 部门ID */;
    private String deptId;

    /** 部门名称 */;
    private String deptName;

    /** 状态1有效，0无效 */;
    private Integer status;

    /** 性别 */;
    private String gender;

    /** 机组人员类型F飞行,C乘务员,S安全员 */;
    private String crewType;

    /** 创建日期 */;
    private Date createdOn;

    /** 创建人工号 */;
    private String createdBy;

    /** 修改日期 */;
    private Date modifiedOn;

    /** 修改人工号 */;
    private String modifiedBy;


    /** setter: 用户工号 */;
    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    /** getter: 用户工号 */;
    public String getUserNo() {
        return userNo;
    }

    /** setter: 账号 */;
    public void setUserLoginName(String userLoginName) {
        this.userLoginName = userLoginName;
    }

    /** getter: 账号 */;
    public String getUserLoginName() {
        return userLoginName;
    }

    /** setter: 密码 */;
    public void setPassword(String password) {
        this.password = password;
    }

    /** getter: 密码 */;
    public String getPassword() {
        return password;
    }

    /** setter: user_name */;
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /** getter: user_name */;
    public String getUserName() {
        return userName;
    }

    /** setter: user_name_en */;
    public void setUserNameEn(String userNameEn) {
        this.userNameEn = userNameEn;
    }

    /** getter: user_name_en */;
    public String getUserNameEn() {
        return userNameEn;
    }

    /** setter: 手机 */;
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    /** getter: 手机 */;
    public String getMobilePhone() {
        return mobilePhone;
    }

    /** setter: FOC代码 */;
    public void setPCode(String pCode) {
        this.pCode = pCode;
    }

    /** getter: FOC代码 */;
    public String getPCode() {
        return pCode;
    }

    /** setter: 部门ID */;
    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    /** getter: 部门ID */;
    public String getDeptId() {
        return deptId;
    }

    /** setter: 部门名称 */;
    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    /** getter: 部门名称 */;
    public String getDeptName() {
        return deptName;
    }

    /** setter: 状态1有效，0无效 */;
    public void setStatus(Integer status) {
        this.status = status;
    }

    /** getter: 状态1有效，0无效 */;
    public Integer getStatus() {
        return status;
    }

    /** setter: 性别 */;
    public void setGender(String gender) {
        this.gender = gender;
    }

    /** getter: 性别 */;
    public String getGender() {
        return gender;
    }

    /** setter: 机组人员类型F飞行,C乘务员,S安全员 */;
    public void setCrewType(String crewType) {
        this.crewType = crewType;
    }

    /** getter: 机组人员类型F飞行,C乘务员,S安全员 */;
    public String getCrewType() {
        return crewType;
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

    /** setter: 修改人工号 */;
    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    /** getter: 修改人工号 */;
    public String getModifiedBy() {
        return modifiedBy;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((userNo == null) ? 0 : userNo.hashCode());
        resultHashCode = prime * resultHashCode + ((userLoginName == null) ? 0 : userLoginName.hashCode());
        resultHashCode = prime * resultHashCode + ((password == null) ? 0 : password.hashCode());
        resultHashCode = prime * resultHashCode + ((userName == null) ? 0 : userName.hashCode());
        resultHashCode = prime * resultHashCode + ((userNameEn == null) ? 0 : userNameEn.hashCode());
        resultHashCode = prime * resultHashCode + ((mobilePhone == null) ? 0 : mobilePhone.hashCode());
        resultHashCode = prime * resultHashCode + ((pCode == null) ? 0 : pCode.hashCode());
        resultHashCode = prime * resultHashCode + ((deptId == null) ? 0 : deptId.hashCode());
        resultHashCode = prime * resultHashCode + ((deptName == null) ? 0 : deptName.hashCode());
        resultHashCode = prime * resultHashCode + ((status == null) ? 0 : status.hashCode());
        resultHashCode = prime * resultHashCode + ((gender == null) ? 0 : gender.hashCode());
        resultHashCode = prime * resultHashCode + ((crewType == null) ? 0 : crewType.hashCode());
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

        SysUserDO other = (SysUserDO) obj;

        if (userNo == null) {
            if (other.userNo != null) {
                return false;
            }
        } else if (!userNo.equals(other.userNo)) {
            return false; 
        }

        if (userLoginName == null) {
            if (other.userLoginName != null) {
                return false;
            }
        } else if (!userLoginName.equals(other.userLoginName)) {
            return false; 
        }

        if (password == null) {
            if (other.password != null) {
                return false;
            }
        } else if (!password.equals(other.password)) {
            return false; 
        }

        if (userName == null) {
            if (other.userName != null) {
                return false;
            }
        } else if (!userName.equals(other.userName)) {
            return false; 
        }

        if (userNameEn == null) {
            if (other.userNameEn != null) {
                return false;
            }
        } else if (!userNameEn.equals(other.userNameEn)) {
            return false; 
        }

        if (mobilePhone == null) {
            if (other.mobilePhone != null) {
                return false;
            }
        } else if (!mobilePhone.equals(other.mobilePhone)) {
            return false; 
        }

        if (pCode == null) {
            if (other.pCode != null) {
                return false;
            }
        } else if (!pCode.equals(other.pCode)) {
            return false; 
        }

        if (deptId == null) {
            if (other.deptId != null) {
                return false;
            }
        } else if (!deptId.equals(other.deptId)) {
            return false; 
        }

        if (deptName == null) {
            if (other.deptName != null) {
                return false;
            }
        } else if (!deptName.equals(other.deptName)) {
            return false; 
        }

        if (status == null) {
            if (other.status != null) {
                return false;
            }
        } else if (!status.equals(other.status)) {
            return false; 
        }

        if (gender == null) {
            if (other.gender != null) {
                return false;
            }
        } else if (!gender.equals(other.gender)) {
            return false; 
        }

        if (crewType == null) {
            if (other.crewType != null) {
                return false;
            }
        } else if (!crewType.equals(other.crewType)) {
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

        sb.append("SysUserDO [");
        sb.append("userNo=").append(userNo).append(",");
        sb.append("userLoginName=").append(userLoginName).append(",");
        sb.append("password=").append(password).append(",");
        sb.append("userName=").append(userName).append(",");
        sb.append("userNameEn=").append(userNameEn).append(",");
        sb.append("mobilePhone=").append(mobilePhone).append(",");
        sb.append("pCode=").append(pCode).append(",");
        sb.append("deptId=").append(deptId).append(",");
        sb.append("deptName=").append(deptName).append(",");
        sb.append("status=").append(status).append(",");
        sb.append("gender=").append(gender).append(",");
        sb.append("crewType=").append(crewType).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


