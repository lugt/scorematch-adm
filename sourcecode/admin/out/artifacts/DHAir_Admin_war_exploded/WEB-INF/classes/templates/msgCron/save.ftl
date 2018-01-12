<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">id</label>
		<div class="col-md-9">
			<#if globalDict['id']?exists> 
				<select class="form-control" name="id">
					<option value="">请选择</option>
					<#list globalDict['id']?keys as key>
					<option value="${key}">${globalDict['id'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="id" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="cron">cron</label>
		<div class="col-md-9">
			<#if globalDict['cron']?exists> 
				<select class="form-control" name="cron">
					<option value="">请选择</option>
					<#list globalDict['cron']?keys as key>
					<option value="${key}">${globalDict['cron'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="cron" value="" />
			</#if>
		</div>
	</div>
</form>

