package smart.mall.domain;

import java.util.Date;

/**
 * 第三方数据字典com_dictionary与业务系统字典映射(com_dictionary_mapping) 实体类 
 * 
 * author: wutianbin
 */ 
public class ComDictionaryMappingDO {
    /** id */;
    private Integer id;

    /** 平台字典类型 */;
    private String dictType;

    /** 平台字典项编号 */;
    private String dictCodeCloud;

    /** 第三方系统字典项编号 */;
    private String dictCodeThirdSys;

    /** 第三方系统中字典类型，abnormal_reason不正常原因 */;
    private String dictCodeThirdType;

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

    /** setter: 平台字典类型 */;
    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    /** getter: 平台字典类型 */;
    public String getDictType() {
        return dictType;
    }

    /** setter: 平台字典项编号 */;
    public void setDictCodeCloud(String dictCodeCloud) {
        this.dictCodeCloud = dictCodeCloud;
    }

    /** getter: 平台字典项编号 */;
    public String getDictCodeCloud() {
        return dictCodeCloud;
    }

    /** setter: 第三方系统字典项编号 */;
    public void setDictCodeThirdSys(String dictCodeThirdSys) {
        this.dictCodeThirdSys = dictCodeThirdSys;
    }

    /** getter: 第三方系统字典项编号 */;
    public String getDictCodeThirdSys() {
        return dictCodeThirdSys;
    }

    /** setter: 第三方系统中字典类型，abnormal_reason不正常原因 */;
    public void setDictCodeThirdType(String dictCodeThirdType) {
        this.dictCodeThirdType = dictCodeThirdType;
    }

    /** getter: 第三方系统中字典类型，abnormal_reason不正常原因 */;
    public String getDictCodeThirdType() {
        return dictCodeThirdType;
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
        resultHashCode = prime * resultHashCode + ((dictType == null) ? 0 : dictType.hashCode());
        resultHashCode = prime * resultHashCode + ((dictCodeCloud == null) ? 0 : dictCodeCloud.hashCode());
        resultHashCode = prime * resultHashCode + ((dictCodeThirdSys == null) ? 0 : dictCodeThirdSys.hashCode());
        resultHashCode = prime * resultHashCode + ((dictCodeThirdType == null) ? 0 : dictCodeThirdType.hashCode());
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

        ComDictionaryMappingDO other = (ComDictionaryMappingDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (dictType == null) {
            if (other.dictType != null) {
                return false;
            }
        } else if (!dictType.equals(other.dictType)) {
            return false; 
        }

        if (dictCodeCloud == null) {
            if (other.dictCodeCloud != null) {
                return false;
            }
        } else if (!dictCodeCloud.equals(other.dictCodeCloud)) {
            return false; 
        }

        if (dictCodeThirdSys == null) {
            if (other.dictCodeThirdSys != null) {
                return false;
            }
        } else if (!dictCodeThirdSys.equals(other.dictCodeThirdSys)) {
            return false; 
        }

        if (dictCodeThirdType == null) {
            if (other.dictCodeThirdType != null) {
                return false;
            }
        } else if (!dictCodeThirdType.equals(other.dictCodeThirdType)) {
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

        sb.append("ComDictionaryMappingDO [");
        sb.append("id=").append(id).append(",");
        sb.append("dictType=").append(dictType).append(",");
        sb.append("dictCodeCloud=").append(dictCodeCloud).append(",");
        sb.append("dictCodeThirdSys=").append(dictCodeThirdSys).append(",");
        sb.append("dictCodeThirdType=").append(dictCodeThirdType).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


