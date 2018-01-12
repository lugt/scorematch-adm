<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="stepName">步骤名称</label>
		<div class="col-md-9">
			<#if globalDict['stepName']?exists> <select class="form-control" name="stepName">
				<#list globalDict['stepName']?keys as key>
				<option value="${key}" ${(key==ret.model.stepName)?string( 'selected="selected"','')}>${globalDict['stepName'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="stepName" value="${ret.model.stepName!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="stepNo">步骤编号</label>
		<div class="col-md-9">
			<#if globalDict['stepNo']?exists> <select class="form-control" name="stepNo">
				<#list globalDict['stepNo']?keys as key>
				<option value="${key}" ${(key==ret.model.stepNo?c)?string( 'selected="selected"','')}>${globalDict['stepNo'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="stepNo" value="${ret.model.stepNo!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="checkType">检查确认类型</label>
		<div class="col-md-9">
			<#if globalDict['checkType']?exists> <select class="form-control" name="checkType">
				<#list globalDict['checkType']?keys as key>
				<option value="${key}" ${(key==ret.model.checkType?c)?string( 'selected="selected"','')}>${globalDict['checkType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="checkType" value="${ret.model.checkType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status">状态</label>
		<div class="col-md-9">
			<#if globalDict['status']?exists> <select class="form-control" name="status">
				<#list globalDict['status']?keys as key>
				<option value="${key}" ${(key==ret.model.status?c)?string( 'selected="selected"','')}>${globalDict['status'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="status" value="${ret.model.status!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="fpType">准备类型</label>
		<div class="col-md-9">
			<#if globalDict['fpType']?exists> <select class="form-control" name="fpType">
				<#list globalDict['fpType']?keys as key>
				<option value="${key}" ${(key==ret.model.fpType)?string( 'selected="selected"','')}>${globalDict['fpType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="fpType" value="${ret.model.fpType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language">语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}" ${(key==ret.model.language)?string( 'selected="selected"','')}>${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="${ret.model.language!}" /> </#if>
		</div>
	</div>
</form>

