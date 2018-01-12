package smart.mall.domain;

import java.util.Date;

/**
 * 问题反馈(sys_feedback) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysFeedbackDO {
    /** id */;
    private Integer id;

    /** 反馈类型字典值，字典feedbackType */;
    private String feedbackType;

    /** 反馈类型名称 */;
    private String feedbackTypeName;

    /** 内容 */;
    private String content;

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

    /** setter: 反馈类型字典值，字典feedbackType */;
    public void setFeedbackType(String feedbackType) {
        this.feedbackType = feedbackType;
    }

    /** getter: 反馈类型字典值，字典feedbackType */;
    public String getFeedbackType() {
        return feedbackType;
    }

    /** setter: 反馈类型名称 */;
    public void setFeedbackTypeName(String feedbackTypeName) {
        this.feedbackTypeName = feedbackTypeName;
    }

    /** getter: 反馈类型名称 */;
    public String getFeedbackTypeName() {
        return feedbackTypeName;
    }

    /** setter: 内容 */;
    public void setContent(String content) {
        this.content = content;
    }

    /** getter: 内容 */;
    public String getContent() {
        return content;
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
        resultHashCode = prime * resultHashCode + ((feedbackType == null) ? 0 : feedbackType.hashCode());
        resultHashCode = prime * resultHashCode + ((feedbackTypeName == null) ? 0 : feedbackTypeName.hashCode());
        resultHashCode = prime * resultHashCode + ((content == null) ? 0 : content.hashCode());
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

        SysFeedbackDO other = (SysFeedbackDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (feedbackType == null) {
            if (other.feedbackType != null) {
                return false;
            }
        } else if (!feedbackType.equals(other.feedbackType)) {
            return false; 
        }

        if (feedbackTypeName == null) {
            if (other.feedbackTypeName != null) {
                return false;
            }
        } else if (!feedbackTypeName.equals(other.feedbackTypeName)) {
            return false; 
        }

        if (content == null) {
            if (other.content != null) {
                return false;
            }
        } else if (!content.equals(other.content)) {
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

        sb.append("SysFeedbackDO [");
        sb.append("id=").append(id).append(",");
        sb.append("feedbackType=").append(feedbackType).append(",");
        sb.append("feedbackTypeName=").append(feedbackTypeName).append(",");
        sb.append("content=").append(content).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


