package smart.mall.domain;

/**
 * (msg_cron) 实体类 
 * 
 * author: 李丹
 */ 
public class MsgCronDO {
    /** id */;
    private Integer id;

    /** cron */;
    private String cron;


    /** setter: id */;
    public void setId(Integer id) {
        this.id = id;
    }

    /** getter: id */;
    public Integer getId() {
        return id;
    }

    /** setter: cron */;
    public void setCron(String cron) {
        this.cron = cron;
    }

    /** getter: cron */;
    public String getCron() {
        return cron;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((id == null) ? 0 : id.hashCode());
        resultHashCode = prime * resultHashCode + ((cron == null) ? 0 : cron.hashCode());

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

        MsgCronDO other = (MsgCronDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (cron == null) {
            if (other.cron != null) {
                return false;
            }
        } else if (!cron.equals(other.cron)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("MsgCronDO [");
        sb.append("id=").append(id).append(",");
        sb.append("cron=").append(cron);
        sb.append("]");

        return sb.toString();
    }

}


