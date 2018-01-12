<form title="更新" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="uid" value="${ret.model.uid!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="addr1">地址1</label>
		<div class="col-md-9">
			<#if globalDict['addr1']?exists> 
				<select class="form-control" name="addr1">
					<option value="">请选择</option>
					<#list globalDict['addr1']?keys as key>
					<option value="${key}" ${(ret.model.addr1?? && key==ret.model.addr1?c)?string( 'selected="selected"','')}>${globalDict['addr1'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr1" value="${ret.model.addr1!}" />
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
					<option value="${key}" ${(ret.model.addr2?? && key==ret.model.addr2?c)?string( 'selected="selected"','')}>${globalDict['addr2'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr2" value="${ret.model.addr2!}" />
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
					<option value="${key}" ${(ret.model.addr3?? && key==ret.model.addr3?c)?string( 'selected="selected"','')}>${globalDict['addr3'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr3" value="${ret.model.addr3!}" />
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
					<option value="${key}" ${(ret.model.addr4?? && key==ret.model.addr4?c)?string( 'selected="selected"','')}>${globalDict['addr4'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr4" value="${ret.model.addr4!}" />
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
					<option value="${key}" ${(ret.model.addr5?? && key==ret.model.addr5?c)?string( 'selected="selected"','')}>${globalDict['addr5'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr5" value="${ret.model.addr5!}" />
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
					<option value="${key}" ${(ret.model.addr6?? && key==ret.model.addr6?c)?string( 'selected="selected"','')}>${globalDict['addr6'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr6" value="${ret.model.addr6!}" />
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
					<option value="${key}" ${(ret.model.addr7?? && key==ret.model.addr7?c)?string( 'selected="selected"','')}>${globalDict['addr7'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr7" value="${ret.model.addr7!}" />
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
					<option value="${key}" ${(ret.model.addr8?? && key==ret.model.addr8?c)?string( 'selected="selected"','')}>${globalDict['addr8'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr8" value="${ret.model.addr8!}" />
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
					<option value="${key}" ${(ret.model.addr9?? && key==ret.model.addr9?c)?string( 'selected="selected"','')}>${globalDict['addr9'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr9" value="${ret.model.addr9!}" />
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
					<option value="${key}" ${(ret.model.defaultaddr?? && key==ret.model.defaultaddr?c)?string( 'selected="selected"','')}>${globalDict['defaultaddr'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="defaultaddr" value="${ret.model.defaultaddr!}" />
			</#if>
		</div>
	</div>
</form>

