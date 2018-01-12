package smart.mall.domain;

/**
 * 用户地址综合(smart_user_addrs) 实体类 
 * 
 * author: Frapo
 */ 
public class SmartUserAddrsDO {
    /** 用户ID */;
    private Integer uid;

    /** 地址1 */;
    private Integer addr1;

    /** 地址2 */;
    private Integer addr2;

    /** 地址3 */;
    private Integer addr3;

    /** 地址4 */;
    private Integer addr4;

    /** 地址5 */;
    private Integer addr5;

    /** 地址6 */;
    private Integer addr6;

    /** 地址7 */;
    private Integer addr7;

    /** 地址8 */;
    private Integer addr8;

    /** 地址9 */;
    private Integer addr9;

    /** 默认地址 */;
    private Integer defaultaddr;


    /** setter: 用户ID */;
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /** getter: 用户ID */;
    public Integer getUid() {
        return uid;
    }

    /** setter: 地址1 */;
    public void setAddr1(Integer addr1) {
        this.addr1 = addr1;
    }

    /** getter: 地址1 */;
    public Integer getAddr1() {
        return addr1;
    }

    /** setter: 地址2 */;
    public void setAddr2(Integer addr2) {
        this.addr2 = addr2;
    }

    /** getter: 地址2 */;
    public Integer getAddr2() {
        return addr2;
    }

    /** setter: 地址3 */;
    public void setAddr3(Integer addr3) {
        this.addr3 = addr3;
    }

    /** getter: 地址3 */;
    public Integer getAddr3() {
        return addr3;
    }

    /** setter: 地址4 */;
    public void setAddr4(Integer addr4) {
        this.addr4 = addr4;
    }

    /** getter: 地址4 */;
    public Integer getAddr4() {
        return addr4;
    }

    /** setter: 地址5 */;
    public void setAddr5(Integer addr5) {
        this.addr5 = addr5;
    }

    /** getter: 地址5 */;
    public Integer getAddr5() {
        return addr5;
    }

    /** setter: 地址6 */;
    public void setAddr6(Integer addr6) {
        this.addr6 = addr6;
    }

    /** getter: 地址6 */;
    public Integer getAddr6() {
        return addr6;
    }

    /** setter: 地址7 */;
    public void setAddr7(Integer addr7) {
        this.addr7 = addr7;
    }

    /** getter: 地址7 */;
    public Integer getAddr7() {
        return addr7;
    }

    /** setter: 地址8 */;
    public void setAddr8(Integer addr8) {
        this.addr8 = addr8;
    }

    /** getter: 地址8 */;
    public Integer getAddr8() {
        return addr8;
    }

    /** setter: 地址9 */;
    public void setAddr9(Integer addr9) {
        this.addr9 = addr9;
    }

    /** getter: 地址9 */;
    public Integer getAddr9() {
        return addr9;
    }

    /** setter: 默认地址 */;
    public void setDefaultaddr(Integer defaultaddr) {
        this.defaultaddr = defaultaddr;
    }

    /** getter: 默认地址 */;
    public Integer getDefaultaddr() {
        return defaultaddr;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((uid == null) ? 0 : uid.hashCode());
        resultHashCode = prime * resultHashCode + ((addr1 == null) ? 0 : addr1.hashCode());
        resultHashCode = prime * resultHashCode + ((addr2 == null) ? 0 : addr2.hashCode());
        resultHashCode = prime * resultHashCode + ((addr3 == null) ? 0 : addr3.hashCode());
        resultHashCode = prime * resultHashCode + ((addr4 == null) ? 0 : addr4.hashCode());
        resultHashCode = prime * resultHashCode + ((addr5 == null) ? 0 : addr5.hashCode());
        resultHashCode = prime * resultHashCode + ((addr6 == null) ? 0 : addr6.hashCode());
        resultHashCode = prime * resultHashCode + ((addr7 == null) ? 0 : addr7.hashCode());
        resultHashCode = prime * resultHashCode + ((addr8 == null) ? 0 : addr8.hashCode());
        resultHashCode = prime * resultHashCode + ((addr9 == null) ? 0 : addr9.hashCode());
        resultHashCode = prime * resultHashCode + ((defaultaddr == null) ? 0 : defaultaddr.hashCode());

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

        SmartUserAddrsDO other = (SmartUserAddrsDO) obj;

        if (uid == null) {
            if (other.uid != null) {
                return false;
            }
        } else if (!uid.equals(other.uid)) {
            return false; 
        }

        if (addr1 == null) {
            if (other.addr1 != null) {
                return false;
            }
        } else if (!addr1.equals(other.addr1)) {
            return false; 
        }

        if (addr2 == null) {
            if (other.addr2 != null) {
                return false;
            }
        } else if (!addr2.equals(other.addr2)) {
            return false; 
        }

        if (addr3 == null) {
            if (other.addr3 != null) {
                return false;
            }
        } else if (!addr3.equals(other.addr3)) {
            return false; 
        }

        if (addr4 == null) {
            if (other.addr4 != null) {
                return false;
            }
        } else if (!addr4.equals(other.addr4)) {
            return false; 
        }

        if (addr5 == null) {
            if (other.addr5 != null) {
                return false;
            }
        } else if (!addr5.equals(other.addr5)) {
            return false; 
        }

        if (addr6 == null) {
            if (other.addr6 != null) {
                return false;
            }
        } else if (!addr6.equals(other.addr6)) {
            return false; 
        }

        if (addr7 == null) {
            if (other.addr7 != null) {
                return false;
            }
        } else if (!addr7.equals(other.addr7)) {
            return false; 
        }

        if (addr8 == null) {
            if (other.addr8 != null) {
                return false;
            }
        } else if (!addr8.equals(other.addr8)) {
            return false; 
        }

        if (addr9 == null) {
            if (other.addr9 != null) {
                return false;
            }
        } else if (!addr9.equals(other.addr9)) {
            return false; 
        }

        if (defaultaddr == null) {
            if (other.defaultaddr != null) {
                return false;
            }
        } else if (!defaultaddr.equals(other.defaultaddr)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SmartUserAddrsDO [");
        sb.append("uid=").append(uid).append(",");
        sb.append("addr1=").append(addr1).append(",");
        sb.append("addr2=").append(addr2).append(",");
        sb.append("addr3=").append(addr3).append(",");
        sb.append("addr4=").append(addr4).append(",");
        sb.append("addr5=").append(addr5).append(",");
        sb.append("addr6=").append(addr6).append(",");
        sb.append("addr7=").append(addr7).append(",");
        sb.append("addr8=").append(addr8).append(",");
        sb.append("addr9=").append(addr9).append(",");
        sb.append("defaultaddr=").append(defaultaddr);
        sb.append("]");

        return sb.toString();
    }

}


