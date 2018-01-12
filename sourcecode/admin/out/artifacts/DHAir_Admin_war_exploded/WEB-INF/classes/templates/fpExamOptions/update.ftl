<form title="更新" class="form-horizontal " id="saveOrUpdateForm">

	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
    <input type="hidden" class="form-control" name="questId" value="${ret.model.questId!}" />

	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="optNumber">序号</label>
		<div class="col-md-9">
			<#if globalDict['optNumber']?exists> <select class="form-control" name="optNumber">
				<#list globalDict['optNumber']?keys as key>
				<option value="${key}" ${(key==ret.model.optNumber)?string( 'selected="selected"','')}>${globalDict['optNumber'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="optNumber" value="${ret.model.optNumber!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="content"><span style="color:red">*&nbsp;</span>内容</label>
		<div class="col-md-9">
			<#if globalDict['content']?exists> <select class="form-control" name="content">
				<#list globalDict['content']?keys as key>
				<option value="${key}" ${(key==ret.model.content)?string( 'selected="selected"','')}>${globalDict['content'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="200" required="required" type="text" class="form-control" name="content" value="${ret.model.content!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isRightKey"><span style="color:red">*&nbsp;</span> 是否正确答案</label>
		<div class="col-md-9">
            <label class="radio-inline" for="rdIsRightKey-right">
                <#if ret.model.isRightKey==1>
                <input id="rdIsRightKey-right" name="isRightKey" value="1" checked type="radio">
                <#else>
                <input id="rdIsRightKey-right" name="isRightKey" value="1" type="radio">
                </#if>
                                                     正确
            </label>
            <label class="radio-inline" for="rdIsRightKey-wrong">
                <#if ret.model.isRightKey==0>
                <input id="rdIsRightKey-wrong" name="isRightKey" value="0" checked type="radio">
                <#else>
                <input id="rdIsRightKey-wrong" name="isRightKey" value="0" type="radio">
                </#if>
                                                     错误
            </label>
		</div>
	</div>
</form>

