package smart.mall.domain;

import java.util.Date;

/**
 * 系统API调用日志表(sys_visit_log) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysVisitLogDO {
    /** log_id */;
    private Integer logId;

    /** 日志记录时间 */;
    private Date logTime;

    /** 调用API */;
    private String callApi;

    /** API描述 */;
    private String apiDesc;

    /** 来自用户 */;
    private String userNo;

    /** 来自设备 */;
    private String device;

    /** 设备地址 */;
    private String remoteAddr;

    /** 设备名称 */;
    private String remoteHost;

    /** 输入参数 */;
    private String inputParams;

    /** 调用结果 */;
    private Integer error;

    /** 调用耗时(毫秒) */;
    private Integer timeConsuming;

    /** 备注 */;
    private String bak;


    /** setter: log_id */;
    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    /** getter: log_id */;
    public Integer getLogId() {
        return logId;
    }

    /** setter: 日志记录时间 */;
    public void setLogTime(Date logTime) {
        this.logTime = logTime;
    }

    /** getter: 日志记录时间 */;
    public Date getLogTime() {
        return logTime;
    }

    /** setter: 调用API */;
    public void setCallApi(String callApi) {
        this.callApi = callApi;
    }

    /** getter: 调用API */;
    public String getCallApi() {
        return callApi;
    }

    /** setter: API描述 */;
    public void setApiDesc(String apiDesc) {
        this.apiDesc = apiDesc;
    }

    /** getter: API描述 */;
    public String getApiDesc() {
        return apiDesc;
    }

    /** setter: 来自用户 */;
    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    /** getter: 来自用户 */;
    public String getUserNo() {
        return userNo;
    }

    /** setter: 来自设备 */;
    public void setDevice(String device) {
        this.device = device;
    }

    /** getter: 来自设备 */;
    public String getDevice() {
        return device;
    }

    /** setter: 设备地址 */;
    public void setRemoteAddr(String remoteAddr) {
        this.remoteAddr = remoteAddr;
    }

    /** getter: 设备地址 */;
    public String getRemoteAddr() {
        return remoteAddr;
    }

    /** setter: 设备名称 */;
    public void setRemoteHost(String remoteHost) {
        this.remoteHost = remoteHost;
    }

    /** getter: 设备名称 */;
    public String getRemoteHost() {
        return remoteHost;
    }

    /** setter: 输入参数 */;
    public void setInputParams(String inputParams) {
        this.inputParams = inputParams;
    }

    /** getter: 输入参数 */;
    public String getInputParams() {
        return inputParams;
    }

    /** setter: 调用结果 */;
    public void setError(Integer error) {
        this.error = error;
    }

    /** getter: 调用结果 */;
    public Integer getError() {
        return error;
    }

    /** setter: 调用耗时(毫秒) */;
    public void setTimeConsuming(Integer timeConsuming) {
        this.timeConsuming = timeConsuming;
    }

    /** getter: 调用耗时(毫秒) */;
    public Integer getTimeConsuming() {
        return timeConsuming;
    }

    /** setter: 备注 */;
    public void setBak(String bak) {
        this.bak = bak;
    }

    /** getter: 备注 */;
    public String getBak() {
        return bak;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((logId == null) ? 0 : logId.hashCode());
        resultHashCode = prime * resultHashCode + ((logTime == null) ? 0 : logTime.hashCode());
        resultHashCode = prime * resultHashCode + ((callApi == null) ? 0 : callApi.hashCode());
        resultHashCode = prime * resultHashCode + ((apiDesc == null) ? 0 : apiDesc.hashCode());
        resultHashCode = prime * resultHashCode + ((userNo == null) ? 0 : userNo.hashCode());
        resultHashCode = prime * resultHashCode + ((device == null) ? 0 : device.hashCode());
        resultHashCode = prime * resultHashCode + ((remoteAddr == null) ? 0 : remoteAddr.hashCode());
        resultHashCode = prime * resultHashCode + ((remoteHost == null) ? 0 : remoteHost.hashCode());
        resultHashCode = prime * resultHashCode + ((inputParams == null) ? 0 : inputParams.hashCode());
        resultHashCode = prime * resultHashCode + ((error == null) ? 0 : error.hashCode());
        resultHashCode = prime * resultHashCode + ((timeConsuming == null) ? 0 : timeConsuming.hashCode());
        resultHashCode = prime * resultHashCode + ((bak == null) ? 0 : bak.hashCode());

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

        SysVisitLogDO other = (SysVisitLogDO) obj;

        if (logId == null) {
            if (other.logId != null) {
                return false;
            }
        } else if (!logId.equals(other.logId)) {
            return false; 
        }

        if (logTime == null) {
            if (other.logTime != null) {
                return false;
            }
        } else if (!logTime.equals(other.logTime)) {
            return false; 
        }

        if (callApi == null) {
            if (other.callApi != null) {
                return false;
            }
        } else if (!callApi.equals(other.callApi)) {
            return false; 
        }

        if (apiDesc == null) {
            if (other.apiDesc != null) {
                return false;
            }
        } else if (!apiDesc.equals(other.apiDesc)) {
            return false; 
        }

        if (userNo == null) {
            if (other.userNo != null) {
                return false;
            }
        } else if (!userNo.equals(other.userNo)) {
            return false; 
        }

        if (device == null) {
            if (other.device != null) {
                return false;
            }
        } else if (!device.equals(other.device)) {
            return false; 
        }

        if (remoteAddr == null) {
            if (other.remoteAddr != null) {
                return false;
            }
        } else if (!remoteAddr.equals(other.remoteAddr)) {
            return false; 
        }

        if (remoteHost == null) {
            if (other.remoteHost != null) {
                return false;
            }
        } else if (!remoteHost.equals(other.remoteHost)) {
            return false; 
        }

        if (inputParams == null) {
            if (other.inputParams != null) {
                return false;
            }
        } else if (!inputParams.equals(other.inputParams)) {
            return false; 
        }

        if (error == null) {
            if (other.error != null) {
                return false;
            }
        } else if (!error.equals(other.error)) {
            return false; 
        }

        if (timeConsuming == null) {
            if (other.timeConsuming != null) {
                return false;
            }
        } else if (!timeConsuming.equals(other.timeConsuming)) {
            return false; 
        }

        if (bak == null) {
            if (other.bak != null) {
                return false;
            }
        } else if (!bak.equals(other.bak)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SysVisitLogDO [");
        sb.append("logId=").append(logId).append(",");
        sb.append("logTime=").append(logTime).append(",");
        sb.append("callApi=").append(callApi).append(",");
        sb.append("apiDesc=").append(apiDesc).append(",");
        sb.append("userNo=").append(userNo).append(",");
        sb.append("device=").append(device).append(",");
        sb.append("remoteAddr=").append(remoteAddr).append(",");
        sb.append("remoteHost=").append(remoteHost).append(",");
        sb.append("inputParams=").append(inputParams).append(",");
        sb.append("error=").append(error).append(",");
        sb.append("timeConsuming=").append(timeConsuming).append(",");
        sb.append("bak=").append(bak);
        sb.append("]");

        return sb.toString();
    }

}


