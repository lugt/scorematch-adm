package smart.mall.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 消息生产调度表(msg_schedule_config) 实体类 
 * 
 * author: 李丹
 */ 
public class MsgScheduleConfigDO {
    /** id */;
    private Integer id;

    /** 消息类型 */;
    private String msgType;

    /** 消息生产发送 0-间隔扫描，1-定时扫描 */;
    private Integer trigerType;

    /** 扫描间隔 单位分钟 */;
    private Integer inteval;

    /** 定时时间, 从几点开始 */
    @JsonFormat(pattern = "HH:mm:ss",timezone = "GMT+8")
    private Date trigerTime;

    /** 消息推送类型 1-内推，2-短信 */;
    private Integer sendType;

    /** 内容模板，模板中变量用%s代替 */;
    private String content;


    /** setter: id */;
    public void setId(Integer id) {
        this.id = id;
    }

    /** getter: id */;
    public Integer getId() {
        return id;
    }

    /** setter: 消息类型 */;
    public void setMsgType(String msgType) {
        this.msgType = msgType;
    }

    /** getter: 消息类型 */;
    public String getMsgType() {
        return msgType;
    }

    /** setter: 消息生产发送 0-间隔扫描，1-定时扫描 */;
    public void setTrigerType(Integer trigerType) {
        this.trigerType = trigerType;
    }

    /** getter: 消息生产发送 0-间隔扫描，1-定时扫描 */;
    public Integer getTrigerType() {
        return trigerType;
    }

    /** setter: 扫描间隔 单位分钟 */;
    public void setInteval(Integer inteval) {
        this.inteval = inteval;
    }

    /** getter: 扫描间隔 单位分钟 */;
    public Integer getInteval() {
        return inteval;
    }

    /** setter: 定时时间, 从几点开始 */;
    public void setTrigerTime(Date trigerTime) {
        this.trigerTime = trigerTime;
    }

    /** getter: 定时时间, 从几点开始 */;
    public Date getTrigerTime() {
        return trigerTime;
    }

    /** setter: 消息推送类型 0-内推，1-短信 */;
    public void setSendType(Integer sendType) {
        this.sendType = sendType;
    }

    /** getter: 消息推送类型 0-内推，1-短信 */;
    public Integer getSendType() {
        return sendType;
    }

    /** setter: 内容模板，模板中变量用%s代替 */;
    public void setContent(String content) {
        this.content = content;
    }

    /** getter: 内容模板，模板中变量用%s代替 */;
    public String getContent() {
        return content;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((id == null) ? 0 : id.hashCode());
        resultHashCode = prime * resultHashCode + ((msgType == null) ? 0 : msgType.hashCode());
        resultHashCode = prime * resultHashCode + ((trigerType == null) ? 0 : trigerType.hashCode());
        resultHashCode = prime * resultHashCode + ((inteval == null) ? 0 : inteval.hashCode());
        resultHashCode = prime * resultHashCode + ((trigerTime == null) ? 0 : trigerTime.hashCode());
        resultHashCode = prime * resultHashCode + ((sendType == null) ? 0 : sendType.hashCode());
        resultHashCode = prime * resultHashCode + ((content == null) ? 0 : content.hashCode());

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

        MsgScheduleConfigDO other = (MsgScheduleConfigDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (msgType == null) {
            if (other.msgType != null) {
                return false;
            }
        } else if (!msgType.equals(other.msgType)) {
            return false; 
        }

        if (trigerType == null) {
            if (other.trigerType != null) {
                return false;
            }
        } else if (!trigerType.equals(other.trigerType)) {
            return false; 
        }

        if (inteval == null) {
            if (other.inteval != null) {
                return false;
            }
        } else if (!inteval.equals(other.inteval)) {
            return false; 
        }

        if (trigerTime == null) {
            if (other.trigerTime != null) {
                return false;
            }
        } else if (!trigerTime.equals(other.trigerTime)) {
            return false; 
        }

        if (sendType == null) {
            if (other.sendType != null) {
                return false;
            }
        } else if (!sendType.equals(other.sendType)) {
            return false; 
        }

        if (content == null) {
            if (other.content != null) {
                return false;
            }
        } else if (!content.equals(other.content)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("MsgScheduleConfigDO [");
        sb.append("id=").append(id).append(",");
        sb.append("msgType=").append(msgType).append(",");
        sb.append("trigerType=").append(trigerType).append(",");
        sb.append("inteval=").append(inteval).append(",");
        sb.append("trigerTime=").append(trigerTime).append(",");
        sb.append("sendType=").append(sendType).append(",");
        sb.append("content=").append(content);
        sb.append("]");

        return sb.toString();
    }

}


