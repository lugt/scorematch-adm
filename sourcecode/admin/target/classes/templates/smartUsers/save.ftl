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
		<label class="col-md-3 form-control-label" for="usn">用户登陆名称</label>
		<div class="col-md-9">
			<#if globalDict['usn']?exists> 
				<select class="form-control" name="usn">
					<option value="">请选择</option>
					<#list globalDict['usn']?keys as key>
					<option value="${key}">${globalDict['usn'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="usn" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="pss">密码密文</label>
		<div class="col-md-9">
			<#if globalDict['pss']?exists> 
				<select class="form-control" name="pss">
					<option value="">请选择</option>
					<#list globalDict['pss']?keys as key>
					<option value="${key}">${globalDict['pss'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="pss" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="name">注册姓名</label>
		<div class="col-md-9">
			<#if globalDict['name']?exists> 
				<select class="form-control" name="name">
					<option value="">请选择</option>
					<#list globalDict['name']?keys as key>
					<option value="${key}">${globalDict['name'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="name" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="title">头衔</label>
		<div class="col-md-9">
			<#if globalDict['title']?exists> 
				<select class="form-control" name="title">
					<option value="">请选择</option>
					<#list globalDict['title']?keys as key>
					<option value="${key}">${globalDict['title'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="title" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="priv">权限</label>
		<div class="col-md-9">
			<#if globalDict['priv']?exists> 
				<select class="form-control" name="priv">
					<option value="">请选择</option>
					<#list globalDict['priv']?keys as key>
					<option value="${key}">${globalDict['priv'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="priv" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="state">账户状态</label>
		<div class="col-md-9">
			<#if globalDict['state']?exists> 
				<select class="form-control" name="state">
					<option value="">请选择</option>
					<#list globalDict['state']?keys as key>
					<option value="${key}">${globalDict['state'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="state" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="sess">登陆</label>
		<div class="col-md-9">
			<#if globalDict['sess']?exists> 
				<select class="form-control" name="sess">
					<option value="">请选择</option>
					<#list globalDict['sess']?keys as key>
					<option value="${key}">${globalDict['sess'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="sess" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="phone">手机号</label>
		<div class="col-md-9">
			<#if globalDict['phone']?exists> 
				<select class="form-control" name="phone">
					<option value="">请选择</option>
					<#list globalDict['phone']?keys as key>
					<option value="${key}">${globalDict['phone'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="phone" value="" />
			</#if>
		</div>
	</div>
</form>

