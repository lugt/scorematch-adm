package smart.mall.domain;

/**
 * 用户地址(smart_delivery_addr) 实体类 
 * 
 * author: Frapo
 */ 
public class SmartDeliveryAddrDO {
    /** 地址ID */;
    private Integer addrid;

    /** 用户ID */;
    private Integer uid;

    /** 手机号 */;
    private Long mobile;

    /** 收货人 */;
    private String recver;

    /** 类型 */;
    private Integer type;

    /** 省份 */;
    private Integer province;

    /** 城市 */;
    private Integer city;

    /** 区县 */;
    private Integer district;

    /** 地址详细 */;
    private String addr;

    /** 备忘 */;
    private String memo;


    /** setter: 地址ID */;
    public void setAddrid(Integer addrid) {
        this.addrid = addrid;
    }

    /** getter: 地址ID */;
    public Integer getAddrid() {
        return addrid;
    }

    /** setter: 用户ID */;
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /** getter: 用户ID */;
    public Integer getUid() {
        return uid;
    }

    /** setter: 手机号 */;
    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }

    /** getter: 手机号 */;
    public Long getMobile() {
        return mobile;
    }

    /** setter: 收货人 */;
    public void setRecver(String recver) {
        this.recver = recver;
    }

    /** getter: 收货人 */;
    public String getRecver() {
        return recver;
    }

    /** setter: 类型 */;
    public void setType(Integer type) {
        this.type = type;
    }

    /** getter: 类型 */;
    public Integer getType() {
        return type;
    }

    /** setter: 省份 */;
    public void setProvince(Integer province) {
        this.province = province;
    }

    /** getter: 省份 */;
    public Integer getProvince() {
        return province;
    }

    /** setter: 城市 */;
    public void setCity(Integer city) {
        this.city = city;
    }

    /** getter: 城市 */;
    public Integer getCity() {
        return city;
    }

    /** setter: 区县 */;
    public void setDistrict(Integer district) {
        this.district = district;
    }

    /** getter: 区县 */;
    public Integer getDistrict() {
        return district;
    }

    /** setter: 地址详细 */;
    public void setAddr(String addr) {
        this.addr = addr;
    }

    /** getter: 地址详细 */;
    public String getAddr() {
        return addr;
    }

    /** setter: 备忘 */;
    public void setMemo(String memo) {
        this.memo = memo;
    }

    /** getter: 备忘 */;
    public String getMemo() {
        return memo;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((addrid == null) ? 0 : addrid.hashCode());
        resultHashCode = prime * resultHashCode + ((uid == null) ? 0 : uid.hashCode());
        resultHashCode = prime * resultHashCode + ((mobile == null) ? 0 : mobile.hashCode());
        resultHashCode = prime * resultHashCode + ((recver == null) ? 0 : recver.hashCode());
        resultHashCode = prime * resultHashCode + ((type == null) ? 0 : type.hashCode());
        resultHashCode = prime * resultHashCode + ((province == null) ? 0 : province.hashCode());
        resultHashCode = prime * resultHashCode + ((city == null) ? 0 : city.hashCode());
        resultHashCode = prime * resultHashCode + ((district == null) ? 0 : district.hashCode());
        resultHashCode = prime * resultHashCode + ((addr == null) ? 0 : addr.hashCode());
        resultHashCode = prime * resultHashCode + ((memo == null) ? 0 : memo.hashCode());

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

        SmartDeliveryAddrDO other = (SmartDeliveryAddrDO) obj;

        if (addrid == null) {
            if (other.addrid != null) {
                return false;
            }
        } else if (!addrid.equals(other.addrid)) {
            return false; 
        }

        if (uid == null) {
            if (other.uid != null) {
                return false;
            }
        } else if (!uid.equals(other.uid)) {
            return false; 
        }

        if (mobile == null) {
            if (other.mobile != null) {
                return false;
            }
        } else if (!mobile.equals(other.mobile)) {
            return false; 
        }

        if (recver == null) {
            if (other.recver != null) {
                return false;
            }
        } else if (!recver.equals(other.recver)) {
            return false; 
        }

        if (type == null) {
            if (other.type != null) {
                return false;
            }
        } else if (!type.equals(other.type)) {
            return false; 
        }

        if (province == null) {
            if (other.province != null) {
                return false;
            }
        } else if (!province.equals(other.province)) {
            return false; 
        }

        if (city == null) {
            if (other.city != null) {
                return false;
            }
        } else if (!city.equals(other.city)) {
            return false; 
        }

        if (district == null) {
            if (other.district != null) {
                return false;
            }
        } else if (!district.equals(other.district)) {
            return false; 
        }

        if (addr == null) {
            if (other.addr != null) {
                return false;
            }
        } else if (!addr.equals(other.addr)) {
            return false; 
        }

        if (memo == null) {
            if (other.memo != null) {
                return false;
            }
        } else if (!memo.equals(other.memo)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SmartDeliveryAddrDO [");
        sb.append("addrid=").append(addrid).append(",");
        sb.append("uid=").append(uid).append(",");
        sb.append("mobile=").append(mobile).append(",");
        sb.append("recver=").append(recver).append(",");
        sb.append("type=").append(type).append(",");
        sb.append("province=").append(province).append(",");
        sb.append("city=").append(city).append(",");
        sb.append("district=").append(district).append(",");
        sb.append("addr=").append(addr).append(",");
        sb.append("memo=").append(memo);
        sb.append("]");

        return sb.toString();
    }

}


