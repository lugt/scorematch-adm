package smart.mall.domain;

import java.util.Date;

/**
 * 角色(sys_role) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysRoleDO {
    /** id */;
    private Integer id;

    /** 角色名称 */;
    private String name;

    /** 角色编号 */;
    private String roleCode;

    /** 说明 */;
    private String remark;

    /** 是否默认角色 */;
    private String isDefault;

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

    /** setter: 角色名称 */;
    public void setName(String name) {
        this.name = name;
    }

    /** getter: 角色名称 */;
    public String getName() {
        return name;
    }

    /** setter: 角色编号 */;
    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    /** getter: 角色编号 */;
    public String getRoleCode() {
        return roleCode;
    }

    /** setter: 说明 */;
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /** getter: 说明 */;
    public String getRemark() {
        return remark;
    }

    /** setter: 是否默认角色 */;
    public void setIsDefault(String isDefault) {
        this.isDefault = isDefault;
    }

    /** getter: 是否默认角色 */;
    public String getIsDefault() {
        return isDefault;
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
        resultHashCode = prime * resultHashCode + ((name == null) ? 0 : name.hashCode());
        resultHashCode = prime * resultHashCode + ((roleCode == null) ? 0 : roleCode.hashCode());
        resultHashCode = prime * resultHashCode + ((remark == null) ? 0 : remark.hashCode());
        resultHashCode = prime * resultHashCode + ((isDefault == null) ? 0 : isDefault.hashCode());
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

        SysRoleDO other = (SysRoleDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!name.equals(other.name)) {
            return false; 
        }

        if (roleCode == null) {
            if (other.roleCode != null) {
                return false;
            }
        } else if (!roleCode.equals(other.roleCode)) {
            return false; 
        }

        if (remark == null) {
            if (other.remark != null) {
                return false;
            }
        } else if (!remark.equals(other.remark)) {
            return false; 
        }

        if (isDefault == null) {
            if (other.isDefault != null) {
                return false;
            }
        } else if (!isDefault.equals(other.isDefault)) {
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

        sb.append("SysRoleDO [");
        sb.append("id=").append(id).append(",");
        sb.append("name=").append(name).append(",");
        sb.append("roleCode=").append(roleCode).append(",");
        sb.append("remark=").append(remark).append(",");
        sb.append("isDefault=").append(isDefault).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


