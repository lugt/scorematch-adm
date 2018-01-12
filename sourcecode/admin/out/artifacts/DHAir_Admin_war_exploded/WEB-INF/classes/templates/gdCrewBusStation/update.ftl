<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="stationName"><span style="color: red;">*&nbsp;</span>站点名称</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="stationName" value="${ret.model.stationName!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="time">时刻</label>
		<div class="col-md-9">
			<input id="edtTime" type="text" class="form-control" 
			     dh-type="timepick" name="time" value="${(ret.model.time?string('HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busId">机组车线路</label>
		<div class="col-md-9">
            <#if busList?exists> 
                <select class="form-control" name="busId">
                    <option value="">请选择</option>
                    <#list busList as item>
                    <option value="${item.id!}" ${(ret.model.busId?? && item.id==ret.model.busId)?string( 'selected="selected"','')}>${item.busLine!}</option>
                    </#list>
                </select> 
            <#else>
				<input type="text" class="form-control" name="busId" value="${ret.model.busId!}" />
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