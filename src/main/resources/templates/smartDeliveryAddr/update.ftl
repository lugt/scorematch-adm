<form title="更新" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="addrid" value="${ret.model.addrid!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="uid">用户ID</label>
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
		<label class="col-md-3 form-control-label" for="mobile">手机号</label>
		<div class="col-md-9">
			<#if globalDict['mobile']?exists> 
				<select class="form-control" name="mobile">
					<option value="">请选择</option>
					<#list globalDict['mobile']?keys as key>
					<option value="${key}" ${(ret.model.mobile?? && key==ret.model.mobile)?string( 'selected="selected"','')}>${globalDict['mobile'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="mobile" value="${ret.model.mobile!}" />
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
					<option value="${key}" ${(ret.model.recver?? && key==ret.model.recver)?string( 'selected="selected"','')}>${globalDict['recver'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="recver" value="${ret.model.recver!}" />
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
					<option value="${key}" ${(ret.model.type?? && key==ret.model.type?c)?string( 'selected="selected"','')}>${globalDict['type'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="type" value="${ret.model.type!}" />
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
					<option value="${key}" ${(ret.model.province?? && key==ret.model.province?c)?string( 'selected="selected"','')}>${globalDict['province'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="province" value="${ret.model.province!}" />
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
					<option value="${key}" ${(ret.model.city?? && key==ret.model.city?c)?string( 'selected="selected"','')}>${globalDict['city'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="city" value="${ret.model.city!}" />
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
					<option value="${key}" ${(ret.model.district?? && key==ret.model.district?c)?string( 'selected="selected"','')}>${globalDict['district'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="district" value="${ret.model.district!}" />
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
					<option value="${key}" ${(ret.model.addr?? && key==ret.model.addr)?string( 'selected="selected"','')}>${globalDict['addr'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="addr" value="${ret.model.addr!}" />
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
					<option value="${key}" ${(ret.model.memo?? && key==ret.model.memo)?string( 'selected="selected"','')}>${globalDict['memo'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="memo" value="${ret.model.memo!}" />
			</#if>
		</div>
	</div>
</form>

