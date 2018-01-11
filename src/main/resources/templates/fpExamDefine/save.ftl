<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">ID</label>
		<div class="col-md-9">
		    <input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examName"><span style="color: red;">*&nbsp;</span>考试名称</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="examName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="state"><span style="color: red;">*&nbsp;</span>是否有效</label>
		<div class="col-md-9">
			<#if globalDict['state']?exists> <select class="form-control" name="state">
				<#list globalDict['state']?keys as key>
				<option value="${key}">${globalDict['state'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="30" type="text" class="form-control" name="state" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examType"><span style="color: red;">*&nbsp;</span>考试类型</label>
		<div class="col-md-9">
			<#if globalDict['examType']?exists> <select class="form-control" name="examType">
				<#list globalDict['examType']?keys as key>
				<option value="${key}">${globalDict['examType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="examType" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userType"><span style="color: red;">*&nbsp;</span>考试用户类型</label>
		<div class="col-md-9">
			<#if globalDict['userType']?exists> <select class="form-control" name="userType">
				<#list globalDict['userType']?keys as key>
				<option value="${key}">${globalDict['userType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="userType" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language"><span style="color: red;">*&nbsp;</span>语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}">${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="" /> </#if>
		</div>
	</div>
</form>
<script src="/js/views/fpExamDefine/validation.js"></script>
