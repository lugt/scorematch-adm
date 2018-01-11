package smart.mall.domain;

import java.util.Date;

/**
 * 角色资源权限(sys_role_resource) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysRoleResourceDO {
    /** id */;
    private Integer id;

    /** role_id */;
    private Integer roleId;

    /** resource_id */;
    private Integer resourceId;

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

    /** setter: role_id */;
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /** getter: role_id */;
    public Integer getRoleId() {
        return roleId;
    }

    /** setter: resource_id */;
    public void setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }

    /** getter: resource_id */;
    public Integer getResourceId() {
        return resourceId;
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
        resultHashCode = prime * resultHashCode + ((roleId == null) ? 0 : roleId.hashCode());
        resultHashCode = prime * resultHashCode + ((resourceId == null) ? 0 : resourceId.hashCode());
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

        SysRoleResourceDO other = (SysRoleResourceDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (roleId == null) {
            if (other.roleId != null) {
                return false;
            }
        } else if (!roleId.equals(other.roleId)) {
            return false; 
        }

        if (resourceId == null) {
            if (other.resourceId != null) {
                return false;
            }
        } else if (!resourceId.equals(other.resourceId)) {
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

        sb.append("SysRoleResourceDO [");
        sb.append("id=").append(id).append(",");
        sb.append("roleId=").append(roleId).append(",");
        sb.append("resourceId=").append(resourceId).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


