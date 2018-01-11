<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="cron">cron</label>
		<div class="col-md-9">
			<#if globalDict['cron']?exists> 
				<select class="form-control" name="cron">
					<option value="">请选择</option>
					<#list globalDict['cron']?keys as key>
					<option value="${key}" ${(ret.model.cron?? && key==ret.model.cron)?string( 'selected="selected"','')}>${globalDict['cron'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="cron" value="${ret.model.cron!}" />
			</#if>
		</div>
	</div>
</form>

