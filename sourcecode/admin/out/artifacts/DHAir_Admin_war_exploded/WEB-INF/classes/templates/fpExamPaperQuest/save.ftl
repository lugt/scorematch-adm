<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">ID</label>
		<div class="col-md-9">
			<#if globalDict['id']?exists> <select class="form-control" name="id">
				<#list globalDict['id']?keys as key>
				<option value="${key}">${globalDict['id'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="id" value="" /> </#if>
		</div>
	</div>
    <input type="hidden" name="paperId" value="${paperId}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questionBakId">题库</label>
		<div class="col-md-9">
			<select class="form-control" name="questionBakId">
				<#list bankList as key>
				<option value="${key.id!}">${key.name!}</option>
				</#list>
			</select>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questionPerc">题库百分比</label>
		<div class="col-md-9">
			<#if globalDict['questionPerc']?exists> <select class="form-control" name="questionPerc">
				<#list globalDict['questionPerc']?keys as key>
				<option value="${key}">${globalDict['questionPerc'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questionPerc" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="bankQuestionCount">题目数量</label>
		<div class="col-md-9">
			<#if globalDict['bankQuestionCount']?exists> <select class="form-control" name="bankQuestionCount">
				<#list globalDict['bankQuestionCount']?keys as key>
				<option value="${key}">${globalDict['bankQuestionCount'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="bankQuestionCount" value="" /> </#if>
		</div>
	</div>
</form>

