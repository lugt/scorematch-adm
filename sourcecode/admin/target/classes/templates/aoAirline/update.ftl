<form title="更新" class="form-horizontal" id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="lineCode">航线代码</label>
		<div class="col-md-9">
			<input readonly="true" type="text" class="form-control" name="lineCode" value="${ret.model.lineCode!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="lineName">航线名称</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="lineName" value="${ret.model.lineName!}" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="upgradeSeatPrice">升舱票价</label>
        <div class="col-md-9">
            <input type="number"  min="0.0" step="0.01" class="form-control" name="upgradeSeatPrice" value="${ret.model.upgradeSeatPrice!}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="flightTime">飞行时长</label>
        <div class="col-md-9">
            <input maxlength="10" type="text" class="form-control" name="flightTime" value="${ret.model.flightTime!}" />
        </div>
    </div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flyHeigh">飞行高度</label>
		<div class="col-md-9">
			<input type="number" step="0.1" class="form-control" name="flyHeigh" value="${ret.model.flyHeigh!}" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="flightOverContry">飞越国家</label>
        <div class="col-md-9">
            <input maxlength="30" type="text" class="form-control" name="flightOverContry" value="${ret.model.flightOverContry!}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="flightOverProvince">飞越省份</label>
        <div class="col-md-9">
            <input maxlength="30" type="text" class="form-control" name="flightOverProvince" value="${ret.model.flightOverProvince!}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="flightOverCity">飞越城市</label>
        <div class="col-md-9">
            <input maxlength="100" type="text" class="form-control" name="flightOverCity" value="${ret.model.flightOverCity!}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="flightOverHillRiver">飞越河流山脉</label>
        <div class="col-md-9">
            <input maxlength="100" type="text" class="form-control" name="flightOverHillRiver" value="${ret.model.flightOverHillRiver!}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="airportDistnceCity">机场距城市距离，公里</label>
        <div class="col-md-9">
            <input type="number"  min="0.0" step="0.1" class="form-control" name="airportDistnceCity" value="${ret.model.airportDistnceCity!}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="terminal">航站信息</label>
        <div class="col-md-9">
            <input maxlength="50" type="text" class="form-control" name="terminal" value="${ret.model.terminal!}" />
        </div>
    </div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="feature">航线特征颠簸等</label>
		<div class="col-md-9">
			<input maxlength="500" type="text" class="form-control" name="feature" value="${ret.model.feature!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status"><span style="color: red;">*&nbsp;</span>状态</label>
		<div class="col-md-9">
			<select class="form-control" name="status">
				<option value="">请选择</option>
                <option value="1" ${('1'==ret.model.status?c)?string( 'selected="selected"','')}>有效</option>
                <option value="2" ${('2'==ret.model.status?c)?string( 'selected="selected"','')}>无效</option>
			</select> 
		</div>
	</div>
</form>
<script src="/js/views/aoAirline/validation.js"></script>

