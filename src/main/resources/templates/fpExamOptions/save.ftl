<form title="添加" class="form-horizontal " id="optionSaveForm">
	<input type="hidden" name="questId" value="${questId}">
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="optNumber">序号</label>
		<div class="col-md-9">
			<#if globalDict['optNumber']?exists> <select class="form-control" name="optNumber">
				<#list globalDict['optNumber']?keys as key>
				<option value="${key}">${globalDict['optNumber'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="optNumber" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="content">内容</label>
		<div class="col-md-9">
			<#if globalDict['content']?exists> <select class="form-control" name="content">
				<#list globalDict['content']?keys as key>
				<option value="${key}">${globalDict['content'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="content" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isRightKey">是否正确答案</label>
		<div class="col-md-9">
		    <label class="radio-inline" for="rdIsRightKey-right">
                <input id="rdIsRightKey-right" name="isRightKey" value="1" type="radio">
                                                     正确
            </label>
            <label class="radio-inline" for="rdIsRightKey-wrong">
                <input id="rdIsRightKey-wrong" name="isRightKey" value="0" checked type="radio">
                                                     错误
            </label>
		</div>
	</div>
</form>

