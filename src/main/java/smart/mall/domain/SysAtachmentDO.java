package smart.mall.domain;

import java.util.Date;

/**
 * 附件(sys_atachment) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysAtachmentDO {
    /** id */;
    private Integer id;

    /** 主表名 */;
    private String parentTableName;

    /** 主表记录ID */;
    private String parentRowId;

    /** 文件名 */;
    private String fileName;

    /** 文件扩展名 */;
    private String fileExtName;

    /** 文件路径 */;
    private String filePath;

    /** 创建人工号 */;
    private String createdByCode;

    /** 创建人姓名 */;
    private String createdByName;

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

    /** setter: 主表名 */;
    public void setParentTableName(String parentTableName) {
        this.parentTableName = parentTableName;
    }

    /** getter: 主表名 */;
    public String getParentTableName() {
        return parentTableName;
    }

    /** setter: 主表记录ID */;
    public void setParentRowId(String parentRowId) {
        this.parentRowId = parentRowId;
    }

    /** getter: 主表记录ID */;
    public String getParentRowId() {
        return parentRowId;
    }

    /** setter: 文件名 */;
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /** getter: 文件名 */;
    public String getFileName() {
        return fileName;
    }

    /** setter: 文件扩展名 */;
    public void setFileExtName(String fileExtName) {
        this.fileExtName = fileExtName;
    }

    /** getter: 文件扩展名 */;
    public String getFileExtName() {
        return fileExtName;
    }

    /** setter: 文件路径 */;
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /** getter: 文件路径 */;
    public String getFilePath() {
        return filePath;
    }

    /** setter: 创建人工号 */;
    public void setCreatedByCode(String createdByCode) {
        this.createdByCode = createdByCode;
    }

    /** getter: 创建人工号 */;
    public String getCreatedByCode() {
        return createdByCode;
    }

    /** setter: 创建人姓名 */;
    public void setCreatedByName(String createdByName) {
        this.createdByName = createdByName;
    }

    /** getter: 创建人姓名 */;
    public String getCreatedByName() {
        return createdByName;
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
        resultHashCode = prime * resultHashCode + ((parentTableName == null) ? 0 : parentTableName.hashCode());
        resultHashCode = prime * resultHashCode + ((parentRowId == null) ? 0 : parentRowId.hashCode());
        resultHashCode = prime * resultHashCode + ((fileName == null) ? 0 : fileName.hashCode());
        resultHashCode = prime * resultHashCode + ((fileExtName == null) ? 0 : fileExtName.hashCode());
        resultHashCode = prime * resultHashCode + ((filePath == null) ? 0 : filePath.hashCode());
        resultHashCode = prime * resultHashCode + ((createdByCode == null) ? 0 : createdByCode.hashCode());
        resultHashCode = prime * resultHashCode + ((createdByName == null) ? 0 : createdByName.hashCode());
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

        SysAtachmentDO other = (SysAtachmentDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (parentTableName == null) {
            if (other.parentTableName != null) {
                return false;
            }
        } else if (!parentTableName.equals(other.parentTableName)) {
            return false; 
        }

        if (parentRowId == null) {
            if (other.parentRowId != null) {
                return false;
            }
        } else if (!parentRowId.equals(other.parentRowId)) {
            return false; 
        }

        if (fileName == null) {
            if (other.fileName != null) {
                return false;
            }
        } else if (!fileName.equals(other.fileName)) {
            return false; 
        }

        if (fileExtName == null) {
            if (other.fileExtName != null) {
                return false;
            }
        } else if (!fileExtName.equals(other.fileExtName)) {
            return false; 
        }

        if (filePath == null) {
            if (other.filePath != null) {
                return false;
            }
        } else if (!filePath.equals(other.filePath)) {
            return false; 
        }

        if (createdByCode == null) {
            if (other.createdByCode != null) {
                return false;
            }
        } else if (!createdByCode.equals(other.createdByCode)) {
            return false; 
        }

        if (createdByName == null) {
            if (other.createdByName != null) {
                return false;
            }
        } else if (!createdByName.equals(other.createdByName)) {
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

        sb.append("SysAtachmentDO [");
        sb.append("id=").append(id).append(",");
        sb.append("parentTableName=").append(parentTableName).append(",");
        sb.append("parentRowId=").append(parentRowId).append(",");
        sb.append("fileName=").append(fileName).append(",");
        sb.append("fileExtName=").append(fileExtName).append(",");
        sb.append("filePath=").append(filePath).append(",");
        sb.append("createdByCode=").append(createdByCode).append(",");
        sb.append("createdByName=").append(createdByName).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


