<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<div class="col-md-9">
			<input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="lineCode">线路编号</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="lineCode" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busLine"><span style="color: red;">*&nbsp;</span>线路名称</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="busLine" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isAllday">是否全天</label>
		<div class="col-md-9">
			<#if globalDict['isAllday']?exists> 
				<select class="form-control" name="isAllday">
					<option value="">请选择</option>
					<#list globalDict['isAllday']?keys as key>
					<option value="${key}">${globalDict['isAllday'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="isAllday" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="state">有效状态</label>
		<div class="col-md-9">
			<#if globalDict['state']?exists> 
				<select class="form-control" name="state">
					<option value="">请选择</option>
					<#list globalDict['state']?keys as key>
					<option value="${key}">${globalDict['state'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="state" value="" />
			</#if>
		</div>
	</div>
</form>
<script src="/js/views/gdCrewBus/validation.js"></script>
