<form title="添加" class="form-horizontal" id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">id</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="lineCode">航线代码</label>
		<div class="col-md-9">
			<input maxlength="15" type="text" class="form-control" name="lineCode" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="lineName">航线名称</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="lineName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="departureAirport4"><span style="color: red;">*&nbsp;</span>起飞机场4字码</label>
		<div class="col-md-9">
			<input maxlength="4" dh-type="alpha" onkeypress="verifyCharType(this,event)" required="required" type="text" class="form-control" name="departureAirport4" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="arrivalAirport4"><span style="color: red;">*&nbsp;</span>降落机场4字码</label>
		<div class="col-md-9">
			<input maxlength="4" required="required" type="text" class="form-control" name="arrivalAirport4" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="distanceKm">距离千米</label>
		<div class="col-md-9">
			<input pattern="['0-9',  '.']" type="text" class="form-control" name="distanceKm" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="distanceMile">距离海里</label>
		<div class="col-md-9">
			<input pattern="['0-9',  '.']" type="text" class="form-control" name="distanceMile" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="lineDesc">航线描述（航路点）</label>
		<div class="col-md-9">
			<input maxlength="3000" type="text" class="form-control" name="lineDesc" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="safeHeigh">安全高度</label>
		<div class="col-md-9">
			<input pattern="['0-9',  '.']" type="text" class="form-control" name="safeHeigh" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="safeHeighBak">备用安全高度</label>
		<div class="col-md-9">
			<input pattern="['0-9',  '.']" type="text" class="form-control" name="safeHeighBak" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="divAirportInfo">备降机场信息</label>
		<div class="col-md-9">
			<input maxlength="300" type="text" class="form-control" name="divAirportInfo" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flyHeigh">飞行高度</label>
		<div class="col-md-9">
			<input pattern="['0-9',  '.']" type="text" class="form-control" name="flyHeigh" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="eet">FPL报EET数据</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="eet" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="foreignerPilot">航线类型</label>
		<div class="col-md-9">
			<#if globalDict['foreignerPilot']?exists> 
				<select class="form-control" name="foreignerPilot">
					<option value="">请选择</option>
					<#list globalDict['foreignerPilot']?keys as key>
					<option value="${key}">${globalDict['foreignerPilot'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="foreignerPilot" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="routeType">航路性质</label>
		<div class="col-md-9">
			<#if globalDict['routeType']?exists> 
				<select class="form-control" name="routeType">
					<option value="">请选择</option>
					<#list globalDict['routeType']?keys as key>
					<option value="${key}">${globalDict['routeType'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="routeType" value="" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isWcr">跨水航线</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="isWcr" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isEwc">延伸跨水航线</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="isEwc" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="feature">航线特征颠簸等</label>
		<div class="col-md-9">
			<input maxlength="500" type="text" class="form-control" name="feature" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="attachment">图文件资料路径</label>
		<div class="col-md-9">
			<input maxlength="200" type="text" class="form-control" name="attachment" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status"><span style="color: red;">*&nbsp;</span>有效状态</label>
		<div class="col-md-9">
			<select class="form-control" name="status">
				<option value="">请选择</option>
				<option value="1">有效</option>
				<option value="2">无效</option>
			</select> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="startDate">生效时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="startDate" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="endDate">失效时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="endDate" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="publishDate">发布时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="publishDate" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="upgradeSeatPrice">升舱票价</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="upgradeSeatPrice" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flightTime">飞行时长</label>
		<div class="col-md-9">
			<input maxlength="10" type="text" class="form-control" name="flightTime" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flightOverContry">飞越国家</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="flightOverContry" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flightOverProvince">飞越省份</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="flightOverProvince" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flightOverCity">飞越城市</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="flightOverCity" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flightOverHillRiver">飞越河流山脉</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="flightOverHillRiver" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="airportDistnceCity">城距(公里)</label>
		<div class="col-md-9">
			<input pattern="['0-9',  '.']" type="text" class="form-control" name="airportDistnceCity" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="terminal">航站信息</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="terminal" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="shareCode">代码共享</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="shareCode" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="provideMediaAmuseEquip">是否发放头等舱设备</label>
		<div class="col-md-9">
			<select class="form-control" name="provideMediaAmuseEquip">
                <option value="">请选择</option>
                <option value="0">不需要</option>
                <option value="1">需要</option>
			</select> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="routeOilWeight">消耗油量</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="routeOilWeight" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="divOilWeight">备份油量</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="divOilWeight" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="flyOilWeight">携带油量</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="flyOilWeight" value="" />
		</div>
	</div>
</form>
<script src="/js/views/aoAirline/validation.js"></script>
