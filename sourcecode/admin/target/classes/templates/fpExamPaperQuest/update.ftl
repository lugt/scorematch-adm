<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
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
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questionBakId">题库ID</label>
		<div class="col-md-9">
			<#if globalDict['questionBakId']?exists> <select class="form-control" name="questionBakId">
				<#list globalDict['questionBakId']?keys as key>
				<option value="${key}" ${(key==ret.model.questionBakId?c)?string( 'selected="selected"','')}>${globalDict['questionBakId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questionBakId" value="${ret.model.questionBakId!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questionPerc">题库百分比</label>
		<div class="col-md-9">
			<#if globalDict['questionPerc']?exists> <select class="form-control" name="questionPerc">
				<#list globalDict['questionPerc']?keys as key>
				<option value="${key}" ${(key==ret.model.questionPerc)?string( 'selected="selected"','')}>${globalDict['questionPerc'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questionPerc" value="${ret.model.questionPerc!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="bankQuestionCount">题目数量</label>
		<div class="col-md-9">
			<#if globalDict['bankQuestionCount']?exists> <select class="form-control" name="bankQuestionCount">
				<#list globalDict['bankQuestionCount']?keys as key>
				<option value="${key}" ${(key==ret.model.bankQuestionCount?c)?string( 'selected="selected"','')}>${globalDict['bankQuestionCount'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="bankQuestionCount" value="${ret.model.bankQuestionCount!}" /> </#if>
		</div>
	</div>
</form>

