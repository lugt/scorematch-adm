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
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questId">题目ID</label>
		<div class="col-md-9">
			<#if globalDict['questId']?exists> <select class="form-control" name="questId">
				<#list globalDict['questId']?keys as key>
				<option value="${key}">${globalDict['questId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questId" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="answer">回答答案</label>
		<div class="col-md-9">
			<#if globalDict['answer']?exists> <select class="form-control" name="answer">
				<#list globalDict['answer']?keys as key>
				<option value="${key}">${globalDict['answer'][key]!}</option>
				</#list>
			</select> <#else /> <input required="required" type="text" class="form-control" name="answer" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isRight">是否正确</label>
		<div class="col-md-9">
			<#if globalDict['isRight']?exists> <select class="form-control" name="isRight">
				<#list globalDict['isRight']?keys as key>
				<option value="${key}">${globalDict['isRight'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="isRight" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="ansId">回答结果主表ID</label>
		<div class="col-md-9">
			<#if globalDict['ansId']?exists> <select class="form-control" name="ansId">
				<#list globalDict['ansId']?keys as key>
				<option value="${key}">${globalDict['ansId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="ansId" value="" /> </#if>
		</div>
	</div>
</form>

