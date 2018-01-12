package smart.mall.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * 商品信息表(smart_goods) 实体类 
 * 
 * author: Frapo
 */ 
public class SmartGoodsDO {
    /** 商品ID */;
    private Integer goodid;

    /** 商品名称 */;
    private String name;

    /** 商品的货号 */;
    private String goodsNo;

    /** 模型ID */;
    private Integer modelId;

    /** 销售价格 */;
    private Double sellPrice;

    /** 市场价格 */;
    private Double marketPrice;

    /** 成本价格 */;
    private Double costPrice;

    /** 上架时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date upTime;

    /** 下架时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date downTime;

    /** 创建时间 */;
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    /** 库存 */;
    private Integer storeNums;

    /** 原图 */;
    private String img;

    /** 删除 0未删除 1已删除 2下架 */;
    private Integer isDel;

    /** SEO商品内容 */;
    private String content;

    /** SEO关键词 */;
    private String keywords;

    /** 商品介绍 */;
    private String description;

    /** 产品搜索词库,逗号分隔 */;
    private String searchWords;

    /** 重量 */;
    private Double weight;

    /** 积分 */;
    private Integer point;

    /** 计量单位 */;
    private String unit;

    /** 品牌ID */;
    private Integer brandId;

    /** 浏览次数 */;
    private Integer visit;

    /** 收藏次数 */;
    private Integer favorite;

    /** 排序 */;
    private Integer sort;

    /** 列表页缩略图 大图 */;
    private String listImg;

    /** 详细页缩略图 小图 */;
    private String smallImg;

    /** 序列化存储规格,key值为规则ID，value为此商品具有的规格值 */;
    private String specArray;

    /** 经验值 */;
    private Integer exp;


    /** setter: 商品ID */;
    public void setGoodid(Integer goodid) {
        this.goodid = goodid;
    }

    /** getter: 商品ID */;
    public Integer getGoodid() {
        return goodid;
    }

    /** setter: 商品名称 */;
    public void setName(String name) {
        this.name = name;
    }

    /** getter: 商品名称 */;
    public String getName() {
        return name;
    }

    /** setter: 商品的货号 */;
    public void setGoodsNo(String goodsNo) {
        this.goodsNo = goodsNo;
    }

    /** getter: 商品的货号 */;
    public String getGoodsNo() {
        return goodsNo;
    }

    /** setter: 模型ID */;
    public void setModelId(Integer modelId) {
        this.modelId = modelId;
    }

    /** getter: 模型ID */;
    public Integer getModelId() {
        return modelId;
    }

    /** setter: 销售价格 */;
    public void setSellPrice(Double sellPrice) {
        this.sellPrice = sellPrice;
    }

    /** getter: 销售价格 */;
    public Double getSellPrice() {
        return sellPrice;
    }

    /** setter: 市场价格 */;
    public void setMarketPrice(Double marketPrice) {
        this.marketPrice = marketPrice;
    }

    /** getter: 市场价格 */;
    public Double getMarketPrice() {
        return marketPrice;
    }

    /** setter: 成本价格 */;
    public void setCostPrice(Double costPrice) {
        this.costPrice = costPrice;
    }

    /** getter: 成本价格 */;
    public Double getCostPrice() {
        return costPrice;
    }

    /** setter: 上架时间 */;
    public void setUpTime(Date upTime) {
        this.upTime = upTime;
    }

    /** getter: 上架时间 */;
    public Date getUpTime() {
        return upTime;
    }

    /** setter: 下架时间 */;
    public void setDownTime(Date downTime) {
        this.downTime = downTime;
    }

    /** getter: 下架时间 */;
    public Date getDownTime() {
        return downTime;
    }

    /** setter: 创建时间 */;
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /** getter: 创建时间 */;
    public Date getCreateTime() {
        return createTime;
    }

    /** setter: 库存 */;
    public void setStoreNums(Integer storeNums) {
        this.storeNums = storeNums;
    }

    /** getter: 库存 */;
    public Integer getStoreNums() {
        return storeNums;
    }

    /** setter: 原图 */;
    public void setImg(String img) {
        this.img = img;
    }

    /** getter: 原图 */;
    public String getImg() {
        return img;
    }

    /** setter: 删除 0未删除 1已删除 2下架 */;
    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    /** getter: 删除 0未删除 1已删除 2下架 */;
    public Integer getIsDel() {
        return isDel;
    }

    /** setter: SEO商品内容 */;
    public void setContent(String content) {
        this.content = content;
    }

    /** getter: SEO商品内容 */;
    public String getContent() {
        return content;
    }

    /** setter: SEO关键词 */;
    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    /** getter: SEO关键词 */;
    public String getKeywords() {
        return keywords;
    }

    /** setter: 商品介绍 */;
    public void setDescription(String description) {
        this.description = description;
    }

    /** getter: 商品介绍 */;
    public String getDescription() {
        return description;
    }

    /** setter: 产品搜索词库,逗号分隔 */;
    public void setSearchWords(String searchWords) {
        this.searchWords = searchWords;
    }

    /** getter: 产品搜索词库,逗号分隔 */;
    public String getSearchWords() {
        return searchWords;
    }

    /** setter: 重量 */;
    public void setWeight(Double weight) {
        this.weight = weight;
    }

    /** getter: 重量 */;
    public Double getWeight() {
        return weight;
    }

    /** setter: 积分 */;
    public void setPoint(Integer point) {
        this.point = point;
    }

    /** getter: 积分 */;
    public Integer getPoint() {
        return point;
    }

    /** setter: 计量单位 */;
    public void setUnit(String unit) {
        this.unit = unit;
    }

    /** getter: 计量单位 */;
    public String getUnit() {
        return unit;
    }

    /** setter: 品牌ID */;
    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    /** getter: 品牌ID */;
    public Integer getBrandId() {
        return brandId;
    }

    /** setter: 浏览次数 */;
    public void setVisit(Integer visit) {
        this.visit = visit;
    }

    /** getter: 浏览次数 */;
    public Integer getVisit() {
        return visit;
    }

    /** setter: 收藏次数 */;
    public void setFavorite(Integer favorite) {
        this.favorite = favorite;
    }

    /** getter: 收藏次数 */;
    public Integer getFavorite() {
        return favorite;
    }

    /** setter: 排序 */;
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /** getter: 排序 */;
    public Integer getSort() {
        return sort;
    }

    /** setter: 列表页缩略图 大图 */;
    public void setListImg(String listImg) {
        this.listImg = listImg;
    }

    /** getter: 列表页缩略图 大图 */;
    public String getListImg() {
        return listImg;
    }

    /** setter: 详细页缩略图 小图 */;
    public void setSmallImg(String smallImg) {
        this.smallImg = smallImg;
    }

    /** getter: 详细页缩略图 小图 */;
    public String getSmallImg() {
        return smallImg;
    }

    /** setter: 序列化存储规格,key值为规则ID，value为此商品具有的规格值 */;
    public void setSpecArray(String specArray) {
        this.specArray = specArray;
    }

    /** getter: 序列化存储规格,key值为规则ID，value为此商品具有的规格值 */;
    public String getSpecArray() {
        return specArray;
    }

    /** setter: 经验值 */;
    public void setExp(Integer exp) {
        this.exp = exp;
    }

    /** getter: 经验值 */;
    public Integer getExp() {
        return exp;
    }


    @Override
    public int hashCode() { 
        final int prime = 31;

        int resultHashCode = 1;

        resultHashCode = prime * resultHashCode + ((goodid == null) ? 0 : goodid.hashCode());
        resultHashCode = prime * resultHashCode + ((name == null) ? 0 : name.hashCode());
        resultHashCode = prime * resultHashCode + ((goodsNo == null) ? 0 : goodsNo.hashCode());
        resultHashCode = prime * resultHashCode + ((modelId == null) ? 0 : modelId.hashCode());
        resultHashCode = prime * resultHashCode + ((sellPrice == null) ? 0 : sellPrice.hashCode());
        resultHashCode = prime * resultHashCode + ((marketPrice == null) ? 0 : marketPrice.hashCode());
        resultHashCode = prime * resultHashCode + ((costPrice == null) ? 0 : costPrice.hashCode());
        resultHashCode = prime * resultHashCode + ((upTime == null) ? 0 : upTime.hashCode());
        resultHashCode = prime * resultHashCode + ((downTime == null) ? 0 : downTime.hashCode());
        resultHashCode = prime * resultHashCode + ((createTime == null) ? 0 : createTime.hashCode());
        resultHashCode = prime * resultHashCode + ((storeNums == null) ? 0 : storeNums.hashCode());
        resultHashCode = prime * resultHashCode + ((img == null) ? 0 : img.hashCode());
        resultHashCode = prime * resultHashCode + ((isDel == null) ? 0 : isDel.hashCode());
        resultHashCode = prime * resultHashCode + ((content == null) ? 0 : content.hashCode());
        resultHashCode = prime * resultHashCode + ((keywords == null) ? 0 : keywords.hashCode());
        resultHashCode = prime * resultHashCode + ((description == null) ? 0 : description.hashCode());
        resultHashCode = prime * resultHashCode + ((searchWords == null) ? 0 : searchWords.hashCode());
        resultHashCode = prime * resultHashCode + ((weight == null) ? 0 : weight.hashCode());
        resultHashCode = prime * resultHashCode + ((point == null) ? 0 : point.hashCode());
        resultHashCode = prime * resultHashCode + ((unit == null) ? 0 : unit.hashCode());
        resultHashCode = prime * resultHashCode + ((brandId == null) ? 0 : brandId.hashCode());
        resultHashCode = prime * resultHashCode + ((visit == null) ? 0 : visit.hashCode());
        resultHashCode = prime * resultHashCode + ((favorite == null) ? 0 : favorite.hashCode());
        resultHashCode = prime * resultHashCode + ((sort == null) ? 0 : sort.hashCode());
        resultHashCode = prime * resultHashCode + ((listImg == null) ? 0 : listImg.hashCode());
        resultHashCode = prime * resultHashCode + ((smallImg == null) ? 0 : smallImg.hashCode());
        resultHashCode = prime * resultHashCode + ((specArray == null) ? 0 : specArray.hashCode());
        resultHashCode = prime * resultHashCode + ((exp == null) ? 0 : exp.hashCode());

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

        SmartGoodsDO other = (SmartGoodsDO) obj;

        if (goodid == null) {
            if (other.goodid != null) {
                return false;
            }
        } else if (!goodid.equals(other.goodid)) {
            return false; 
        }

        if (name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!name.equals(other.name)) {
            return false; 
        }

        if (goodsNo == null) {
            if (other.goodsNo != null) {
                return false;
            }
        } else if (!goodsNo.equals(other.goodsNo)) {
            return false; 
        }

        if (modelId == null) {
            if (other.modelId != null) {
                return false;
            }
        } else if (!modelId.equals(other.modelId)) {
            return false; 
        }

        if (sellPrice == null) {
            if (other.sellPrice != null) {
                return false;
            }
        } else if (!sellPrice.equals(other.sellPrice)) {
            return false; 
        }

        if (marketPrice == null) {
            if (other.marketPrice != null) {
                return false;
            }
        } else if (!marketPrice.equals(other.marketPrice)) {
            return false; 
        }

        if (costPrice == null) {
            if (other.costPrice != null) {
                return false;
            }
        } else if (!costPrice.equals(other.costPrice)) {
            return false; 
        }

        if (upTime == null) {
            if (other.upTime != null) {
                return false;
            }
        } else if (!upTime.equals(other.upTime)) {
            return false; 
        }

        if (downTime == null) {
            if (other.downTime != null) {
                return false;
            }
        } else if (!downTime.equals(other.downTime)) {
            return false; 
        }

        if (createTime == null) {
            if (other.createTime != null) {
                return false;
            }
        } else if (!createTime.equals(other.createTime)) {
            return false; 
        }

        if (storeNums == null) {
            if (other.storeNums != null) {
                return false;
            }
        } else if (!storeNums.equals(other.storeNums)) {
            return false; 
        }

        if (img == null) {
            if (other.img != null) {
                return false;
            }
        } else if (!img.equals(other.img)) {
            return false; 
        }

        if (isDel == null) {
            if (other.isDel != null) {
                return false;
            }
        } else if (!isDel.equals(other.isDel)) {
            return false; 
        }

        if (content == null) {
            if (other.content != null) {
                return false;
            }
        } else if (!content.equals(other.content)) {
            return false; 
        }

        if (keywords == null) {
            if (other.keywords != null) {
                return false;
            }
        } else if (!keywords.equals(other.keywords)) {
            return false; 
        }

        if (description == null) {
            if (other.description != null) {
                return false;
            }
        } else if (!description.equals(other.description)) {
            return false; 
        }

        if (searchWords == null) {
            if (other.searchWords != null) {
                return false;
            }
        } else if (!searchWords.equals(other.searchWords)) {
            return false; 
        }

        if (weight == null) {
            if (other.weight != null) {
                return false;
            }
        } else if (!weight.equals(other.weight)) {
            return false; 
        }

        if (point == null) {
            if (other.point != null) {
                return false;
            }
        } else if (!point.equals(other.point)) {
            return false; 
        }

        if (unit == null) {
            if (other.unit != null) {
                return false;
            }
        } else if (!unit.equals(other.unit)) {
            return false; 
        }

        if (brandId == null) {
            if (other.brandId != null) {
                return false;
            }
        } else if (!brandId.equals(other.brandId)) {
            return false; 
        }

        if (visit == null) {
            if (other.visit != null) {
                return false;
            }
        } else if (!visit.equals(other.visit)) {
            return false; 
        }

        if (favorite == null) {
            if (other.favorite != null) {
                return false;
            }
        } else if (!favorite.equals(other.favorite)) {
            return false; 
        }

        if (sort == null) {
            if (other.sort != null) {
                return false;
            }
        } else if (!sort.equals(other.sort)) {
            return false; 
        }

        if (listImg == null) {
            if (other.listImg != null) {
                return false;
            }
        } else if (!listImg.equals(other.listImg)) {
            return false; 
        }

        if (smallImg == null) {
            if (other.smallImg != null) {
                return false;
            }
        } else if (!smallImg.equals(other.smallImg)) {
            return false; 
        }

        if (specArray == null) {
            if (other.specArray != null) {
                return false;
            }
        } else if (!specArray.equals(other.specArray)) {
            return false; 
        }

        if (exp == null) {
            if (other.exp != null) {
                return false;
            }
        } else if (!exp.equals(other.exp)) {
            return false; 
        }

        return true;
    }

    @Override
    public String toString() { 
        StringBuffer sb = new StringBuffer();

        sb.append("SmartGoodsDO [");
        sb.append("goodid=").append(goodid).append(",");
        sb.append("name=").append(name).append(",");
        sb.append("goodsNo=").append(goodsNo).append(",");
        sb.append("modelId=").append(modelId).append(",");
        sb.append("sellPrice=").append(sellPrice).append(",");
        sb.append("marketPrice=").append(marketPrice).append(",");
        sb.append("costPrice=").append(costPrice).append(",");
        sb.append("upTime=").append(upTime).append(",");
        sb.append("downTime=").append(downTime).append(",");
        sb.append("createTime=").append(createTime).append(",");
        sb.append("storeNums=").append(storeNums).append(",");
        sb.append("img=").append(img).append(",");
        sb.append("isDel=").append(isDel).append(",");
        sb.append("content=").append(content).append(",");
        sb.append("keywords=").append(keywords).append(",");
        sb.append("description=").append(description).append(",");
        sb.append("searchWords=").append(searchWords).append(",");
        sb.append("weight=").append(weight).append(",");
        sb.append("point=").append(point).append(",");
        sb.append("unit=").append(unit).append(",");
        sb.append("brandId=").append(brandId).append(",");
        sb.append("visit=").append(visit).append(",");
        sb.append("favorite=").append(favorite).append(",");
        sb.append("sort=").append(sort).append(",");
        sb.append("listImg=").append(listImg).append(",");
        sb.append("smallImg=").append(smallImg).append(",");
        sb.append("specArray=").append(specArray).append(",");
        sb.append("exp=").append(exp);
        sb.append("]");

        return sb.toString();
    }

}


