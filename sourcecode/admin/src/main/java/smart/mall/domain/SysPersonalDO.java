package smart.mall.domain;

import java.util.Date;

/**
 * 个人信息(sys_personal) 实体类 
 * 
 * author: wutianbin
 */ 
public class SysPersonalDO {
    /** 用户工号 */;
    private String userNo;

    /** 头像URL */;
    private String headImg;

    /** 出生日期 */;
    private Date birthday;

    /** 备用电话 */;
    private String phoneBak;

    /** 邮箱 */;
    private String email;

    /** 特长 */;
    private String specialty;

    /** 微信号 */;
    private String wechat;

    /** 是否公开微信号 1公开0隐藏 */;
    private Integer openWx;

    /** 深圳住址 */;
    private String address;

    /** 是否公开深圳住址 1公开0隐藏 */;
    private Integer openAddr;

    /** 车牌号 */;
    private String carId;

    /** 是否公开车牌 1公开0隐藏 */;
    private Integer openCarId;

    /** 父母住址 */;
    private String parentAddr;

    /** 是否父母地址 1公开0隐藏 */;
    private Integer openParAddr;

    /** 生活照地址1 */;
    private String lifePhoto1;

    /** 生活照地址2 */;
    private String lifePhoto2;

    /** 生活照地址3 */;
    private String lifePhoto3;

    /** 创建日期 */;
    private Date createdOn;

    /** 创建人工号 */;
    private String createdBy;

    /** 修改日期 */;
    private Date modifiedOn;

    /** 修改人工号 */;
    private String modifiedBy;


    /** setter: 用户工号 */;
    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    /** getter: 用户工号 */;
    public String getUserNo() {
        return userNo;
    }

    /** setter: 头像URL */;
    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    /** getter: 头像URL */;
    public String getHeadImg() {
        return headImg;
    }

    /** setter: 出生日期 */;
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /** getter: 出生日期 */;
    public Date getBirthday() {
        return birthday;
    }

    /** setter: 备用电话 */;
    public void setPhoneBak(String phoneBak) {
        this.phoneBak = phoneBak;
    }

    /** getter: 备用电话 */;
    public String getPhoneBak() {
        return phoneBak;
    }

    /** setter: 邮箱 */;
    public void setEmail(String email) {
        this.email = email;
    }

    /** getter: 邮箱 */;
    public String getEmail() {
        return email;
    }

    /** setter: 特长 */;
    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    /** getter: 特长 */;
    public String getSpecialty() {
        return specialty;
    }

    /** setter: 微信号 */;
    public void setWechat(String wechat) {
        this.wechat = wechat;
    }

    /** getter: 微信号 */;
    public String getWechat() {
        return wechat;
    }

    /** setter: 是否公开微信号 1公开0隐藏 */;
    public void setOpenWx(Integer openWx) {
        this.openWx = openWx;
    }

    /** getter: 是否公开微信号 1公开0隐藏 */;
    public Integer getOpenWx() {
        return openWx;
    }

    /** setter: 深圳住址 */;
    public void setAddress(String address) {
        this.address = address;
    }

    /** getter: 深圳住址 */;
    public String getAddress() {
        return address;
    }

    /** setter: 是否公开深圳住址 1公开0隐藏 */;
    public void setOpenAddr(Integer openAddr) {
        this.openAddr = openAddr;
    }

    /** getter: 是否公开深圳住址 1公开0隐藏 */;
    public Integer getOpenAddr() {
        return openAddr;
    }

    /** setter: 车牌号 */;
    public void setCarId(String carId) {
        this.carId = carId;
    }

    /** getter: 车牌号 */;
    public String getCarId() {
        return carId;
    }

    /** setter: 是否公开车牌 1公开0隐藏 */;
    public void setOpenCarId(Integer openCarId) {
        this.openCarId = openCarId;
    }

    /** getter: 是否公开车牌 1公开0隐藏 */;
    public Integer getOpenCarId() {
        return openCarId;
    }

    /** setter: 父母住址 */;
    public void setParentAddr(String parentAddr) {
        this.parentAddr = parentAddr;
    }

    /** getter: 父母住址 */;
    public String getParentAddr() {
        return parentAddr;
    }

    /** setter: 是否父母地址 1公开0隐藏 */;
    public void setOpenParAddr(Integer openParAddr) {
        this.openParAddr = openParAddr;
    }

    /** getter: 是否父母地址 1公开0隐藏 */;
    public Integer getOpenParAddr() {
        return openParAddr;
    }

    /** setter: 生活照地址1 */;
    public void setLifePhoto1(String lifePhoto1) {
        this.lifePhoto1 = lifePhoto1;
    }

    /** getter: 生活照地址1 */;
    public String getLifePhoto1() {
        return lifePhoto1;
    }

    /** setter: 生活照地址2 */;
    public void setLifePhoto2(String lifePhoto2) {
        this.lifePhoto2 = lifePhoto2;
    }

    /** getter: 生活照地址2 */;
    public String getLifePhoto2() {
        return lifePhoto2;
    }

    /** setter: 生活照地址3 */;
    public void setLifePhoto3(String lifePhoto3) {
        this.lifePhoto3 = lifePhoto3;
    }

    /** getter: 生活照地址3 */;
    public String getLifePhoto3() {
        return lifePhoto3;
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

        resultHashCode = prime * resultHashCode + ((userNo == null) ? 0 : userNo.hashCode());
        resultHashCode = prime * resultHashCode + ((headImg == null) ? 0 : headImg.hashCode());
        resultHashCode = prime * resultHashCode + ((birthday == null) ? 0 : birthday.hashCode());
        resultHashCode = prime * resultHashCode + ((phoneBak == null) ? 0 : phoneBak.hashCode());
        resultHashCode = prime * resultHashCode + ((email == null) ? 0 : email.hashCode());
        resultHashCode = prime * resultHashCode + ((specialty == null) ? 0 : specialty.hashCode());
        resultHashCode = prime * resultHashCode + ((wechat == null) ? 0 : wechat.hashCode());
        resultHashCode = prime * resultHashCode + ((openWx == null) ? 0 : openWx.hashCode());
        resultHashCode = prime * resultHashCode + ((address == null) ? 0 : address.hashCode());
        resultHashCode = prime * resultHashCode + ((openAddr == null) ? 0 : openAddr.hashCode());
        resultHashCode = prime * resultHashCode + ((carId == null) ? 0 : carId.hashCode());
        resultHashCode = prime * resultHashCode + ((openCarId == null) ? 0 : openCarId.hashCode());
        resultHashCode = prime * resultHashCode + ((parentAddr == null) ? 0 : parentAddr.hashCode());
        resultHashCode = prime * resultHashCode + ((openParAddr == null) ? 0 : openParAddr.hashCode());
        resultHashCode = prime * resultHashCode + ((lifePhoto1 == null) ? 0 : lifePhoto1.hashCode());
        resultHashCode = prime * resultHashCode + ((lifePhoto2 == null) ? 0 : lifePhoto2.hashCode());
        resultHashCode = prime * resultHashCode + ((lifePhoto3 == null) ? 0 : lifePhoto3.hashCode());
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

        SysPersonalDO other = (SysPersonalDO) obj;

        if (userNo == null) {
            if (other.userNo != null) {
                return false;
            }
        } else if (!userNo.equals(other.userNo)) {
            return false; 
        }

        if (headImg == null) {
            if (other.headImg != null) {
                return false;
            }
        } else if (!headImg.equals(other.headImg)) {
            return false; 
        }

        if (birthday == null) {
            if (other.birthday != null) {
                return false;
            }
        } else if (!birthday.equals(other.birthday)) {
            return false; 
        }

        if (phoneBak == null) {
            if (other.phoneBak != null) {
                return false;
            }
        } else if (!phoneBak.equals(other.phoneBak)) {
            return false; 
        }

        if (email == null) {
            if (other.email != null) {
                return false;
            }
        } else if (!email.equals(other.email)) {
            return false; 
        }

        if (specialty == null) {
            if (other.specialty != null) {
                return false;
            }
        } else if (!specialty.equals(other.specialty)) {
            return false; 
        }

        if (wechat == null) {
            if (other.wechat != null) {
                return false;
            }
        } else if (!wechat.equals(other.wechat)) {
            return false; 
        }

        if (openWx == null) {
            if (other.openWx != null) {
                return false;
            }
        } else if (!openWx.equals(other.openWx)) {
            return false; 
        }

        if (address == null) {
            if (other.address != null) {
                return false;
            }
        } else if (!address.equals(other.address)) {
            return false; 
        }

        if (openAddr == null) {
            if (other.openAddr != null) {
                return false;
            }
        } else if (!openAddr.equals(other.openAddr)) {
            return false; 
        }

        if (carId == null) {
            if (other.carId != null) {
                return false;
            }
        } else if (!carId.equals(other.carId)) {
            return false; 
        }

        if (openCarId == null) {
            if (other.openCarId != null) {
                return false;
            }
        } else if (!openCarId.equals(other.openCarId)) {
            return false; 
        }

        if (parentAddr == null) {
            if (other.parentAddr != null) {
                return false;
            }
        } else if (!parentAddr.equals(other.parentAddr)) {
            return false; 
        }

        if (openParAddr == null) {
            if (other.openParAddr != null) {
                return false;
            }
        } else if (!openParAddr.equals(other.openParAddr)) {
            return false; 
        }

        if (lifePhoto1 == null) {
            if (other.lifePhoto1 != null) {
                return false;
            }
        } else if (!lifePhoto1.equals(other.lifePhoto1)) {
            return false; 
        }

        if (lifePhoto2 == null) {
            if (other.lifePhoto2 != null) {
                return false;
            }
        } else if (!lifePhoto2.equals(other.lifePhoto2)) {
            return false; 
        }

        if (lifePhoto3 == null) {
            if (other.lifePhoto3 != null) {
                return false;
            }
        } else if (!lifePhoto3.equals(other.lifePhoto3)) {
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

        sb.append("SysPersonalDO [");
        sb.append("userNo=").append(userNo).append(",");
        sb.append("headImg=").append(headImg).append(",");
        sb.append("birthday=").append(birthday).append(",");
        sb.append("phoneBak=").append(phoneBak).append(",");
        sb.append("email=").append(email).append(",");
        sb.append("specialty=").append(specialty).append(",");
        sb.append("wechat=").append(wechat).append(",");
        sb.append("openWx=").append(openWx).append(",");
        sb.append("address=").append(address).append(",");
        sb.append("openAddr=").append(openAddr).append(",");
        sb.append("carId=").append(carId).append(",");
        sb.append("openCarId=").append(openCarId).append(",");
        sb.append("parentAddr=").append(parentAddr).append(",");
        sb.append("openParAddr=").append(openParAddr).append(",");
        sb.append("lifePhoto1=").append(lifePhoto1).append(",");
        sb.append("lifePhoto2=").append(lifePhoto2).append(",");
        sb.append("lifePhoto3=").append(lifePhoto3).append(",");
        sb.append("createdOn=").append(createdOn).append(",");
        sb.append("createdBy=").append(createdBy).append(",");
        sb.append("modifiedOn=").append(modifiedOn).append(",");
        sb.append("modifiedBy=").append(modifiedBy);
        sb.append("]");

        return sb.toString();
    }

}


