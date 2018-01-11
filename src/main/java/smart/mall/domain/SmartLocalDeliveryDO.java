package smart.mall.domain;

/**
 * 发货派送(smart_local_delivery) 实体类 
 * 
 * author: Frapo
 */ 
public class SmartLocalDeliveryDO {
    /** 派送单ID */;
    private Integer deliverid;

    /** 订单ID */;
    private Integer orderid;

    /** 用户名 */;
    private Integer uid;

    /** 发货类型 */;
    private Integer type;

    /** 发货状态 */;
    private Integer status;

    /** 运输人 */;
    private String sender;

    /** 接受地址 */;
    private Integer address;

    /** 派送人员 */;
    private String carrier;

    /** 开始时间 */;
    private Integer starttime;

    /** 预定上门时间 */;
    private Integer reservetime;

    /** 包裹出库时间 */;
    private Integer packagetime;

    /** 签收时间 */;
    private Integer accepttime;

    /** 确认收获时间 */;
    private Integer confirmtime;

    /** 记录信息 */;
    private String logs;


    /** setter: 派送单ID */;
    public void setDeliverid(Integer deliverid) {
        this.deliverid = deliverid;
    }

    /** getter: 派送单ID */;
    public Integer getDeliverid() {
        return deliverid;
    }

    /** setter: 订单ID */;
    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    /** getter: 订单ID */;
    public Integer getOrderid() {
        return orderid;
    }

    /** setter: 用户名 */;
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /** getter: 用户名 */;
    public Integer getUid() {
        return uid;
    }

    /** setter: 发货类型 */;
    public void setType(Integer type) {
        this.type = type;
    }

    /** getter: 发货类型 */;
    public Integer getType() {
        return type;
    }

    /** setter: 发货状态 */;
    public void setStatus(Integer status) {
        this.status = status;
    }

    /** getter: 发货状态 */;
    public Integer getStatus() {
        return status;
    }

    /** setter: 运输人 */;
    public void setSender(String sender) {
        this.sender = sender;
    }

    /** getter: 运输人 */;
    public String getSender() {
        return sender;
    }

    /** setter: 接受地址 */;
    public void setAddress(Integer address) {
        this.address = address;
    }

    /** getter: 接受地址 */;
    public Integer getAddress() {
        return address;
    }

    /** setter: 派送人员 */;
    public void setCarrier(String carrier) {
        this.carrier = carrier;
    }

    /** getter: 派送人员 */;
    public String getCarrier() {
        return carrier;
    }

    /** setter: 开始时间 */;
    public void setStarttime(Integer starttime) {
        this.starttime = starttime;
    }

    /** getter: 开始时间 */;
    public Integer getStarttime() {
        return starttime;
    }

    /** setter: 预定上门时间 */;
    public void setReservetime(Integer reservetime) {
        this.reservetime = reservetime;
    }

    /** getter: 预定上门时间 */;
    public Integer getReservetime() {
        return reservetime;
    }

    /** setter: 包裹出库时间 */;
    public void setPackagetime(Integer packagetime) {
        this.packagetime = packagetime;
    }

    /** getter: 包裹出库时间 */;
    public Integer getPackagetime() {
        return packagetime;
    }

    /** setter: 签收时间 */;
    public void setAccepttime(Integer accepttime) {
        this.accepttime = accepttime;
    }

    /** getter: 签收时间 */;
    public Integer getAccepttime() {
        return accepttime;
    }

    /** setter: 确认收获时间 */;
    public void setConfirmtime(Integer confirmtime) {
        this.confirmtime = confirmtime;
    }

    /** getter: 确认收获时间 */;
    public Integer getConfirmtime() {
        return confirmtime;
    }

    /** setter: 记录信息 */;
    public void setLogs(String logs) {
        this.logs = logs;
    }

    /** getter: 记录信息 */;
    public String getLogs() {
        return logs;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((deliverid == null) ? 0 : deliverid.hashCode());
        resultHashCode = prime * resultHashCode + ((orderid == null) ? 0 : orderid.hashCode());
        resultHashCode = prime * resultHashCode + ((uid == null) ? 0 : uid.hashCode());
        resultHashCode = prime * resultHashCode + ((type == null) ? 0 : type.hashCode());
        resultHashCode = prime * resultHashCode + ((status == null) ? 0 : status.hashCode());
        resultHashCode = prime * resultHashCode + ((sender == null) ? 0 : sender.hashCode());
        resultHashCode = prime * resultHashCode + ((address == null) ? 0 : address.hashCode());
        resultHashCode = prime * resultHashCode + ((carrier == null) ? 0 : carrier.hashCode());
        resultHashCode = prime * resultHashCode + ((starttime == null) ? 0 : starttime.hashCode());
        resultHashCode = prime * resultHashCode + ((reservetime == null) ? 0 : reservetime.hashCode());
        resultHashCode = prime * resultHashCode + ((packagetime == null) ? 0 : packagetime.hashCode());
        resultHashCode = prime * resultHashCode + ((accepttime == null) ? 0 : accepttime.hashCode());
        resultHashCode = prime * resultHashCode + ((confirmtime == null) ? 0 : confirmtime.hashCode());
        resultHashCode = prime * resultHashCode + ((logs == null) ? 0 : logs.hashCode());

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

        SmartLocalDeliveryDO other = (SmartLocalDeliveryDO) obj;

        if (deliverid == null) {
            if (other.deliverid != null) {
                return false;
            }
        } else if (!deliverid.equals(other.deliverid)) {
            return false; 
        }

        if (orderid == null) {
            if (other.orderid != null) {
                return false;
            }
        } else if (!orderid.equals(other.orderid)) {
            return false; 
        }

        if (uid == null) {
            if (other.uid != null) {
                return false;
            }
        } else if (!uid.equals(other.uid)) {
            return false; 
        }

        if (type == null) {
            if (other.type != null) {
                return false;
            }
        } else if (!type.equals(other.type)) {
            return false; 
        }

        if (status == null) {
            if (other.status != null) {
                return false;
            }
        } else if (!status.equals(other.status)) {
            return false; 
        }

        if (sender == null) {
            if (other.sender != null) {
                return false;
            }
        } else if (!sender.equals(other.sender)) {
            return false; 
        }

        if (address == null) {
            if (other.address != null) {
                return false;
            }
        } else if (!address.equals(other.address)) {
            return false; 
        }

        if (carrier == null) {
            if (other.carrier != null) {
                return false;
            }
        } else if (!carrier.equals(other.carrier)) {
            return false; 
        }

        if (starttime == null) {
            if (other.starttime != null) {
                return false;
            }
        } else if (!starttime.equals(other.starttime)) {
            return false; 
        }

        if (reservetime == null) {
            if (other.reservetime != null) {
                return false;
            }
        } else if (!reservetime.equals(other.reservetime)) {
            return false; 
        }

        if (packagetime == null) {
            if (other.packagetime != null) {
                return false;
            }
        } else if (!packagetime.equals(other.packagetime)) {
            return false; 
        }

        if (accepttime == null) {
            if (other.accepttime != null) {
                return false;
            }
        } else if (!accepttime.equals(other.accepttime)) {
            return false; 
        }

        if (confirmtime == null) {
            if (other.confirmtime != null) {
                return false;
            }
        } else if (!confirmtime.equals(other.confirmtime)) {
            return false; 
        }

        if (logs == null) {
            if (other.logs != null) {
                return false;
            }
        } else if (!logs.equals(other.logs)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SmartLocalDeliveryDO [");
        sb.append("deliverid=").append(deliverid).append(",");
        sb.append("orderid=").append(orderid).append(",");
        sb.append("uid=").append(uid).append(",");
        sb.append("type=").append(type).append(",");
        sb.append("status=").append(status).append(",");
        sb.append("sender=").append(sender).append(",");
        sb.append("address=").append(address).append(",");
        sb.append("carrier=").append(carrier).append(",");
        sb.append("starttime=").append(starttime).append(",");
        sb.append("reservetime=").append(reservetime).append(",");
        sb.append("packagetime=").append(packagetime).append(",");
        sb.append("accepttime=").append(accepttime).append(",");
        sb.append("confirmtime=").append(confirmtime).append(",");
        sb.append("logs=").append(logs);
        sb.append("]");

        return sb.toString();
    }

}


