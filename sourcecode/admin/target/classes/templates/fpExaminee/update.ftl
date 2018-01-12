<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userNo">工号</label>
		<div class="col-md-9">
			<#if globalDict['userNo']?exists> <select class="form-control" name="userNo">
				<#list globalDict['userNo']?keys as key>
				<option value="${key}" ${(key==ret.model.userNo)?string( 'selected="selected"','')}>${globalDict['userNo'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="userNo" value="${ret.model.userNo!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="paperId">试卷ID</label>
		<div class="col-md-9">
			<#if globalDict['paperId']?exists> <select class="form-control" name="paperId">
				<#list globalDict['paperId']?keys as key>
				<option value="${key}" ${(key==ret.model.paperId?c)?string( 'selected="selected"','')}>${globalDict['paperId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="paperId" value="${ret.model.paperId!}" /> </#if>
		</div>
	</div>
</form>

