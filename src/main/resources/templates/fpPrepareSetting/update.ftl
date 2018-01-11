<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userType"><span style="color: red;">*&nbsp;</span>用户类型</label>
		<div class="col-md-9">
			<#if globalDict['userType']?exists> 
				<select class="form-control" name="userType">
					<option value="">请选择</option>
					<#list globalDict['userType']?keys as key>
					<option value="${key}" ${(ret.model.userType?? && key==ret.model.userType)?string( 'selected="selected"','')}>${globalDict['userType'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="userType" value="${ret.model.userType!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="preMinHours"><span style="color: red;">*&nbsp;</span>最晚提前准备时间配置小时</label>
		<div class="col-md-9">
			<#if globalDict['preMinHours']?exists> 
				<select class="form-control" name="preMinHours">
					<option value="">请选择</option>
					<#list globalDict['preMinHours']?keys as key>
					<option value="${key}" ${(ret.model.preMinHours?? && key==ret.model.preMinHours?c)?string( 'selected="selected"','')}>${globalDict['preMinHours'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input maxlength="4" type="number" class="form-control" name="preMinHours" value="${ret.model.preMinHours!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="preMaxHours"><span style="color: red;">*&nbsp;</span>最早提前准备时间配置小时</label>
		<div class="col-md-9">
			<#if globalDict['preMaxHours']?exists> 
				<select class="form-control" name="preMaxHours">
					<option value="">请选择</option>
					<#list globalDict['preMaxHours']?keys as key>
					<option value="${key}" ${(ret.model.preMaxHours?? && key==ret.model.preMaxHours?c)?string( 'selected="selected"','')}>${globalDict['preMaxHours'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input maxlength="4" type="number" class="form-control" name="preMaxHours" value="${ret.model.preMaxHours!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="checkinAlertHours"><span style="color: red;">*&nbsp;</span>签到提醒时间</label>
		<div class="col-md-9">
			<#if globalDict['checkinAlertHours']?exists> 
				<select class="form-control" name="checkinAlertHours">
					<option value="">请选择</option>
					<#list globalDict['checkinAlertHours']?keys as key>
					<option value="${key}" ${(ret.model.checkinAlertHours?? && key==ret.model.checkinAlertHours?c)?string( 'selected="selected"','')}>${globalDict['checkinAlertHours'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input maxlength="4" type="number" class="form-control" name="checkinAlertHours" value="${ret.model.checkinAlertHours!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="checkinAlertText"><span style="color: red;">*&nbsp;</span>航前签到时间的文字</label>
		<div class="col-md-9">
			<#if globalDict['checkinAlertText']?exists> 
				<select class="form-control" name="checkinAlertText">
					<option value="">请选择</option>
					<#list globalDict['checkinAlertText']?keys as key>
					<option value="${key}" ${(ret.model.checkinAlertText?? && key==ret.model.checkinAlertText)?string( 'selected="selected"','')}>${globalDict['checkinAlertText'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="checkinAlertText" value="${ret.model.checkinAlertText!}" />
			</#if>
		</div>
	</div>
</form>
<script src="/js/views/fpPrepareSetting/validation.js"></script>
