package smart.mall.domain;

/**
 * 用户基本信息(smart_users) 实体类 
 * 
 * author: Frapo
 */ 
public class SmartUsersDO {
    /** 用户ID */;
    private Integer uid;

    /** 用户登陆名称 */;
    private String usn;

    /** 密码密文 */;
    private String pss;

    /** 注册姓名 */;
    private String name;

    /** 头衔 */;
    private String title;

    /** 权限 */;
    private String priv;

    /** 账户状态 */;
    private Integer state;

    /** 登陆 */;
    private String sess;

    /** 手机号 */;
    private String phone;


    /** setter: 用户ID */;
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /** getter: 用户ID */;
    public Integer getUid() {
        return uid;
    }

    /** setter: 用户登陆名称 */;
    public void setUsn(String usn) {
        this.usn = usn;
    }

    /** getter: 用户登陆名称 */;
    public String getUsn() {
        return usn;
    }

    /** setter: 密码密文 */;
    public void setPss(String pss) {
        this.pss = pss;
    }

    /** getter: 密码密文 */;
    public String getPss() {
        return pss;
    }

    /** setter: 注册姓名 */;
    public void setName(String name) {
        this.name = name;
    }

    /** getter: 注册姓名 */;
    public String getName() {
        return name;
    }

    /** setter: 头衔 */;
    public void setTitle(String title) {
        this.title = title;
    }

    /** getter: 头衔 */;
    public String getTitle() {
        return title;
    }

    /** setter: 权限 */;
    public void setPriv(String priv) {
        this.priv = priv;
    }

    /** getter: 权限 */;
    public String getPriv() {
        return priv;
    }

    /** setter: 账户状态 */;
    public void setState(Integer state) {
        this.state = state;
    }

    /** getter: 账户状态 */;
    public Integer getState() {
        return state;
    }

    /** setter: 登陆 */;
    public void setSess(String sess) {
        this.sess = sess;
    }

    /** getter: 登陆 */;
    public String getSess() {
        return sess;
    }

    /** setter: 手机号 */;
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /** getter: 手机号 */;
    public String getPhone() {
        return phone;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((uid == null) ? 0 : uid.hashCode());
        resultHashCode = prime * resultHashCode + ((usn == null) ? 0 : usn.hashCode());
        resultHashCode = prime * resultHashCode + ((pss == null) ? 0 : pss.hashCode());
        resultHashCode = prime * resultHashCode + ((name == null) ? 0 : name.hashCode());
        resultHashCode = prime * resultHashCode + ((title == null) ? 0 : title.hashCode());
        resultHashCode = prime * resultHashCode + ((priv == null) ? 0 : priv.hashCode());
        resultHashCode = prime * resultHashCode + ((state == null) ? 0 : state.hashCode());
        resultHashCode = prime * resultHashCode + ((sess == null) ? 0 : sess.hashCode());
        resultHashCode = prime * resultHashCode + ((phone == null) ? 0 : phone.hashCode());

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

        SmartUsersDO other = (SmartUsersDO) obj;

        if (uid == null) {
            if (other.uid != null) {
                return false;
            }
        } else if (!uid.equals(other.uid)) {
            return false; 
        }

        if (usn == null) {
            if (other.usn != null) {
                return false;
            }
        } else if (!usn.equals(other.usn)) {
            return false; 
        }

        if (pss == null) {
            if (other.pss != null) {
                return false;
            }
        } else if (!pss.equals(other.pss)) {
            return false; 
        }

        if (name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!name.equals(other.name)) {
            return false; 
        }

        if (title == null) {
            if (other.title != null) {
                return false;
            }
        } else if (!title.equals(other.title)) {
            return false; 
        }

        if (priv == null) {
            if (other.priv != null) {
                return false;
            }
        } else if (!priv.equals(other.priv)) {
            return false; 
        }

        if (state == null) {
            if (other.state != null) {
                return false;
            }
        } else if (!state.equals(other.state)) {
            return false; 
        }

        if (sess == null) {
            if (other.sess != null) {
                return false;
            }
        } else if (!sess.equals(other.sess)) {
            return false; 
        }

        if (phone == null) {
            if (other.phone != null) {
                return false;
            }
        } else if (!phone.equals(other.phone)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SmartUsersDO [");
        sb.append("uid=").append(uid).append(",");
        sb.append("usn=").append(usn).append(",");
        sb.append("pss=").append(pss).append(",");
        sb.append("name=").append(name).append(",");
        sb.append("title=").append(title).append(",");
        sb.append("priv=").append(priv).append(",");
        sb.append("state=").append(state).append(",");
        sb.append("sess=").append(sess).append(",");
        sb.append("phone=").append(phone);
        sb.append("]");

        return sb.toString();
    }

}


