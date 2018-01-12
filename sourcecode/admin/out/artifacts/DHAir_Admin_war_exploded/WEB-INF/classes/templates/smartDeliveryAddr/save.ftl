<form title="添加" class="form-horizontal ">
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addrid">地址ID</label>
		<div class="col-md-9">
			<#if globalDict['addrid']?exists> 
				<select class="form-control" name="addrid">
					<option value="">请选择</option>
					<#list globalDict['addrid']?keys as key>
					<option value="${key}">${globalDict['addrid'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addrid" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="uid">用户ID</label>
		<div class="col-md-9">
			<#if globalDict['uid']?exists> 
				<select class="form-control" name="uid">
					<option value="">请选择</option>
					<#list globalDict['uid']?keys as key>
					<option value="${key}">${globalDict['uid'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="uid" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="mobile">手机号</label>
		<div class="col-md-9">
			<#if globalDict['mobile']?exists> 
				<select class="form-control" name="mobile">
					<option value="">请选择</option>
					<#list globalDict['mobile']?keys as key>
					<option value="${key}">${globalDict['mobile'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="mobile" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="recver">收货人</label>
		<div class="col-md-9">
			<#if globalDict['recver']?exists> 
				<select class="form-control" name="recver">
					<option value="">请选择</option>
					<#list globalDict['recver']?keys as key>
					<option value="${key}">${globalDict['recver'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="recver" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="type">类型</label>
		<div class="col-md-9">
			<#if globalDict['type']?exists> 
				<select class="form-control" name="type">
					<option value="">请选择</option>
					<#list globalDict['type']?keys as key>
					<option value="${key}">${globalDict['type'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="type" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="province">省份</label>
		<div class="col-md-9">
			<#if globalDict['province']?exists> 
				<select class="form-control" name="province">
					<option value="">请选择</option>
					<#list globalDict['province']?keys as key>
					<option value="${key}">${globalDict['province'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="province" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="city">城市</label>
		<div class="col-md-9">
			<#if globalDict['city']?exists> 
				<select class="form-control" name="city">
					<option value="">请选择</option>
					<#list globalDict['city']?keys as key>
					<option value="${key}">${globalDict['city'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="city" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="district">区县</label>
		<div class="col-md-9">
			<#if globalDict['district']?exists> 
				<select class="form-control" name="district">
					<option value="">请选择</option>
					<#list globalDict['district']?keys as key>
					<option value="${key}">${globalDict['district'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="district" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr">地址详细</label>
		<div class="col-md-9">
			<#if globalDict['addr']?exists> 
				<select class="form-control" name="addr">
					<option value="">请选择</option>
					<#list globalDict['addr']?keys as key>
					<option value="${key}">${globalDict['addr'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="memo">备忘</label>
		<div class="col-md-9">
			<#if globalDict['memo']?exists> 
				<select class="form-control" name="memo">
					<option value="">请选择</option>
					<#list globalDict['memo']?keys as key>
					<option value="${key}">${globalDict['memo'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="memo" value="" />
			</#if>
		</div>
	</div>
</form>

