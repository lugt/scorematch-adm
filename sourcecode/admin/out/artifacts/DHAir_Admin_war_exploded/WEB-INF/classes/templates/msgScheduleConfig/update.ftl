<form title="消息设置-修改" class="form-horizontal ">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="msgType">消息类型</label>
		<div class="col-md-9">
			<#if globalDict['msgType']?exists> 
				<select class="form-control" name="msgType">
					<option value="">请选择</option>
					<#list globalDict['msgType']?keys as key>
					<option value="${key}" ${(ret.model.msgType?? && key==ret.model.msgType)?string( 'selected="selected"','')}>${globalDict['msgType'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="msgType" value="${ret.model.msgType!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="trigerType">消息生产发送模式</label>
		<div class="col-md-9">
			<#if globalDict['trigerType']?exists> 
				<select class="form-control" name="trigerType">
					<option value="">请选择</option>
					<#list globalDict['trigerType']?keys as key>
					<option value="${key}" ${(ret.model.trigerType?? && key==ret.model.trigerType?c)?string( 'selected="selected"','')}>${globalDict['trigerType'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="trigerType" value="${ret.model.trigerType!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="inteval">扫描间隔(分钟)</label>
		<div class="col-md-9">
			<#if globalDict['inteval']?exists> 
				<select class="form-control" name="inteval">
					<option value="">请选择</option>
					<#list globalDict['inteval']?keys as key>
					<option value="${key}" ${(ret.model.inteval?? && key==ret.model.inteval?c)?string( 'selected="selected"','')}>${globalDict['inteval'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="number" pattern="[0-9]*" class="form-control" name="inteval" value="${ret.model.inteval!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="trigerTime">定时时间, 从几点开始</label>
		<div class="col-md-9">
			<input type="text" class="form-control" dh-type="timepick" 
			     name="trigerTime" value="${(ret.model.trigerTime?string('HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="sendType">消息推送类型</label>
		<div class="col-md-9">
			<#if globalDict['sendType']?exists> 
				<select class="form-control" name="sendType">
					<option value="">请选择</option>
					<#list globalDict['sendType']?keys as key>
					<option value="${key}" ${(ret.model.sendType?? && key==ret.model.sendType?c)?string( 'selected="selected"','')}>${globalDict['sendType'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input type="text" class="form-control" name="sendType" value="${ret.model.sendType!}" />
			</#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="content">内容模板，模板中变量用%s代替</label>
		<div class="col-md-9">
			<#if globalDict['content']?exists> 
				<select class="form-control" name="content">
					<option value="">请选择</option>
					<#list globalDict['content']?keys as key>
					<option value="${key}" ${(ret.model.content?? && key==ret.model.content)?string( 'selected="selected"','')}>${globalDict['content'][key]!}</option>
					</#list>
				</select> 
			<#else>
				<input maxlength="100" type="text" class="form-control" name="content" value="${ret.model.content!}" />
			</#if>
		</div>
	</div>
</form>

<script>
	load_date_pickers();
</script>