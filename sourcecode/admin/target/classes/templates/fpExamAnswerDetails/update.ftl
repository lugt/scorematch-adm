<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questId">题目ID</label>
		<div class="col-md-9">
			<#if globalDict['questId']?exists> <select class="form-control" name="questId">
				<#list globalDict['questId']?keys as key>
				<option value="${key}" ${(key==ret.model.questId?c)?string( 'selected="selected"','')}>${globalDict['questId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questId" value="${ret.model.questId!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="answer">回答答案</label>
		<div class="col-md-9">
			<#if globalDict['answer']?exists> <select class="form-control" name="answer">
				<#list globalDict['answer']?keys as key>
				<option value="${key}" ${(key==ret.model.answer)?string( 'selected="selected"','')}>${globalDict['answer'][key]!}</option>
				</#list>
			</select> <#else /> <input required="required" type="text" class="form-control" name="answer" value="${ret.model.answer!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isRight">是否正确</label>
		<div class="col-md-9">
			<#if globalDict['isRight']?exists> <select class="form-control" name="isRight">
				<#list globalDict['isRight']?keys as key>
				<option value="${key}" ${(key==ret.model.isRight?c)?string( 'selected="selected"','')}>${globalDict['isRight'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="isRight" value="${ret.model.isRight!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="ansId">回答结果主表ID</label>
		<div class="col-md-9">
			<#if globalDict['ansId']?exists> <select class="form-control" name="ansId">
				<#list globalDict['ansId']?keys as key>
				<option value="${key}" ${(key==ret.model.ansId?c)?string( 'selected="selected"','')}>${globalDict['ansId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="ansId" value="${ret.model.ansId!}" /> </#if>
		</div>
	</div>
</form>

