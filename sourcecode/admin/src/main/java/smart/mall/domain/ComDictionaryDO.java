package smart.mall.domain;

import java.util.Date;

/**
 * 数据字典(com_dictionary) 实体类 
 * 
 * author: wutianbin
 */ 
public class ComDictionaryDO {
    /** dict_id */;
    private Integer dictId;

    /** 字典编码 */;
    private String dictCode;

    /** 字典名称 */;
    private String dictName;

    /** 字典类型,clientLevel,certType */;
    private String dictType;

    /** 父类型ID默认为0 */;
    private Integer parentDictId;

    /** 字典英文名称 */;
    private String dictNameEn;

    /** 启用状态，1为启用，0禁用 */;
    private String enableState;

    /** 排序值 */;
    private Integer orderNo;

    /** 字典图标地址 */;
    private String dictIco;

    /** 创建日期 */;
    private Date createdOn;

    /** 创建人工号 */;
    private String createdBy;

    /** 修改日期 */;
    private Date modifiedOn;

    /** 修改人工号 */;
    private String modifiedBy;


    /** setter: dict_id */;
    public void setDictId(Integer dictId) {
        this.dictId = dictId;
    }

    /** getter: dict_id */;
    public Integer getDictId() {
        return dictId;
    }

    /** setter: 字典编码 */;
    public void setDictCode(String dictCode) {
        this.dictCode = dictCode;
    }

    /** getter: 字典编码 */;
    public String getDictCode() {
        return dictCode;
    }

    /** setter: 字典名称 */;
    public void setDictName(String dictName) {
        this.dictName = dictName;
    }

    /** getter: 字典名称 */;
    public String getDictName() {
        return dictName;
    }

    /** setter: 字典类型,clientLevel,certType */;
    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    /** getter: 字典类型,clientLevel,certType */;
    public String getDictType() {
        return dictType;
    }

    /** setter: 父类型ID默认为0 */;
    public void setParentDictId(Integer parentDictId) {
        this.parentDictId = parentDictId;
    }

    /** getter: 父类型ID默认为0 */;
    public Integer getParentDictId() {
        return parentDictId;
    }

    /** setter: 字典英文名称 */;
    public void setDictNameEn(String dictNameEn) {
        this.dictNameEn = dictNameEn;
    }

    /** getter: 字典英文名称 */;
    public String getDictNameEn() {
        return dictNameEn;
    }

    /** setter: 启用状态，1为启用，0禁用 */;
    public void setEnableState(String enableState) {
        this.enableState = enableState;
    }

    /** getter: 启用状态，1为启用，0禁用 */;
    public String getEnableState() {
        return enableState;
    }

    /** setter: 排序值 */;
    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    /** getter: 排序值 */;
    public Integer getOrderNo() {
        return orderNo;
    }

    /** setter: 字典图标地址 */;
    public void setDictIco(String dictIco) {
        this.dictIco = dictIco;
    }

    /** getter: 字典图标地址 */;
    public String getDictIco() {
        return dictIco;
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

        resultHashCode = prime * resultHashCode + ((dictId == null) ? 0 : dictId.hashCode());
        resultHashCode = prime * resultHashCode + ((dictCode == null) ? 0 : dictCode.hashCode());
        resultHashCode = prime * resultHashCode + ((dictName == null) ? 0 : dictName.hashCode());
        resultHashCode = prime * resultHashCode + ((dictType == null) ? 0 : dictType.hashCode());
        resultHashCode = prime * resultHashCode + ((parentDictId == null) ? 0 : parentDictId.hashCode());
        resultHashCode = prime * resultHashCode + ((dictNameEn == null) ? 0 : dictNameEn.hashCode());
        resultHashCode = prime * resultHashCode + ((enableState == null) ? 0 : enableState.hashCode());
        resultHashCode = prime * resultHashCode + ((orderNo == null) ? 0 : orderNo.hashCode());
        resultHashCode = prime * resultHashCode + ((dictIco == null) ? 0 : dictIco.hashCode());
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

        ComDictionaryDO other = (ComDictionaryDO) obj;

        if (dictId == null) {
            if (other.dictId != null) {
                return false;
            }
        } else if (!dictId.equals(other.dictId)) {
            return false; 
        }

        if (dictCode == null) {
            if (other.dictCode != null) {
                return false;
            }
        } else if (!dictCode.equals(other.dictCode)) {
            return false; 
        }

        if (dictName == null) {
            if (other.dictName != null) {
                return false;
            }
        } else if (!dictName.equals(other.dictName)) {
            return false; 
        }

        if (dictType == null) {
            if (other.dictType != null) {
                return false;
            }
        } else if (!dictType.equals(other.dictType)) {
            return false; 
        }

        if (parentDictId == null) {
            if (other.parentDictId != null) {
                return false;
            }
        } else if (!parentDictId.equals(other.parentDictId)) {
            return false; 
        }

        if (dictNameEn == null) {
            if (other.dictNameEn != null) {
                return false;
            }
        } else if (!dictNameEn.equals(other.dictNameEn)) {
            return false; 
        }

        if (enableState == null) {
            if (other.enableState != null) {
                return false;
            }
        } else if (!enableState.equals(other.enableState)) {
            return false; 
        }

        if (orderNo == null) {
            if (other.orderNo != null) {
                return false;
            }
        } else if (!orderNo.equals(other.orderNo)) {
            return false; 
        }

        if (dictIco == null) {
            if (other.dictIco != null) {
                return false;
            }
        } else if (!dictIco.equals(other.dictIco)) {
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

        sb.append("ComDictionaryDO [");
        sb.append("dictId=").append(dictId).append(",");
        sb.append("dictCode=").append(dictCode).append(",");
        sb.append("dictName=").append(dictName).append(",");
        sb.append("dictType=").append(dictType).append(",");
        sb.append("parentDictId=").append(parentDictId).append(",");
        sb.append("dictNameEn=").append(dictNameEn).append(",");
        sb.append("enableState=").append(enableState).append(",");
        sb.append("orderNo=").append(orderNo).append(",");
        sb.append("dictIco=").append(dictIco).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


