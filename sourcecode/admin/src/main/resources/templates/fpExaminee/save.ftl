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
		<label class="col-md-3 form-control-label" for="userNo">工号</label>
		<div class="col-md-9">
			<#if globalDict['userNo']?exists> <select class="form-control" name="userNo">
				<#list globalDict['userNo']?keys as key>
				<option value="${key}">${globalDict['userNo'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="userNo" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="paperId">试卷ID</label>
		<div class="col-md-9">
			<#if globalDict['paperId']?exists> <select class="form-control" name="paperId">
				<#list globalDict['paperId']?keys as key>
				<option value="${key}">${globalDict['paperId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="paperId" value="" /> </#if>
		</div>
	</div>
</form>

