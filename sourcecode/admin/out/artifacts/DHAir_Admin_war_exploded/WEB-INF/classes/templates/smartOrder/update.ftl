<form title="更新" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userId">用户ID</label>
		<div class="col-md-9">
			<#if globalDict['userId']?exists> 
				<select class="form-control" name="userId">
					<option value="">请选择</option>
					<#list globalDict['userId']?keys as key>
					<option value="${key}" ${(ret.model.userId?? && key==ret.model.userId?c)?string( 'selected="selected"','')}>${globalDict['userId'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="userId" value="${ret.model.userId!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="paymentId">支付ID</label>
		<div class="col-md-9">
			<#if globalDict['paymentId']?exists> 
				<select class="form-control" name="paymentId">
					<option value="">请选择</option>
					<#list globalDict['paymentId']?keys as key>
					<option value="${key}" ${(ret.model.paymentId?? && key==ret.model.paymentId?c)?string( 'selected="selected"','')}>${globalDict['paymentId'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="paymentId" value="${ret.model.paymentId!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="deliveryId">配送ID</label>
		<div class="col-md-9">
			<#if globalDict['deliveryId']?exists> 
				<select class="form-control" name="deliveryId">
					<option value="">请选择</option>
					<#list globalDict['deliveryId']?keys as key>
					<option value="${key}" ${(ret.model.deliveryId?? && key==ret.model.deliveryId?c)?string( 'selected="selected"','')}>${globalDict['deliveryId'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="deliveryId" value="${ret.model.deliveryId!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="merchandise">商品代码、数量、型号组合</label>
		<div class="col-md-9">
			<#if globalDict['merchandise']?exists> 
				<select class="form-control" name="merchandise">
					<option value="">请选择</option>
					<#list globalDict['merchandise']?keys as key>
					<option value="${key}" ${(ret.model.merchandise?? && key==ret.model.merchandise)?string( 'selected="selected"','')}>${globalDict['merchandise'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="merchandise" value="${ret.model.merchandise!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status">订单状态1:生成订单,2：确认订单,3取消订单,4 物流中订单,5完成订单  6 作废订单</label>
		<div class="col-md-9">
			<#if globalDict['status']?exists> 
				<select class="form-control" name="status">
					<option value="">请选择</option>
					<#list globalDict['status']?keys as key>
					<option value="${key}" ${(ret.model.status?? && key==ret.model.status?c)?string( 'selected="selected"','')}>${globalDict['status'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="status" value="${ret.model.status!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="payStatus">支付状态 0：未支付，1：已支付，2：退款  3:   部分退款</label>
		<div class="col-md-9">
			<#if globalDict['payStatus']?exists> 
				<select class="form-control" name="payStatus">
					<option value="">请选择</option>
					<#list globalDict['payStatus']?keys as key>
					<option value="${key}" ${(ret.model.payStatus?? && key==ret.model.payStatus?c)?string( 'selected="selected"','')}>${globalDict['payStatus'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="payStatus" value="${ret.model.payStatus!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="distributionStatus">配送状态0：未发送，1：配货 2:  发货中  3 物流中 4 物流问题  5 已签收  6 签收异常   7 缺货  8 延迟发货</label>
		<div class="col-md-9">
			<#if globalDict['distributionStatus']?exists> 
				<select class="form-control" name="distributionStatus">
					<option value="">请选择</option>
					<#list globalDict['distributionStatus']?keys as key>
					<option value="${key}" ${(ret.model.distributionStatus?? && key==ret.model.distributionStatus?c)?string( 'selected="selected"','')}>${globalDict['distributionStatus'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="distributionStatus" value="${ret.model.distributionStatus!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="dueAmount">应付商品总金额</label>
		<div class="col-md-9">
			<#if globalDict['dueAmount']?exists> 
				<select class="form-control" name="dueAmount">
					<option value="">请选择</option>
					<#list globalDict['dueAmount']?keys as key>
					<option value="${key}" ${(ret.model.dueAmount?? && key==ret.model.dueAmount)?string( 'selected="selected"','')}>${globalDict['dueAmount'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="dueAmount" value="${ret.model.dueAmount!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="paidAmount">实付商品总金额</label>
		<div class="col-md-9">
			<#if globalDict['paidAmount']?exists> 
				<select class="form-control" name="paidAmount">
					<option value="">请选择</option>
					<#list globalDict['paidAmount']?keys as key>
					<option value="${key}" ${(ret.model.paidAmount?? && key==ret.model.paidAmount)?string( 'selected="selected"','')}>${globalDict['paidAmount'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="paidAmount" value="${ret.model.paidAmount!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="taxes">税金</label>
		<div class="col-md-9">
			<#if globalDict['taxes']?exists> 
				<select class="form-control" name="taxes">
					<option value="">请选择</option>
					<#list globalDict['taxes']?keys as key>
					<option value="${key}" ${(ret.model.taxes?? && key==ret.model.taxes)?string( 'selected="selected"','')}>${globalDict['taxes'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="taxes" value="${ret.model.taxes!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="payableFreight">总运费金额</label>
		<div class="col-md-9">
			<#if globalDict['payableFreight']?exists> 
				<select class="form-control" name="payableFreight">
					<option value="">请选择</option>
					<#list globalDict['payableFreight']?keys as key>
					<option value="${key}" ${(ret.model.payableFreight?? && key==ret.model.payableFreight)?string( 'selected="selected"','')}>${globalDict['payableFreight'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="payableFreight" value="${ret.model.payableFreight!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="realFreight">实付运费</label>
		<div class="col-md-9">
			<#if globalDict['realFreight']?exists> 
				<select class="form-control" name="realFreight">
					<option value="">请选择</option>
					<#list globalDict['realFreight']?keys as key>
					<option value="${key}" ${(ret.model.realFreight?? && key==ret.model.realFreight)?string( 'selected="selected"','')}>${globalDict['realFreight'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="realFreight" value="${ret.model.realFreight!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="payFee">支付手续费</label>
		<div class="col-md-9">
			<#if globalDict['payFee']?exists> 
				<select class="form-control" name="payFee">
					<option value="">请选择</option>
					<#list globalDict['payFee']?keys as key>
					<option value="${key}" ${(ret.model.payFee?? && key==ret.model.payFee)?string( 'selected="selected"','')}>${globalDict['payFee'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="payFee" value="${ret.model.payFee!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="promotions">促销优惠金额总计</label>
		<div class="col-md-9">
			<#if globalDict['promotions']?exists> 
				<select class="form-control" name="promotions">
					<option value="">请选择</option>
					<#list globalDict['promotions']?keys as key>
					<option value="${key}" ${(ret.model.promotions?? && key==ret.model.promotions)?string( 'selected="selected"','')}>${globalDict['promotions'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="promotions" value="${ret.model.promotions!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="discount">订单折扣或涨价比例</label>
		<div class="col-md-9">
			<#if globalDict['discount']?exists> 
				<select class="form-control" name="discount">
					<option value="">请选择</option>
					<#list globalDict['discount']?keys as key>
					<option value="${key}" ${(ret.model.discount?? && key==ret.model.discount)?string( 'selected="selected"','')}>${globalDict['discount'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="discount" value="${ret.model.discount!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="orderAmount">订单总金额</label>
		<div class="col-md-9">
			<#if globalDict['orderAmount']?exists> 
				<select class="form-control" name="orderAmount">
					<option value="">请选择</option>
					<#list globalDict['orderAmount']?keys as key>
					<option value="${key}" ${(ret.model.orderAmount?? && key==ret.model.orderAmount)?string( 'selected="selected"','')}>${globalDict['orderAmount'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="orderAmount" value="${ret.model.orderAmount!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="payTime">付款时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="payTime" value="${(ret.model.payTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="sendTime">发货时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="sendTime" value="${(ret.model.sendTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="createTime">下单时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="createTime" value="${(ret.model.createTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="completionTime">订单完成时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="completionTime" value="${(ret.model.completionTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="acceptTime">用户收货时间</label>
		<div class="col-md-9">
			<#if globalDict['acceptTime']?exists> 
				<select class="form-control" name="acceptTime">
					<option value="">请选择</option>
					<#list globalDict['acceptTime']?keys as key>
					<option value="${key}" ${(ret.model.acceptTime?? && key==ret.model.acceptTime)?string( 'selected="selected"','')}>${globalDict['acceptTime'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="acceptTime" value="${ret.model.acceptTime!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="invoice">发票：0不索要 1普通  2 电子发票 3增值税</label>
		<div class="col-md-9">
			<#if globalDict['invoice']?exists> 
				<select class="form-control" name="invoice">
					<option value="">请选择</option>
					<#list globalDict['invoice']?keys as key>
					<option value="${key}" ${(ret.model.invoice?? && key==ret.model.invoice?c)?string( 'selected="selected"','')}>${globalDict['invoice'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="invoice" value="${ret.model.invoice!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="invoiceTitle">发票抬头</label>
		<div class="col-md-9">
			<#if globalDict['invoiceTitle']?exists> 
				<select class="form-control" name="invoiceTitle">
					<option value="">请选择</option>
					<#list globalDict['invoiceTitle']?keys as key>
					<option value="${key}" ${(ret.model.invoiceTitle?? && key==ret.model.invoiceTitle)?string( 'selected="selected"','')}>${globalDict['invoiceTitle'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="invoiceTitle" value="${ret.model.invoiceTitle!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="postscript">用户附言</label>
		<div class="col-md-9">
			<#if globalDict['postscript']?exists> 
				<select class="form-control" name="postscript">
					<option value="">请选择</option>
					<#list globalDict['postscript']?keys as key>
					<option value="${key}" ${(ret.model.postscript?? && key==ret.model.postscript)?string( 'selected="selected"','')}>${globalDict['postscript'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="postscript" value="${ret.model.postscript!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="note">管理员备注</label>
		<div class="col-md-9">
			<#if globalDict['note']?exists> 
				<select class="form-control" name="note">
					<option value="">请选择</option>
					<#list globalDict['note']?keys as key>
					<option value="${key}" ${(ret.model.note?? && key==ret.model.note)?string( 'selected="selected"','')}>${globalDict['note'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="note" value="${ret.model.note!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="prop">使用的优惠券等</label>
		<div class="col-md-9">
			<#if globalDict['prop']?exists> 
				<select class="form-control" name="prop">
					<option value="">请选择</option>
					<#list globalDict['prop']?keys as key>
					<option value="${key}" ${(ret.model.prop?? && key==ret.model.prop)?string( 'selected="selected"','')}>${globalDict['prop'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="prop" value="${ret.model.prop!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="exp">增加的经验</label>
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
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="point">增加的积分</label>
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
		<label class="col-md-3 form-control-label" for="type">0普通订单,1团购订单,2限时抢购</label>
		<div class="col-md-9">
			<#if globalDict['type']?exists> 
				<select class="form-control" name="type">
					<option value="">请选择</option>
					<#list globalDict['type']?keys as key>
					<option value="${key}" ${(ret.model.type?? && key==ret.model.type?c)?string( 'selected="selected"','')}>${globalDict['type'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="type" value="${ret.model.type!}" />
			</#if>
		</div>
	</div>
</form>

