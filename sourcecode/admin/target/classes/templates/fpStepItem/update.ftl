<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
    <input type="hidden" class="form-control" name="stepId" value="${ret.model.stepId!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="itemName">项目名称</label>
		<div class="col-md-9">
			<#if globalDict['itemName']?exists> <select class="form-control" name="itemName">
				<#list globalDict['itemName']?keys as key>
				<option value="${key}" ${(key==ret.model.itemName)?string( 'selected="selected"','')}>${globalDict['itemName'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="300" type="text" class="form-control" name="itemName" value="${ret.model.itemName!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="itemNo">项目编号 </label>
		<div class="col-md-9">
			<#if globalDict['itemNo']?exists> <select class="form-control" name="itemNo">
				<#list globalDict['itemNo']?keys as key>
				<option value="${key}" ${(key==ret.model.itemNo)?string( 'selected="selected"','')}>${globalDict['itemNo'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="50" type="text" class="form-control" name="itemNo" value="${ret.model.itemNo!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="itemCode">项目编码,如证照编码与证照类型关联</label>
		<div class="col-md-9">
			<#if globalDict['itemCode']?exists> <select class="form-control" name="itemCode">
				<#list globalDict['itemCode']?keys as key>
				<option value="${key}" ${(key==ret.model.itemCode)?string( 'selected="selected"','')}>${globalDict['itemCode'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="itemCode" value="${ret.model.itemCode!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="targetUserType">面向用户</label>
		<div class="col-md-9">
			<#if globalDict['targetUserType']?exists> <select class="form-control" name="targetUserType">
				<#list globalDict['targetUserType']?keys as key>
				<option value="${key}" ${(key==ret.model.targetUserType?c)?string( 'selected="selected"','')}>${globalDict['targetUserType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="targetUserType" value="${ret.model.targetUserType!}" /> </#if>
		</div>
	</div>
</form>

<script src="/js/views/fpStepItem/validation.js"></script>