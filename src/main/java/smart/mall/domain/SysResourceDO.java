package smart.mall.domain;

import java.util.Date;

/**
 * 资源(sys_resource) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysResourceDO {
    /** id */;
    private Integer id;

    /** 名称 */;
    private String name;

    /** 编码 */;
    private String code;

    /** 资源类型(M菜单，B按钮) */;
    private String resType;

    /** 菜单地址 */;
    private String url;

    /** 父ID */;
    private Integer parentId;

    /** 1显示，0不显示 */;
    private Integer isShow;

    /** 顺序 */;
    private Integer menuOrder;

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

    /** setter: 名称 */;
    public void setName(String name) {
        this.name = name;
    }

    /** getter: 名称 */;
    public String getName() {
        return name;
    }

    /** setter: 编码 */;
    public void setCode(String code) {
        this.code = code;
    }

    /** getter: 编码 */;
    public String getCode() {
        return code;
    }

    /** setter: 资源类型(M菜单，B按钮) */;
    public void setResType(String resType) {
        this.resType = resType;
    }

    /** getter: 资源类型(M菜单，B按钮) */;
    public String getResType() {
        return resType;
    }

    /** setter: 菜单地址 */;
    public void setUrl(String url) {
        this.url = url;
    }

    /** getter: 菜单地址 */;
    public String getUrl() {
        return url;
    }

    /** setter: 父ID */;
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /** getter: 父ID */;
    public Integer getParentId() {
        return parentId;
    }

    /** setter: 1显示，0不显示 */;
    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }

    /** getter: 1显示，0不显示 */;
    public Integer getIsShow() {
        return isShow;
    }

    /** setter: 顺序 */;
    public void setMenuOrder(Integer menuOrder) {
        this.menuOrder = menuOrder;
    }

    /** getter: 顺序 */;
    public Integer getMenuOrder() {
        return menuOrder;
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
        resultHashCode = prime * resultHashCode + ((code == null) ? 0 : code.hashCode());
        resultHashCode = prime * resultHashCode + ((resType == null) ? 0 : resType.hashCode());
        resultHashCode = prime * resultHashCode + ((url == null) ? 0 : url.hashCode());
        resultHashCode = prime * resultHashCode + ((parentId == null) ? 0 : parentId.hashCode());
        resultHashCode = prime * resultHashCode + ((isShow == null) ? 0 : isShow.hashCode());
        resultHashCode = prime * resultHashCode + ((menuOrder == null) ? 0 : menuOrder.hashCode());
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

        SysResourceDO other = (SysResourceDO) obj;

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

        if (code == null) {
            if (other.code != null) {
                return false;
            }
        } else if (!code.equals(other.code)) {
            return false; 
        }

        if (resType == null) {
            if (other.resType != null) {
                return false;
            }
        } else if (!resType.equals(other.resType)) {
            return false; 
        }

        if (url == null) {
            if (other.url != null) {
                return false;
            }
        } else if (!url.equals(other.url)) {
            return false; 
        }

        if (parentId == null) {
            if (other.parentId != null) {
                return false;
            }
        } else if (!parentId.equals(other.parentId)) {
            return false; 
        }

        if (isShow == null) {
            if (other.isShow != null) {
                return false;
            }
        } else if (!isShow.equals(other.isShow)) {
            return false; 
        }

        if (menuOrder == null) {
            if (other.menuOrder != null) {
                return false;
            }
        } else if (!menuOrder.equals(other.menuOrder)) {
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

        sb.append("SysResourceDO [");
        sb.append("id=").append(id).append(",");
        sb.append("name=").append(name).append(",");
        sb.append("code=").append(code).append(",");
        sb.append("resType=").append(resType).append(",");
        sb.append("url=").append(url).append(",");
        sb.append("parentId=").append(parentId).append(",");
        sb.append("isShow=").append(isShow).append(",");
        sb.append("menuOrder=").append(menuOrder).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


