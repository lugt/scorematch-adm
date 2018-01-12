<form title="更新" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="deliverid" value="${ret.model.deliverid!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="orderid">订单ID</label>
		<div class="col-md-9">
			<#if globalDict['orderid']?exists> 
				<select class="form-control" name="orderid">
					<option value="">请选择</option>
					<#list globalDict['orderid']?keys as key>
					<option value="${key}" ${(ret.model.orderid?? && key==ret.model.orderid?c)?string( 'selected="selected"','')}>${globalDict['orderid'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="orderid" value="${ret.model.orderid!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="uid">用户名</label>
		<div class="col-md-9">
			<#if globalDict['uid']?exists> 
				<select class="form-control" name="uid">
					<option value="">请选择</option>
					<#list globalDict['uid']?keys as key>
					<option value="${key}" ${(ret.model.uid?? && key==ret.model.uid?c)?string( 'selected="selected"','')}>${globalDict['uid'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="uid" value="${ret.model.uid!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="type">发货类型</label>
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
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status">发货状态</label>
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
		<label class="col-md-3 form-control-label" for="sender">运输人</label>
		<div class="col-md-9">
			<#if globalDict['sender']?exists> 
				<select class="form-control" name="sender">
					<option value="">请选择</option>
					<#list globalDict['sender']?keys as key>
					<option value="${key}" ${(ret.model.sender?? && key==ret.model.sender)?string( 'selected="selected"','')}>${globalDict['sender'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="sender" value="${ret.model.sender!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="address">接受地址</label>
		<div class="col-md-9">
			<#if globalDict['address']?exists> 
				<select class="form-control" name="address">
					<option value="">请选择</option>
					<#list globalDict['address']?keys as key>
					<option value="${key}" ${(ret.model.address?? && key==ret.model.address?c)?string( 'selected="selected"','')}>${globalDict['address'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="address" value="${ret.model.address!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="carrier">派送人员</label>
		<div class="col-md-9">
			<#if globalDict['carrier']?exists> 
				<select class="form-control" name="carrier">
					<option value="">请选择</option>
					<#list globalDict['carrier']?keys as key>
					<option value="${key}" ${(ret.model.carrier?? && key==ret.model.carrier)?string( 'selected="selected"','')}>${globalDict['carrier'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="carrier" value="${ret.model.carrier!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="starttime">开始时间</label>
		<div class="col-md-9">
			<#if globalDict['starttime']?exists> 
				<select class="form-control" name="starttime">
					<option value="">请选择</option>
					<#list globalDict['starttime']?keys as key>
					<option value="${key}" ${(ret.model.starttime?? && key==ret.model.starttime?c)?string( 'selected="selected"','')}>${globalDict['starttime'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="starttime" value="${ret.model.starttime!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="reservetime">预定上门时间</label>
		<div class="col-md-9">
			<#if globalDict['reservetime']?exists> 
				<select class="form-control" name="reservetime">
					<option value="">请选择</option>
					<#list globalDict['reservetime']?keys as key>
					<option value="${key}" ${(ret.model.reservetime?? && key==ret.model.reservetime?c)?string( 'selected="selected"','')}>${globalDict['reservetime'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="reservetime" value="${ret.model.reservetime!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="packagetime">包裹出库时间</label>
		<div class="col-md-9">
			<#if globalDict['packagetime']?exists> 
				<select class="form-control" name="packagetime">
					<option value="">请选择</option>
					<#list globalDict['packagetime']?keys as key>
					<option value="${key}" ${(ret.model.packagetime?? && key==ret.model.packagetime?c)?string( 'selected="selected"','')}>${globalDict['packagetime'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="packagetime" value="${ret.model.packagetime!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="accepttime">签收时间</label>
		<div class="col-md-9">
			<#if globalDict['accepttime']?exists> 
				<select class="form-control" name="accepttime">
					<option value="">请选择</option>
					<#list globalDict['accepttime']?keys as key>
					<option value="${key}" ${(ret.model.accepttime?? && key==ret.model.accepttime?c)?string( 'selected="selected"','')}>${globalDict['accepttime'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="accepttime" value="${ret.model.accepttime!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="confirmtime">确认收获时间</label>
		<div class="col-md-9">
			<#if globalDict['confirmtime']?exists> 
				<select class="form-control" name="confirmtime">
					<option value="">请选择</option>
					<#list globalDict['confirmtime']?keys as key>
					<option value="${key}" ${(ret.model.confirmtime?? && key==ret.model.confirmtime?c)?string( 'selected="selected"','')}>${globalDict['confirmtime'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="confirmtime" value="${ret.model.confirmtime!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="logs">记录信息</label>
		<div class="col-md-9">
			<#if globalDict['logs']?exists> 
				<select class="form-control" name="logs">
					<option value="">请选择</option>
					<#list globalDict['logs']?keys as key>
					<option value="${key}" ${(ret.model.logs?? && key==ret.model.logs)?string( 'selected="selected"','')}>${globalDict['logs'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="logs" value="${ret.model.logs!}" />
			</#if>
		</div>
	</div>
</form>

