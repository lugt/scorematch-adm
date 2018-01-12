<form title="添加" class="form-horizontal "  id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">ID</label>
		<div class="col-md-9">
			<#if globalDict['id']?exists> <select class="form-control" name="id">
				<#list globalDict['id']?keys as key>
				<option value="${key}">${globalDict['id'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="id" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="name"><span style="color: red;">*&nbsp;</span>试卷名称</label>
		<div class="col-md-9">
			<#if globalDict['name']?exists> <select class="form-control" name="name">
				<#list globalDict['name']?keys as key>
				<option value="${key}">${globalDict['name'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="50" type="text" class="form-control" name="name" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="generatedOn"><span style="color: red;">*&nbsp;</span>生成日期</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="generatedOn" dh-type="datepick" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="effectStartDate"><span style="color: red;">*&nbsp;</span>生效时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="effectStartDate" dh-type="datetimepick" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="effectEndDate">生效截止时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="effectEndDate" dh-type="datetimepick"  value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examType"><span style="color: red;">*&nbsp;</span>考试大类</label>
		<div class="col-md-9">
			<#if globalDict['examType']?exists> <select class="form-control" name="examType">
				<#list globalDict['examType']?keys as key>
				<option value="${key}">${globalDict['examType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="examType" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status"><span style="color: red;">*&nbsp;</span>有效状态</label>
		<div class="col-md-9">
			<#if globalDict['status']?exists> <select class="form-control" name="status">
				<#list globalDict['status']?keys as key>
				<option value="${key}">${globalDict['status'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="status" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="deadline">完成时限</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="deadline" dh-type="datetimepick" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examTimes">允许考试次数</label>
		<div class="col-md-9">
			<#if globalDict['examTimes']?exists> <select class="form-control" name="examTimes">
				<#list globalDict['examTimes']?keys as key>
				<option value="${key}">${globalDict['examTimes'][key]!}</option>
				</#list>
			</select> <#else /> <input type="number" min="0" class="form-control" name="examTimes" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="timeLimit">完成时长(分钟)</label>
		<div class="col-md-9">
			<#if globalDict['timeLimit']?exists> <select class="form-control" name="timeLimit">
				<#list globalDict['timeLimit']?keys as key>
				<option value="${key}">${globalDict['timeLimit'][key]!}</option>
				</#list>
			</select> <#else /> <input type="number" min="0" class="form-control" name="timeLimit" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questCount">题目数</label>
		<div class="col-md-9">
			<#if globalDict['questCount']?exists> <select class="form-control" name="questCount">
				<#list globalDict['questCount']?keys as key>
				<option value="${key}">${globalDict['questCount'][key]!}</option>
				</#list>
			</select> <#else /> <input type="number" min="0" class="form-control" name="questCount" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userType"><span style="color: red;">*&nbsp;</span>考试用户类型</label>
		<div class="col-md-9">
			<#if globalDict['userType']?exists> <select class="form-control" name="userType">
				<#list globalDict['userType']?keys as key>
				<option value="${key}">${globalDict['userType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="userType" value="" /> </#if>
		</div>
	</div>
	<!-- 
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userScope">考试用户范围</label>
		<div class="col-md-9">
			<#if globalDict['userScope']?exists> <select class="form-control" name="userScope">
				<#list globalDict['userScope']?keys as key>
				<option value="${key}">${globalDict['userScope'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="userScope" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="examQuestScope"><span style="color: red;">*&nbsp;</span>生成试卷方式</label>
		<div class="col-md-9">
			<#if globalDict['examQuestScope']?exists> <select class="form-control" name="examQuestScope">
				<#list globalDict['examQuestScope']?keys as key>
				<option value="${key}">${globalDict['examQuestScope'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="examQuestScope" value="" /> </#if>
		</div>
	</div>
	-->
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language"><span style="color: red;">*&nbsp;</span>语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}">${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="passQstCount">合格题数</label>
		<div class="col-md-9">
			<#if globalDict['passQstCount']?exists> <select class="form-control" name="passQstCount">
				<#list globalDict['passQstCount']?keys as key>
				<option value="${key}">${globalDict['passQstCount'][key]!}</option>
				</#list>
			</select> <#else /> <input type="number" min="0" class="form-control" name="passQstCount" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="fpExamDefineId">考试类别</label>
		<div class="col-md-9">
			<select class="form-control" name="fpExamDefineId">
				<#list defineList as key>
				<option value="${key.id}">${key.examName}</option>
				</#list>
			</select>
		</div>
	</div>
</form>
<script src="/js/views/fpExamPaper/validation.js"></script>
<script>
    load_date_pickers();
</script>
