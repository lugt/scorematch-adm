<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<input type="hidden" name="questionBankId" value="${bank.id!}">
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questionBankId">题库名称</label>
		<div class="col-md-9">
			<input type="text" class="form-control" readonly="true" value="${bank.name!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="title">题目</label>
		<div class="col-md-9">
		    <textarea id="content-input" name="title" rows="5" 
                class="form-control" placeholder="题目......"></textarea>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questType">题目类型</label>
		<div class="col-md-9">
			<#if globalDict['questType']?exists> <select class="form-control" name="questType">
				<#list globalDict['questType']?keys as key>
				<option value="${key}">${globalDict['questType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questType" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="state">是否有效</label>
		<div class="col-md-9">
			<#if globalDict['state']?exists> <select class="form-control" name="state">
				<#list globalDict['state']?keys as key>
				<option value="${key}">${globalDict['state'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="state" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="difficultyDegree">难度系数</label>
		<div class="col-md-9">
			<#if globalDict['difficultyDegree']?exists> <select class="form-control" name="difficultyDegree">
				<#list globalDict['difficultyDegree']?keys as key>
				<option value="${key}">${globalDict['difficultyDegree'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="difficultyDegree" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language">语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}">${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="" /> </#if>
		</div>
	</div>
</form>
