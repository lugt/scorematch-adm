package smart.mall.domain;

import java.util.Date;

/**
 * 负载均衡-定时任务主服务器(sys_master_server) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysMasterServerDO {
    /** item_id */;
    private Integer itemId;

    /** 主控IP */;
    private Integer serverIp;

    /** 更新时间戳 */;
    private Date updatetime;


    /** setter: item_id */;
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    /** getter: item_id */;
    public Integer getItemId() {
        return itemId;
    }

    /** setter: 主控IP */;
    public void setServerIp(Integer serverIp) {
        this.serverIp = serverIp;
    }

    /** getter: 主控IP */;
    public Integer getServerIp() {
        return serverIp;
    }

    /** setter: 更新时间戳 */;
    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    /** getter: 更新时间戳 */;
    public Date getUpdatetime() {
        return updatetime;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((itemId == null) ? 0 : itemId.hashCode());
        resultHashCode = prime * resultHashCode + ((serverIp == null) ? 0 : serverIp.hashCode());
        resultHashCode = prime * resultHashCode + ((updatetime == null) ? 0 : updatetime.hashCode());

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

        SysMasterServerDO other = (SysMasterServerDO) obj;

        if (itemId == null) {
            if (other.itemId != null) {
                return false;
            }
        } else if (!itemId.equals(other.itemId)) {
            return false; 
        }

        if (serverIp == null) {
            if (other.serverIp != null) {
                return false;
            }
        } else if (!serverIp.equals(other.serverIp)) {
            return false; 
        }

        if (updatetime == null) {
            if (other.updatetime != null) {
                return false;
            }
        } else if (!updatetime.equals(other.updatetime)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SysMasterServerDO [");
        sb.append("itemId=").append(itemId).append(",");
        sb.append("serverIp=").append(serverIp).append(",");
        sb.append("updatetime=").append(updatetime);
        sb.append("]");

        return sb.toString();
    }

}


