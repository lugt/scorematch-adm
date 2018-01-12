<form title="添加" class="form-horizontal ">
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
		<label class="col-md-3 form-control-label" for="addr1">地址1</label>
		<div class="col-md-9">
			<#if globalDict['addr1']?exists> 
				<select class="form-control" name="addr1">
					<option value="">请选择</option>
					<#list globalDict['addr1']?keys as key>
					<option value="${key}">${globalDict['addr1'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr1" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr2">地址2</label>
		<div class="col-md-9">
			<#if globalDict['addr2']?exists> 
				<select class="form-control" name="addr2">
					<option value="">请选择</option>
					<#list globalDict['addr2']?keys as key>
					<option value="${key}">${globalDict['addr2'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr2" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr3">地址3</label>
		<div class="col-md-9">
			<#if globalDict['addr3']?exists> 
				<select class="form-control" name="addr3">
					<option value="">请选择</option>
					<#list globalDict['addr3']?keys as key>
					<option value="${key}">${globalDict['addr3'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr3" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr4">地址4</label>
		<div class="col-md-9">
			<#if globalDict['addr4']?exists> 
				<select class="form-control" name="addr4">
					<option value="">请选择</option>
					<#list globalDict['addr4']?keys as key>
					<option value="${key}">${globalDict['addr4'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr4" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr5">地址5</label>
		<div class="col-md-9">
			<#if globalDict['addr5']?exists> 
				<select class="form-control" name="addr5">
					<option value="">请选择</option>
					<#list globalDict['addr5']?keys as key>
					<option value="${key}">${globalDict['addr5'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr5" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr6">地址6</label>
		<div class="col-md-9">
			<#if globalDict['addr6']?exists> 
				<select class="form-control" name="addr6">
					<option value="">请选择</option>
					<#list globalDict['addr6']?keys as key>
					<option value="${key}">${globalDict['addr6'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr6" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr7">地址7</label>
		<div class="col-md-9">
			<#if globalDict['addr7']?exists> 
				<select class="form-control" name="addr7">
					<option value="">请选择</option>
					<#list globalDict['addr7']?keys as key>
					<option value="${key}">${globalDict['addr7'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr7" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr8">地址8</label>
		<div class="col-md-9">
			<#if globalDict['addr8']?exists> 
				<select class="form-control" name="addr8">
					<option value="">请选择</option>
					<#list globalDict['addr8']?keys as key>
					<option value="${key}">${globalDict['addr8'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr8" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr9">地址9</label>
		<div class="col-md-9">
			<#if globalDict['addr9']?exists> 
				<select class="form-control" name="addr9">
					<option value="">请选择</option>
					<#list globalDict['addr9']?keys as key>
					<option value="${key}">${globalDict['addr9'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr9" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="defaultaddr">默认地址</label>
		<div class="col-md-9">
			<#if globalDict['defaultaddr']?exists> 
				<select class="form-control" name="defaultaddr">
					<option value="">请选择</option>
					<#list globalDict['defaultaddr']?keys as key>
					<option value="${key}">${globalDict['defaultaddr'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="defaultaddr" value="" />
			</#if>
		</div>
	</div>
</form>

