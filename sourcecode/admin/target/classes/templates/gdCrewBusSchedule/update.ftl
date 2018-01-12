<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busId"><span style="color: red;">*&nbsp;</span>机组车线路</label>
		<div class="col-md-9">
            <#if busList?exists> 
                <select class="form-control" name="busId">
                    <#list busList as item>
                    <option value="${item.id!}" ${(ret.model.busId?? && item.id==ret.model.busId)?string( 'selected="selected"','')}>${item.busLine!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="busId" value="${ret.model.busId!}" />
            </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="schDate"><span style="color: red;">*&nbsp;</span>排班日期</label>
		<div class="col-md-9">
			<input onkeyup="verifyCharType(this.event)" type="text" dh-type="datepick" class="form-control" name="schDate" value="<#if ret.model.schDate?? >${ret.model.schDate?string('yyyy-MM-dd')}</#if>" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="driverId"><span style="color: red;">*&nbsp;</span>司机</label>
		<div class="col-md-9">
            <#if driverList?exists> 
                <select class="form-control" name="driverId">
                    <#list driverList as item>
                    <option value="${item.id!}" ${(ret.model.driverId?? && item.id==ret.model.driverId)?string( 'selected="selected"','')}>${item.driver!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="driverId" value="${ret.model.driverId!}" />
            </#if>
		</div>
	</div>
</form>
<script src="/js/views/gdCrewBusSchedule/validation.js"></script>
<script>
    load_date_pickers();
</script>
