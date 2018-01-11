package smart.mall.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * 订单表(smart_order) 实体类 
 * 
 * author: Frapo
 */ 
public class SmartOrderDO {
    /** id */;
    private Integer id;

    /** 用户ID */;
    private Integer userId;

    /** 支付ID */;
    private Integer paymentId;

    /** 配送ID */;
    private Integer deliveryId;

    /** 商品代码、数量、型号组合 */;
    private String merchandise;

    /** 订单状态1:生成订单,2：确认订单,3取消订单,4 物流中订单,5完成订单  6 作废订单 */;
    private Integer status;

    /** 支付状态 0：未支付，1：已支付，2：退款  3:   部分退款 */;
    private Integer payStatus;

    /** 配送状态0：未发送，1：配货 2:  发货中  3 物流中 4 物流问题  5 已签收  6 签收异常   7 缺货  8 延迟发货 */;
    private Integer distributionStatus;

    /** 应付商品总金额 */;
    private Double dueAmount;

    /** 实付商品总金额 */;
    private Double paidAmount;

    /** 税金 */;
    private Double taxes;

    /** 总运费金额 */;
    private Double payableFreight;

    /** 实付运费 */;
    private Double realFreight;

    /** 支付手续费 */;
    private Double payFee;

    /** 促销优惠金额总计 */;
    private Double promotions;

    /** 订单折扣或涨价比例 */;
    private Double discount;

    /** 订单总金额 */;
    private Double orderAmount;

    /** 付款时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date payTime;

    /** 发货时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date sendTime;

    /** 下单时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 订单完成时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date completionTime;

    /** 用户收货时间 */;
    private String acceptTime;

    /** 发票：0不索要 1普通  2 电子发票 3增值税 */;
    private Integer invoice;

    /** 发票抬头 */;
    private String invoiceTitle;

    /** 用户附言 */;
    private String postscript;

    /** 管理员备注 */;
    private String note;

    /** 使用的优惠券等 */;
    private String prop;

    /** 增加的经验 */;
    private Integer exp;

    /** 增加的积分 */;
    private Integer point;

    /** 0普通订单,1团购订单,2限时抢购 */;
    private Integer type;


    /** setter: id */;
    public void setId(Integer id) {
        this.id = id;
    }

    /** getter: id */;
    public Integer getId() {
        return id;
    }

    /** setter: 用户ID */;
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /** getter: 用户ID */;
    public Integer getUserId() {
        return userId;
    }

    /** setter: 支付ID */;
    public void setPaymentId(Integer paymentId) {
        this.paymentId = paymentId;
    }

    /** getter: 支付ID */;
    public Integer getPaymentId() {
        return paymentId;
    }

    /** setter: 配送ID */;
    public void setDeliveryId(Integer deliveryId) {
        this.deliveryId = deliveryId;
    }

    /** getter: 配送ID */;
    public Integer getDeliveryId() {
        return deliveryId;
    }

    /** setter: 商品代码、数量、型号组合 */;
    public void setMerchandise(String merchandise) {
        this.merchandise = merchandise;
    }

    /** getter: 商品代码、数量、型号组合 */;
    public String getMerchandise() {
        return merchandise;
    }

    /** setter: 订单状态1:生成订单,2：确认订单,3取消订单,4 物流中订单,5完成订单  6 作废订单 */;
    public void setStatus(Integer status) {
        this.status = status;
    }

    /** getter: 订单状态1:生成订单,2：确认订单,3取消订单,4 物流中订单,5完成订单  6 作废订单 */;
    public Integer getStatus() {
        return status;
    }

    /** setter: 支付状态 0：未支付，1：已支付，2：退款  3:   部分退款 */;
    public void setPayStatus(Integer payStatus) {
        this.payStatus = payStatus;
    }

    /** getter: 支付状态 0：未支付，1：已支付，2：退款  3:   部分退款 */;
    public Integer getPayStatus() {
        return payStatus;
    }

    /** setter: 配送状态0：未发送，1：配货 2:  发货中  3 物流中 4 物流问题  5 已签收  6 签收异常   7 缺货  8 延迟发货 */;
    public void setDistributionStatus(Integer distributionStatus) {
        this.distributionStatus = distributionStatus;
    }

    /** getter: 配送状态0：未发送，1：配货 2:  发货中  3 物流中 4 物流问题  5 已签收  6 签收异常   7 缺货  8 延迟发货 */;
    public Integer getDistributionStatus() {
        return distributionStatus;
    }

    /** setter: 应付商品总金额 */;
    public void setDueAmount(Double dueAmount) {
        this.dueAmount = dueAmount;
    }

    /** getter: 应付商品总金额 */;
    public Double getDueAmount() {
        return dueAmount;
    }

    /** setter: 实付商品总金额 */;
    public void setPaidAmount(Double paidAmount) {
        this.paidAmount = paidAmount;
    }

    /** getter: 实付商品总金额 */;
    public Double getPaidAmount() {
        return paidAmount;
    }

    /** setter: 税金 */;
    public void setTaxes(Double taxes) {
        this.taxes = taxes;
    }

    /** getter: 税金 */;
    public Double getTaxes() {
        return taxes;
    }

    /** setter: 总运费金额 */;
    public void setPayableFreight(Double payableFreight) {
        this.payableFreight = payableFreight;
    }

    /** getter: 总运费金额 */;
    public Double getPayableFreight() {
        return payableFreight;
    }

    /** setter: 实付运费 */;
    public void setRealFreight(Double realFreight) {
        this.realFreight = realFreight;
    }

    /** getter: 实付运费 */;
    public Double getRealFreight() {
        return realFreight;
    }

    /** setter: 支付手续费 */;
    public void setPayFee(Double payFee) {
        this.payFee = payFee;
    }

    /** getter: 支付手续费 */;
    public Double getPayFee() {
        return payFee;
    }

    /** setter: 促销优惠金额总计 */;
    public void setPromotions(Double promotions) {
        this.promotions = promotions;
    }

    /** getter: 促销优惠金额总计 */;
    public Double getPromotions() {
        return promotions;
    }

    /** setter: 订单折扣或涨价比例 */;
    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    /** getter: 订单折扣或涨价比例 */;
    public Double getDiscount() {
        return discount;
    }

    /** setter: 订单总金额 */;
    public void setOrderAmount(Double orderAmount) {
        this.orderAmount = orderAmount;
    }

    /** getter: 订单总金额 */;
    public Double getOrderAmount() {
        return orderAmount;
    }

    /** setter: 付款时间 */;
    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    /** getter: 付款时间 */;
    public Date getPayTime() {
        return payTime;
    }

    /** setter: 发货时间 */;
    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    /** getter: 发货时间 */;
    public Date getSendTime() {
        return sendTime;
    }

    /** setter: 下单时间 */;
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /** getter: 下单时间 */;
    public Date getCreateTime() {
        return createTime;
    }

    /** setter: 订单完成时间 */;
    public void setCompletionTime(Date completionTime) {
        this.completionTime = completionTime;
    }

    /** getter: 订单完成时间 */;
    public Date getCompletionTime() {
        return completionTime;
    }

    /** setter: 用户收货时间 */;
    public void setAcceptTime(String acceptTime) {
        this.acceptTime = acceptTime;
    }

    /** getter: 用户收货时间 */;
    public String getAcceptTime() {
        return acceptTime;
    }

    /** setter: 发票：0不索要 1普通  2 电子发票 3增值税 */;
    public void setInvoice(Integer invoice) {
        this.invoice = invoice;
    }

    /** getter: 发票：0不索要 1普通  2 电子发票 3增值税 */;
    public Integer getInvoice() {
        return invoice;
    }

    /** setter: 发票抬头 */;
    public void setInvoiceTitle(String invoiceTitle) {
        this.invoiceTitle = invoiceTitle;
    }

    /** getter: 发票抬头 */;
    public String getInvoiceTitle() {
        return invoiceTitle;
    }

    /** setter: 用户附言 */;
    public void setPostscript(String postscript) {
        this.postscript = postscript;
    }

    /** getter: 用户附言 */;
    public String getPostscript() {
        return postscript;
    }

    /** setter: 管理员备注 */;
    public void setNote(String note) {
        this.note = note;
    }

    /** getter: 管理员备注 */;
    public String getNote() {
        return note;
    }

    /** setter: 使用的优惠券等 */;
    public void setProp(String prop) {
        this.prop = prop;
    }

    /** getter: 使用的优惠券等 */;
    public String getProp() {
        return prop;
    }

    /** setter: 增加的经验 */;
    public void setExp(Integer exp) {
        this.exp = exp;
    }

    /** getter: 增加的经验 */;
    public Integer getExp() {
        return exp;
    }

    /** setter: 增加的积分 */;
    public void setPoint(Integer point) {
        this.point = point;
    }

    /** getter: 增加的积分 */;
    public Integer getPoint() {
        return point;
    }

    /** setter: 0普通订单,1团购订单,2限时抢购 */;
    public void setType(Integer type) {
        this.type = type;
    }

    /** getter: 0普通订单,1团购订单,2限时抢购 */;
    public Integer getType() {
        return type;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((id == null) ? 0 : id.hashCode());
        resultHashCode = prime * resultHashCode + ((userId == null) ? 0 : userId.hashCode());
        resultHashCode = prime * resultHashCode + ((paymentId == null) ? 0 : paymentId.hashCode());
        resultHashCode = prime * resultHashCode + ((deliveryId == null) ? 0 : deliveryId.hashCode());
        resultHashCode = prime * resultHashCode + ((merchandise == null) ? 0 : merchandise.hashCode());
        resultHashCode = prime * resultHashCode + ((status == null) ? 0 : status.hashCode());
        resultHashCode = prime * resultHashCode + ((payStatus == null) ? 0 : payStatus.hashCode());
        resultHashCode = prime * resultHashCode + ((distributionStatus == null) ? 0 : distributionStatus.hashCode());
        resultHashCode = prime * resultHashCode + ((dueAmount == null) ? 0 : dueAmount.hashCode());
        resultHashCode = prime * resultHashCode + ((paidAmount == null) ? 0 : paidAmount.hashCode());
        resultHashCode = prime * resultHashCode + ((taxes == null) ? 0 : taxes.hashCode());
        resultHashCode = prime * resultHashCode + ((payableFreight == null) ? 0 : payableFreight.hashCode());
        resultHashCode = prime * resultHashCode + ((realFreight == null) ? 0 : realFreight.hashCode());
        resultHashCode = prime * resultHashCode + ((payFee == null) ? 0 : payFee.hashCode());
        resultHashCode = prime * resultHashCode + ((promotions == null) ? 0 : promotions.hashCode());
        resultHashCode = prime * resultHashCode + ((discount == null) ? 0 : discount.hashCode());
        resultHashCode = prime * resultHashCode + ((orderAmount == null) ? 0 : orderAmount.hashCode());
        resultHashCode = prime * resultHashCode + ((payTime == null) ? 0 : payTime.hashCode());
        resultHashCode = prime * resultHashCode + ((sendTime == null) ? 0 : sendTime.hashCode());
        resultHashCode = prime * resultHashCode + ((createTime == null) ? 0 : createTime.hashCode());
        resultHashCode = prime * resultHashCode + ((completionTime == null) ? 0 : completionTime.hashCode());
        resultHashCode = prime * resultHashCode + ((acceptTime == null) ? 0 : acceptTime.hashCode());
        resultHashCode = prime * resultHashCode + ((invoice == null) ? 0 : invoice.hashCode());
        resultHashCode = prime * resultHashCode + ((invoiceTitle == null) ? 0 : invoiceTitle.hashCode());
        resultHashCode = prime * resultHashCode + ((postscript == null) ? 0 : postscript.hashCode());
        resultHashCode = prime * resultHashCode + ((note == null) ? 0 : note.hashCode());
        resultHashCode = prime * resultHashCode + ((prop == null) ? 0 : prop.hashCode());
        resultHashCode = prime * resultHashCode + ((exp == null) ? 0 : exp.hashCode());
        resultHashCode = prime * resultHashCode + ((point == null) ? 0 : point.hashCode());
        resultHashCode = prime * resultHashCode + ((type == null) ? 0 : type.hashCode());

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

        SmartOrderDO other = (SmartOrderDO) obj;

        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false; 
        }

        if (userId == null) {
            if (other.userId != null) {
                return false;
            }
        } else if (!userId.equals(other.userId)) {
            return false; 
        }

        if (paymentId == null) {
            if (other.paymentId != null) {
                return false;
            }
        } else if (!paymentId.equals(other.paymentId)) {
            return false; 
        }

        if (deliveryId == null) {
            if (other.deliveryId != null) {
                return false;
            }
        } else if (!deliveryId.equals(other.deliveryId)) {
            return false; 
        }

        if (merchandise == null) {
            if (other.merchandise != null) {
                return false;
            }
        } else if (!merchandise.equals(other.merchandise)) {
            return false; 
        }

        if (status == null) {
            if (other.status != null) {
                return false;
            }
        } else if (!status.equals(other.status)) {
            return false; 
        }

        if (payStatus == null) {
            if (other.payStatus != null) {
                return false;
            }
        } else if (!payStatus.equals(other.payStatus)) {
            return false; 
        }

        if (distributionStatus == null) {
            if (other.distributionStatus != null) {
                return false;
            }
        } else if (!distributionStatus.equals(other.distributionStatus)) {
            return false; 
        }

        if (dueAmount == null) {
            if (other.dueAmount != null) {
                return false;
            }
        } else if (!dueAmount.equals(other.dueAmount)) {
            return false; 
        }

        if (paidAmount == null) {
            if (other.paidAmount != null) {
                return false;
            }
        } else if (!paidAmount.equals(other.paidAmount)) {
            return false; 
        }

        if (taxes == null) {
            if (other.taxes != null) {
                return false;
            }
        } else if (!taxes.equals(other.taxes)) {
            return false; 
        }

        if (payableFreight == null) {
            if (other.payableFreight != null) {
                return false;
            }
        } else if (!payableFreight.equals(other.payableFreight)) {
            return false; 
        }

        if (realFreight == null) {
            if (other.realFreight != null) {
                return false;
            }
        } else if (!realFreight.equals(other.realFreight)) {
            return false; 
        }

        if (payFee == null) {
            if (other.payFee != null) {
                return false;
            }
        } else if (!payFee.equals(other.payFee)) {
            return false; 
        }

        if (promotions == null) {
            if (other.promotions != null) {
                return false;
            }
        } else if (!promotions.equals(other.promotions)) {
            return false; 
        }

        if (discount == null) {
            if (other.discount != null) {
                return false;
            }
        } else if (!discount.equals(other.discount)) {
            return false; 
        }

        if (orderAmount == null) {
            if (other.orderAmount != null) {
                return false;
            }
        } else if (!orderAmount.equals(other.orderAmount)) {
            return false; 
        }

        if (payTime == null) {
            if (other.payTime != null) {
                return false;
            }
        } else if (!payTime.equals(other.payTime)) {
            return false; 
        }

        if (sendTime == null) {
            if (other.sendTime != null) {
                return false;
            }
        } else if (!sendTime.equals(other.sendTime)) {
            return false; 
        }

        if (createTime == null) {
            if (other.createTime != null) {
                return false;
            }
        } else if (!createTime.equals(other.createTime)) {
            return false; 
        }

        if (completionTime == null) {
            if (other.completionTime != null) {
                return false;
            }
        } else if (!completionTime.equals(other.completionTime)) {
            return false; 
        }

        if (acceptTime == null) {
            if (other.acceptTime != null) {
                return false;
            }
        } else if (!acceptTime.equals(other.acceptTime)) {
            return false; 
        }

        if (invoice == null) {
            if (other.invoice != null) {
                return false;
            }
        } else if (!invoice.equals(other.invoice)) {
            return false; 
        }

        if (invoiceTitle == null) {
            if (other.invoiceTitle != null) {
                return false;
            }
        } else if (!invoiceTitle.equals(other.invoiceTitle)) {
            return false; 
        }

        if (postscript == null) {
            if (other.postscript != null) {
                return false;
            }
        } else if (!postscript.equals(other.postscript)) {
            return false; 
        }

        if (note == null) {
            if (other.note != null) {
                return false;
            }
        } else if (!note.equals(other.note)) {
            return false; 
        }

        if (prop == null) {
            if (other.prop != null) {
                return false;
            }
        } else if (!prop.equals(other.prop)) {
            return false; 
        }

        if (exp == null) {
            if (other.exp != null) {
                return false;
            }
        } else if (!exp.equals(other.exp)) {
            return false; 
        }

        if (point == null) {
            if (other.point != null) {
                return false;
            }
        } else if (!point.equals(other.point)) {
            return false; 
        }

        if (type == null) {
            if (other.type != null) {
                return false;
            }
        } else if (!type.equals(other.type)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SmartOrderDO [");
        sb.append("id=").append(id).append(",");
        sb.append("userId=").append(userId).append(",");
        sb.append("paymentId=").append(paymentId).append(",");
        sb.append("deliveryId=").append(deliveryId).append(",");
        sb.append("merchandise=").append(merchandise).append(",");
        sb.append("status=").append(status).append(",");
        sb.append("payStatus=").append(payStatus).append(",");
        sb.append("distributionStatus=").append(distributionStatus).append(",");
        sb.append("dueAmount=").append(dueAmount).append(",");
        sb.append("paidAmount=").append(paidAmount).append(",");
        sb.append("taxes=").append(taxes).append(",");
        sb.append("payableFreight=").append(payableFreight).append(",");
        sb.append("realFreight=").append(realFreight).append(",");
        sb.append("payFee=").append(payFee).append(",");
        sb.append("promotions=").append(promotions).append(",");
        sb.append("discount=").append(discount).append(",");
        sb.append("orderAmount=").append(orderAmount).append(",");
        sb.append("payTime=").append(payTime).append(",");
        sb.append("sendTime=").append(sendTime).append(",");
        sb.append("createTime=").append(createTime).append(",");
        sb.append("completionTime=").append(completionTime).append(",");
        sb.append("acceptTime=").append(acceptTime).append(",");
        sb.append("invoice=").append(invoice).append(",");
        sb.append("invoiceTitle=").append(invoiceTitle).append(",");
        sb.append("postscript=").append(postscript).append(",");
        sb.append("note=").append(note).append(",");
        sb.append("prop=").append(prop).append(",");
        sb.append("exp=").append(exp).append(",");
        sb.append("point=").append(point).append(",");
        sb.append("type=").append(type);
        sb.append("]");

        return sb.toString();
    }

}


