<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examDefineId"><span style="color: red;">*&nbsp;</span>考试类型</label>
		<div class="col-md-9">
            <select class="form-control" name="examDefineId">
			<#list defineList as key>
                <option value="${key.id}" ${(key.id==currentDefineId)?string( 'selected="selected"','')} >${key.examName}</option>
			</#list>
            </select>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="name"><span style="color: red;">*&nbsp;</span>题库名称</label>
		<div class="col-md-9">
			<#if globalDict['name']?exists> <select class="form-control" name="name">
				<#list globalDict['name']?keys as key>
				<option value="${key}" ${(key==ret.model.name)?string( 'selected="selected"','')}>${globalDict['name'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="300" type="text" class="form-control" name="name" value="${ret.model.name!}" /> </#if>
		</div>
	</div>
</form>
<script src="/js/views/fpExamQuestionBank/validation.js"></script>
