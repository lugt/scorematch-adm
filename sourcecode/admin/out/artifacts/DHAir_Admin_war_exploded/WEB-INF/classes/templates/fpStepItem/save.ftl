<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<input type="hidden" class="form-control" name="stepId" value="${stepId!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="itemName"><span style="color: red;">*&nbsp;</span>项目名称</label>
		<div class="col-md-9">
			<#if globalDict['itemName']?exists> <select class="form-control" name="itemName">
				<#list globalDict['itemName']?keys as key>
				<option value="${key}">${globalDict['itemName'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="300" type="text" class="form-control" name="itemName" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="itemNo"><span style="color: red;">*&nbsp;</span>项目编号 </label>
		<div class="col-md-9">
			<#if globalDict['itemNo']?exists> <select class="form-control" name="itemNo">
				<#list globalDict['itemNo']?keys as key>
				<option value="${key}">${globalDict['itemNo'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="50" type="text" class="form-control" name="itemNo" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="itemCode">项目编码</label>
		<div class="col-md-9">
			<#if globalDict['itemCode']?exists> <select class="form-control" name="itemCode">
				<#list globalDict['itemCode']?keys as key>
				<option value="${key}">${globalDict['itemCode'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="itemCode" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="targetUserType">面向用户</label>
		<div class="col-md-9">
			<#if globalDict['targetUserType']?exists> <select class="form-control" name="targetUserType">
				<#list globalDict['targetUserType']?keys as key>
				<option value="${key}">${globalDict['targetUserType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="targetUserType" value="" /> </#if>
		</div>
	</div>
</form>

<script src="/js/views/fpStepItem/validation.js"></script>