<form title="更新" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="uid" value="${ret.model.uid!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="usn">用户登陆名称</label>
		<div class="col-md-9">
			<#if globalDict['usn']?exists> 
				<select class="form-control" name="usn">
					<option value="">请选择</option>
					<#list globalDict['usn']?keys as key>
					<option value="${key}" ${(ret.model.usn?? && key==ret.model.usn)?string( 'selected="selected"','')}>${globalDict['usn'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="usn" value="${ret.model.usn!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="pss">密码密文</label>
		<div class="col-md-9">
			<button type="button" onclick="convert_to_encrypt();" class="btn">转换成为密文</button>
			<input type="text" class="form-control" id="passWd_input" name="pss" value="${ret.model.pss!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="name">注册姓名</label>
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
		<label class="col-md-3 form-control-label" for="title">头衔</label>
		<div class="col-md-9">
			<#if globalDict['title']?exists> 
				<select class="form-control" name="title">
					<option value="">请选择</option>
					<#list globalDict['title']?keys as key>
					<option value="${key}" ${(ret.model.title?? && key==ret.model.title)?string( 'selected="selected"','')}>${globalDict['title'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="title" value="${ret.model.title!}" />
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
					<option value="${key}" ${(ret.model.priv?? && key==ret.model.priv)?string( 'selected="selected"','')}>${globalDict['priv'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="priv" value="${ret.model.priv!}" />
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
					<option value="${key}" ${(ret.model.state?? && key==ret.model.state?c)?string( 'selected="selected"','')}>${globalDict['state'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="state" value="${ret.model.state!}" />
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
					<option value="${key}" ${(ret.model.sess?? && key==ret.model.sess)?string( 'selected="selected"','')}>${globalDict['sess'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="sess" value="${ret.model.sess!}" />
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
					<option value="${key}" ${(ret.model.phone?? && key==ret.model.phone)?string( 'selected="selected"','')}>${globalDict['phone'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="phone" value="${ret.model.phone!}" />
			</#if>
		</div>
	</div>
</form>

<script>
    function convert_to_encrypt() {
        $.ajax({
			url:"generatePass?encode="+$('#passWd_input').val()
        }).done(function (obj, status) {
            if(typeof (obj) == "string"){
                obj = JSON.parse(obj);
			}
            $('#passWd_input').val(obj.outcome);
        });
    }
</script>
