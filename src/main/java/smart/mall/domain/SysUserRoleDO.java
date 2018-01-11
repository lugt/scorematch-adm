package smart.mall.domain;

import java.util.Date;

/**
 * 用户角色(sys_user_role) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysUserRoleDO {
    /** id */;
    private Integer id;

    /** 用户工号 */;
    private String userNo;

    /** role_id */;
    private Integer roleId;

    /** 创建日期 */;
    private Date createdOn;

    /** 创建人工号 */;
    private String createdBy;

    /** 修改日期 */;
    private Date modifiedOn;

    /** 修改人工号 */;
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

    /** setter: role_id */;
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /** getter: role_id */;
    public Integer getRoleId() {
        return roleId;
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

        resultHashCode = prime * resultHashCode + ((id == null) ? 0 : id.hashCode());
        resultHashCode = prime * resultHashCode + ((userNo == null) ? 0 : userNo.hashCode());
        resultHashCode = prime * resultHashCode + ((roleId == null) ? 0 : roleId.hashCode());
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

        SysUserRoleDO other = (SysUserRoleDO) obj;

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

        if (roleId == null) {
            if (other.roleId != null) {
                return false;
            }
        } else if (!roleId.equals(other.roleId)) {
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

        sb.append("SysUserRoleDO [");
        sb.append("id=").append(id).append(",");
        sb.append("userNo=").append(userNo).append(",");
        sb.append("roleId=").append(roleId).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


