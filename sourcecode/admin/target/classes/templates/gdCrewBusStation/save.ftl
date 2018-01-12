<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<div class="col-md-9">
			<input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="stationName"><span style="color: red;">*&nbsp;</span>站点名称</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="stationName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="time">时刻</label>
		<div class="col-md-9">
			<input id="edtTime" type="text" class="form-control" 
			     dh-type="timepick" name="time" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busId">机组车线路</label>
		<div class="col-md-9">
			<#if busList?exists> 
				<select class="form-control" name="busId">
					<option value="">请选择</option>
					<#list busList as item>
					<option value="${item.id!}">${item.busLine!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="busId" value="" />
			</#if>
		</div>
	</div>
</form>
<script src="/js/views/gdCrewBusStation/validation.js"></script>
<script>
$(function (){
    $("#edtTime").mask("99:99:99");
    load_date_pickers();  
})
</script>
