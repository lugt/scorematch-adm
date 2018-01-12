<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<div class="col-md-9">
			<input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busId"><span style="color: red;">*&nbsp;</span>机组车线路</label>
		<div class="col-md-9">
            <#if busList?exists> 
                <select class="form-control" name="busId">
                    <#list busList as item>
                        <option value="${item.id!}" ${(query.busId?exists && (item.id == query.busId))?string("selected='selected'","")}>${item.busLine!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="busId" value="" />
            </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="schDate"><span style="color: red;">*&nbsp;</span>排班日期</label>
		<div class="col-md-9">
			<input maxlength="30" onkeyup="verifyCharType(this,event)" type="text" class="form-control" dh-type="datepick" name="schDate" value="<#if query.schDate?? >${query.schDate?string("yyyy-MM-dd")}</#if>" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="driverId"><span style="color: red;">*&nbsp;</span>司机</label>
		<div class="col-md-9">
            <#if driverList?exists> 
                <select class="form-control" name="driverId">
                    <#list driverList as item>
                    <option value="${item.id!}">${item.driver!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="driverId" value="" />
            </#if>
		</div>
	</div>
</form>
<script src="/js/views/gdCrewBusSchedule/validation.js"></script>
<script>
	load_date_pickers();
</script>