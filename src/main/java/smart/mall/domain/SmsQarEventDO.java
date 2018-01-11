package smart.mall.domain;

import java.util.Date;

/**
 * QAR事件(sms_qar_event) 实体类 
 * 
 * author: wutianbin
 */ 
public class SmsQarEventDO {
    /** id */;
    private Integer id;

    /** 航班号 */;
    private String flightNo;

    /** 航班日期 */;
    private Date flightDate;

    /** 起飞机场4名称 */;
    private String departureAirportName;

    /** 降落机场4名称 */;
    private String arrivalAirportName;

    /** 实际起飞时间 */;
    private Date depDateActual;

    /** 实际到达时间 */;
    private Date arrDateActual;

    /** 操纵者 */;
    private String controler;

    /** 操纵者工号 */;
    private String controlerNo;

    /** QAR事件等级 */;
    private String egrade;

    /** QAR事件名称 */;
    private String ename;

    /** qar事件号 */;
    private String eno;

    /** 事件峰值 */;
    private String peakvalue;

    /** 限制值 */;
    private String limitvalue;

    /** 事件时间 */;
    private Date etime;

    /** 气压高度km */;
    private Double baroHeight;

    /** 无线高度km */;
    private Double wirelessHeight;

    /** 空速 */;
    private Double airSpeed;

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

    /** setter: 航班号 */;
    public void setFlightNo(String flightNo) {
        this.flightNo = flightNo;
    }

    /** getter: 航班号 */;
    public String getFlightNo() {
        return flightNo;
    }

    /** setter: 航班日期 */;
    public void setFlightDate(Date flightDate) {
        this.flightDate = flightDate;
    }

    /** getter: 航班日期 */;
    public Date getFlightDate() {
        return flightDate;
    }

    /** setter: 起飞机场4名称 */;
    public void setDepartureAirportName(String departureAirportName) {
        this.departureAirportName = departureAirportName;
    }

    /** getter: 起飞机场4名称 */;
    public String getDepartureAirportName() {
        return departureAirportName;
    }

    /** setter: 降落机场4名称 */;
    public void setArrivalAirportName(String arrivalAirportName) {
        this.arrivalAirportName = arrivalAirportName;
    }

    /** getter: 降落机场4名称 */;
    public String getArrivalAirportName() {
        return arrivalAirportName;
    }

    /** setter: 实际起飞时间 */;
    public void setDepDateActual(Date depDateActual) {
        this.depDateActual = depDateActual;
    }

    /** getter: 实际起飞时间 */;
    public Date getDepDateActual() {
        return depDateActual;
    }

    /** setter: 实际到达时间 */;
    public void setArrDateActual(Date arrDateActual) {
        this.arrDateActual = arrDateActual;
    }

    /** getter: 实际到达时间 */;
    public Date getArrDateActual() {
        return arrDateActual;
    }

    /** setter: 操纵者 */;
    public void setControler(String controler) {
        this.controler = controler;
    }

    /** getter: 操纵者 */;
    public String getControler() {
        return controler;
    }

    /** setter: 操纵者工号 */;
    public void setControlerNo(String controlerNo) {
        this.controlerNo = controlerNo;
    }

    /** getter: 操纵者工号 */;
    public String getControlerNo() {
        return controlerNo;
    }

    /** setter: QAR事件等级 */;
    public void setEgrade(String egrade) {
        this.egrade = egrade;
    }

    /** getter: QAR事件等级 */;
    public String getEgrade() {
        return egrade;
    }

    /** setter: QAR事件名称 */;
    public void setEname(String ename) {
        this.ename = ename;
    }

    /** getter: QAR事件名称 */;
    public String getEname() {
        return ename;
    }

    /** setter: qar事件号 */;
    public void setEno(String eno) {
        this.eno = eno;
    }

    /** getter: qar事件号 */;
    public String getEno() {
        return eno;
    }

    /** setter: 事件峰值 */;
    public void setPeakvalue(String peakvalue) {
        this.peakvalue = peakvalue;
    }

    /** getter: 事件峰值 */;
    public String getPeakvalue() {
        return peakvalue;
    }

    /** setter: 限制值 */;
    public void setLimitvalue(String limitvalue) {
        this.limitvalue = limitvalue;
    }

    /** getter: 限制值 */;
    public String getLimitvalue() {
        return limitvalue;
    }

    /** setter: 事件时间 */;
    public void setEtime(Date etime) {
        this.etime = etime;
    }

    /** getter: 事件时间 */;
    public Date getEtime() {
        return etime;
    }

    /** setter: 气压高度km */;
    public void setBaroHeight(Double baroHeight) {
        this.baroHeight = baroHeight;
    }

    /** getter: 气压高度km */;
    public Double getBaroHeight() {
        return baroHeight;
    }

    /** setter: 无线高度km */;
    public void setWirelessHeight(Double wirelessHeight) {
        this.wirelessHeight = wirelessHeight;
    }

    /** getter: 无线高度km */;
    public Double getWirelessHeight() {
        return wirelessHeight;
    }

    /** setter: 空速 */;
    public void setAirSpeed(Double airSpeed) {
        this.airSpeed = airSpeed;
    }

    /** getter: 空速 */;
    public Double getAirSpeed() {
        return airSpeed;
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
        resultHashCode = prime * resultHashCode + ((flightNo == null) ? 0 : flightNo.hashCode());
        resultHashCode = prime * resultHashCode + ((flightDate == null) ? 0 : flightDate.hashCode());
        resultHashCode = prime * resultHashCode + ((departureAirportName == null) ? 0 : departureAirportName.hashCode());
        resultHashCode = prime * resultHashCode + ((arrivalAirportName == null) ? 0 : arrivalAirportName.hashCode());
        resultHashCode = prime * resultHashCode + ((depDateActual == null) ? 0 : depDateActual.hashCode());
        resultHashCode = prime * resultHashCode + ((arrDateActual == null) ? 0 : arrDateActual.hashCode());
        resultHashCode = prime * resultHashCode + ((controler == null) ? 0 : controler.hashCode());
        resultHashCode = prime * resultHashCode + ((controlerNo == null) ? 0 : controlerNo.hashCode());
        resultHashCode = prime * resultHashCode + ((egrade == null) ? 0 : egrade.hashCode());
        resultHashCode = prime * resultHashCode + ((ename == null) ? 0 : ename.hashCode());
        resultHashCode = prime * resultHashCode + ((eno == null) ? 0 : eno.hashCode());
        resultHashCode = prime * resultHashCode + ((peakvalue == null) ? 0 : peakvalue.hashCode());
        resultHashCode = prime * resultHashCode + ((limitvalue == null) ? 0 : limitvalue.hashCode());
        resultHashCode = prime * resultHashCode + ((etime == null) ? 0 : etime.hashCode());
        resultHashCode = prime * resultHashCode + ((baroHeight == null) ? 0 : baroHeight.hashCode());
        resultHashCode = prime * resultHashCode + ((wirelessHeight == null) ? 0 : wirelessHeight.hashCode());
        resultHashCode = prime * resultHashCode + ((airSpeed == null) ? 0 : airSpeed.hashCode());
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

        SmsQarEventDO other = (SmsQarEventDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (flightNo == null) {
            if (other.flightNo != null) {
                return false;
            }
        } else if (!flightNo.equals(other.flightNo)) {
            return false; 
        }

        if (flightDate == null) {
            if (other.flightDate != null) {
                return false;
            }
        } else if (!flightDate.equals(other.flightDate)) {
            return false; 
        }

        if (departureAirportName == null) {
            if (other.departureAirportName != null) {
                return false;
            }
        } else if (!departureAirportName.equals(other.departureAirportName)) {
            return false; 
        }

        if (arrivalAirportName == null) {
            if (other.arrivalAirportName != null) {
                return false;
            }
        } else if (!arrivalAirportName.equals(other.arrivalAirportName)) {
            return false; 
        }

        if (depDateActual == null) {
            if (other.depDateActual != null) {
                return false;
            }
        } else if (!depDateActual.equals(other.depDateActual)) {
            return false; 
        }

        if (arrDateActual == null) {
            if (other.arrDateActual != null) {
                return false;
            }
        } else if (!arrDateActual.equals(other.arrDateActual)) {
            return false; 
        }

        if (controler == null) {
            if (other.controler != null) {
                return false;
            }
        } else if (!controler.equals(other.controler)) {
            return false; 
        }

        if (controlerNo == null) {
            if (other.controlerNo != null) {
                return false;
            }
        } else if (!controlerNo.equals(other.controlerNo)) {
            return false; 
        }

        if (egrade == null) {
            if (other.egrade != null) {
                return false;
            }
        } else if (!egrade.equals(other.egrade)) {
            return false; 
        }

        if (ename == null) {
            if (other.ename != null) {
                return false;
            }
        } else if (!ename.equals(other.ename)) {
            return false; 
        }

        if (eno == null) {
            if (other.eno != null) {
                return false;
            }
        } else if (!eno.equals(other.eno)) {
            return false; 
        }

        if (peakvalue == null) {
            if (other.peakvalue != null) {
                return false;
            }
        } else if (!peakvalue.equals(other.peakvalue)) {
            return false; 
        }

        if (limitvalue == null) {
            if (other.limitvalue != null) {
                return false;
            }
        } else if (!limitvalue.equals(other.limitvalue)) {
            return false; 
        }

        if (etime == null) {
            if (other.etime != null) {
                return false;
            }
        } else if (!etime.equals(other.etime)) {
            return false; 
        }

        if (baroHeight == null) {
            if (other.baroHeight != null) {
                return false;
            }
        } else if (!baroHeight.equals(other.baroHeight)) {
            return false; 
        }

        if (wirelessHeight == null) {
            if (other.wirelessHeight != null) {
                return false;
            }
        } else if (!wirelessHeight.equals(other.wirelessHeight)) {
            return false; 
        }

        if (airSpeed == null) {
            if (other.airSpeed != null) {
                return false;
            }
        } else if (!airSpeed.equals(other.airSpeed)) {
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

        sb.append("SmsQarEventDO [");
        sb.append("id=").append(id).append(",");
        sb.append("flightNo=").append(flightNo).append(",");
        sb.append("flightDate=").append(flightDate).append(",");
        sb.append("departureAirportName=").append(departureAirportName).append(",");
        sb.append("arrivalAirportName=").append(arrivalAirportName).append(",");
        sb.append("depDateActual=").append(depDateActual).append(",");
        sb.append("arrDateActual=").append(arrDateActual).append(",");
        sb.append("controler=").append(controler).append(",");
        sb.append("controlerNo=").append(controlerNo).append(",");
        sb.append("egrade=").append(egrade).append(",");
        sb.append("ename=").append(ename).append(",");
        sb.append("eno=").append(eno).append(",");
        sb.append("peakvalue=").append(peakvalue).append(",");
        sb.append("limitvalue=").append(limitvalue).append(",");
        sb.append("etime=").append(etime).append(",");
        sb.append("baroHeight=").append(baroHeight).append(",");
        sb.append("wirelessHeight=").append(wirelessHeight).append(",");
        sb.append("airSpeed=").append(airSpeed).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


