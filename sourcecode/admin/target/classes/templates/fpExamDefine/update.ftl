<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examName"><span style="color: red;">*&nbsp;</span>考试名称</label>
		<div class="col-md-9">
			<#if globalDict['examName']?exists> <select class="form-control" name="examName">
				<#list globalDict['examName']?keys as key>
				<option value="${key}" ${(key==ret.model.examName)?string( 'selected="selected"','')}>${globalDict['examName'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="30" type="text" class="form-control" name="examName" value="${ret.model.examName!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="state"><span style="color: red;">*&nbsp;</span>是否有效</label>
		<div class="col-md-9">
			<#if globalDict['state']?exists> <select class="form-control" name="state">
				<#list globalDict['state']?keys as key>
				<option value="${key}" ${(key==ret.model.state?c)?string( 'selected="selected"','')}>${globalDict['state'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="state" value="${ret.model.state!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examType"><span style="color: red;">*&nbsp;</span>考试类型</label>
		<div class="col-md-9">
			<#if globalDict['examType']?exists> <select class="form-control" name="examType">
				<#list globalDict['examType']?keys as key>
				<option value="${key}" ${(key==ret.model.examType)?string( 'selected="selected"','')}>${globalDict['examType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="examType" value="${ret.model.examType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userType"><span style="color: red;">*&nbsp;</span>考试用户类型</label>
		<div class="col-md-9">
			<#if globalDict['userType']?exists> <select class="form-control" name="userType">
				<#list globalDict['userType']?keys as key>
				<option value="${key}" ${(key==ret.model.userType)?string( 'selected="selected"','')}>${globalDict['userType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="userType" value="${ret.model.userType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language"><span style="color: red;">*&nbsp;</span>语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}" ${(key==ret.model.language)?string( 'selected="selected"','')}>${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="${ret.model.language!}" /> </#if>
		</div>
	</div>
</form>
<script src="/js/views/fpExamDefine/validation.js"></script>
