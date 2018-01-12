<form title="更新" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="goodid" value="${ret.model.goodid!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="name">商品名称</label>
		<div class="col-md-9">
			<#if globalDict['name']?exists> 
				<select class="form-control" name="name">
					<option value="">请选择</option>
					<#list globalDict['name']?keys as key>
					<option value="${key}" ${(ret.model.name?? && key==ret.model.name)?string( 'selected="selected"','')}>${globalDict['name'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="name" value="${ret.model.name!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="goodsNo">商品的货号</label>
		<div class="col-md-9">
			<#if globalDict['goodsNo']?exists> 
				<select class="form-control" name="goodsNo">
					<option value="">请选择</option>
					<#list globalDict['goodsNo']?keys as key>
					<option value="${key}" ${(ret.model.goodsNo?? && key==ret.model.goodsNo)?string( 'selected="selected"','')}>${globalDict['goodsNo'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="goodsNo" value="${ret.model.goodsNo!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="modelId">模型ID</label>
		<div class="col-md-9">
			<#if globalDict['modelId']?exists> 
				<select class="form-control" name="modelId">
					<option value="">请选择</option>
					<#list globalDict['modelId']?keys as key>
					<option value="${key}" ${(ret.model.modelId?? && key==ret.model.modelId?c)?string( 'selected="selected"','')}>${globalDict['modelId'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="modelId" value="${ret.model.modelId!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="sellPrice">销售价格</label>
		<div class="col-md-9">
			<#if globalDict['sellPrice']?exists> 
				<select class="form-control" name="sellPrice">
					<option value="">请选择</option>
					<#list globalDict['sellPrice']?keys as key>
					<option value="${key}" ${(ret.model.sellPrice?? && key==ret.model.sellPrice)?string( 'selected="selected"','')}>${globalDict['sellPrice'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="sellPrice" value="${ret.model.sellPrice!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="marketPrice">市场价格</label>
		<div class="col-md-9">
			<#if globalDict['marketPrice']?exists> 
				<select class="form-control" name="marketPrice">
					<option value="">请选择</option>
					<#list globalDict['marketPrice']?keys as key>
					<option value="${key}" ${(ret.model.marketPrice?? && key==ret.model.marketPrice)?string( 'selected="selected"','')}>${globalDict['marketPrice'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="marketPrice" value="${ret.model.marketPrice!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="costPrice">成本价格</label>
		<div class="col-md-9">
			<#if globalDict['costPrice']?exists> 
				<select class="form-control" name="costPrice">
					<option value="">请选择</option>
					<#list globalDict['costPrice']?keys as key>
					<option value="${key}" ${(ret.model.costPrice?? && key==ret.model.costPrice)?string( 'selected="selected"','')}>${globalDict['costPrice'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="costPrice" value="${ret.model.costPrice!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="upTime">上架时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="upTime" value="${(ret.model.upTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="downTime">下架时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="downTime" value="${(ret.model.downTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="createTime">创建时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="createTime" value="${(ret.model.createTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="storeNums">库存</label>
		<div class="col-md-9">
			<#if globalDict['storeNums']?exists> 
				<select class="form-control" name="storeNums">
					<option value="">请选择</option>
					<#list globalDict['storeNums']?keys as key>
					<option value="${key}" ${(ret.model.storeNums?? && key==ret.model.storeNums?c)?string( 'selected="selected"','')}>${globalDict['storeNums'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="storeNums" value="${ret.model.storeNums!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="img">原图</label>
		<div class="col-md-9">
			<#if globalDict['img']?exists> 
				<select class="form-control" name="img">
					<option value="">请选择</option>
					<#list globalDict['img']?keys as key>
					<option value="${key}" ${(ret.model.img?? && key==ret.model.img)?string( 'selected="selected"','')}>${globalDict['img'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="img" value="${ret.model.img!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isDel">删除 0未删除 1已删除 2下架</label>
		<div class="col-md-9">
			<#if globalDict['isDel']?exists> 
				<select class="form-control" name="isDel">
					<option value="">请选择</option>
					<#list globalDict['isDel']?keys as key>
					<option value="${key}" ${(ret.model.isDel?? && key==ret.model.isDel?c)?string( 'selected="selected"','')}>${globalDict['isDel'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="isDel" value="${ret.model.isDel!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="content">SEO商品内容</label>
		<div class="col-md-9">
			<#if globalDict['content']?exists> 
				<select class="form-control" name="content">
					<option value="">请选择</option>
					<#list globalDict['content']?keys as key>
					<option value="${key}" ${(ret.model.content?? && key==ret.model.content)?string( 'selected="selected"','')}>${globalDict['content'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="content" value="${ret.model.content!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="keywords">SEO关键词</label>
		<div class="col-md-9">
			<#if globalDict['keywords']?exists> 
				<select class="form-control" name="keywords">
					<option value="">请选择</option>
					<#list globalDict['keywords']?keys as key>
					<option value="${key}" ${(ret.model.keywords?? && key==ret.model.keywords)?string( 'selected="selected"','')}>${globalDict['keywords'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="keywords" value="${ret.model.keywords!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="description">商品介绍</label>
		<div class="col-md-9">
			<textarea type="text" class="form-control" name="description">
				${ret.model.description!}
			</textarea>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="searchWords">产品搜索词库,逗号分隔</label>
		<div class="col-md-9">
			<#if globalDict['searchWords']?exists> 
				<select class="form-control" name="searchWords">
					<option value="">请选择</option>
					<#list globalDict['searchWords']?keys as key>
					<option value="${key}" ${(ret.model.searchWords?? && key==ret.model.searchWords)?string( 'selected="selected"','')}>${globalDict['searchWords'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="searchWords" value="${ret.model.searchWords!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="weight">重量</label>
		<div class="col-md-9">
			<#if globalDict['weight']?exists> 
				<select class="form-control" name="weight">
					<option value="">请选择</option>
					<#list globalDict['weight']?keys as key>
					<option value="${key}" ${(ret.model.weight?? && key==ret.model.weight)?string( 'selected="selected"','')}>${globalDict['weight'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="weight" value="${ret.model.weight!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="point">积分</label>
		<div class="col-md-9">
			<#if globalDict['point']?exists> 
				<select class="form-control" name="point">
					<option value="">请选择</option>
					<#list globalDict['point']?keys as key>
					<option value="${key}" ${(ret.model.point?? && key==ret.model.point?c)?string( 'selected="selected"','')}>${globalDict['point'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="point" value="${ret.model.point!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="unit">计量单位</label>
		<div class="col-md-9">
			<#if globalDict['unit']?exists> 
				<select class="form-control" name="unit">
					<option value="">请选择</option>
					<#list globalDict['unit']?keys as key>
					<option value="${key}" ${(ret.model.unit?? && key==ret.model.unit)?string( 'selected="selected"','')}>${globalDict['unit'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="unit" value="${ret.model.unit!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="brandId">品牌ID</label>
		<div class="col-md-9">
			<#if globalDict['brandId']?exists> 
				<select class="form-control" name="brandId">
					<option value="">请选择</option>
					<#list globalDict['brandId']?keys as key>
					<option value="${key}" ${(ret.model.brandId?? && key==ret.model.brandId?c)?string( 'selected="selected"','')}>${globalDict['brandId'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="brandId" value="${ret.model.brandId!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="visit">浏览次数</label>
		<div class="col-md-9">
			<#if globalDict['visit']?exists> 
				<select class="form-control" name="visit">
					<option value="">请选择</option>
					<#list globalDict['visit']?keys as key>
					<option value="${key}" ${(ret.model.visit?? && key==ret.model.visit?c)?string( 'selected="selected"','')}>${globalDict['visit'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="visit" value="${ret.model.visit!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="favorite">收藏次数</label>
		<div class="col-md-9">
			<#if globalDict['favorite']?exists> 
				<select class="form-control" name="favorite">
					<option value="">请选择</option>
					<#list globalDict['favorite']?keys as key>
					<option value="${key}" ${(ret.model.favorite?? && key==ret.model.favorite?c)?string( 'selected="selected"','')}>${globalDict['favorite'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="favorite" value="${ret.model.favorite!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="sort">排序</label>
		<div class="col-md-9">
			<#if globalDict['sort']?exists> 
				<select class="form-control" name="sort">
					<option value="">请选择</option>
					<#list globalDict['sort']?keys as key>
					<option value="${key}" ${(ret.model.sort?? && key==ret.model.sort?c)?string( 'selected="selected"','')}>${globalDict['sort'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="sort" value="${ret.model.sort!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="listImg">列表页缩略图 大图</label>
		<div class="col-md-9">
			<#if globalDict['listImg']?exists> 
				<select class="form-control" name="listImg">
					<option value="">请选择</option>
					<#list globalDict['listImg']?keys as key>
					<option value="${key}" ${(ret.model.listImg?? && key==ret.model.listImg)?string( 'selected="selected"','')}>${globalDict['listImg'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="listImg" value="${ret.model.listImg!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="smallImg">详细页缩略图 小图</label>
		<div class="col-md-9">
			<#if globalDict['smallImg']?exists> 
				<select class="form-control" name="smallImg">
					<option value="">请选择</option>
					<#list globalDict['smallImg']?keys as key>
					<option value="${key}" ${(ret.model.smallImg?? && key==ret.model.smallImg)?string( 'selected="selected"','')}>${globalDict['smallImg'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="smallImg" value="${ret.model.smallImg!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="specArray">序列化存储规格,key值为规则ID，value为此商品具有的规格值</label>
		<div class="col-md-9">
			<#if globalDict['specArray']?exists> 
				<select class="form-control" name="specArray">
					<option value="">请选择</option>
					<#list globalDict['specArray']?keys as key>
					<option value="${key}" ${(ret.model.specArray?? && key==ret.model.specArray)?string( 'selected="selected"','')}>${globalDict['specArray'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="specArray" value="${ret.model.specArray!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="exp">经验值</label>
		<div class="col-md-9">
			<#if globalDict['exp']?exists> 
				<select class="form-control" name="exp">
					<option value="">请选择</option>
					<#list globalDict['exp']?keys as key>
					<option value="${key}" ${(ret.model.exp?? && key==ret.model.exp?c)?string( 'selected="selected"','')}>${globalDict['exp'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="exp" value="${ret.model.exp!}" />
			</#if>
		</div>
	</div>
</form>

