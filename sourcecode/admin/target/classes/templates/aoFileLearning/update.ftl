<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="title"><span style="color: red;">*&nbsp;</span>标题</label>
		<div class="col-md-9">
			<#if globalDict['title']?exists> <select class="form-control" name="title">
				<#list globalDict['title']?keys as key>
				<option value="${key}" ${(key==ret.model.title)?string( 'selected="selected"','')}>${globalDict['title'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="200" type="text" class="form-control" name="title" value="${ret.model.title!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="content">内容</label>
		<div class="col-md-9">
			<#if globalDict['content']?exists> <select class="form-control" name="content">
				<#list globalDict['content']?keys as key>
				<option value="${key}" ${(key==ret.model.content)?string( 'selected="selected"','')}>${globalDict['content'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="2000" type="text" class="form-control" name="content" value="${ret.model.content!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="publishedOn"><span style="color: red;">*&nbsp;</span>发布时间</label>
		<div class="col-md-9">
			<input type="text" class="form-control" dh-type="datepick" name="publishedOn" value="${(item.publishedOn?string('yyyy-MM-dd HH:mm:ss'))!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="publishedBy">发布人</label>
		<div class="col-md-9">
			<#if globalDict['publishedBy']?exists> <select class="form-control" name="publishedBy">
				<#list globalDict['publishedBy']?keys as key>
				<option value="${key}" ${(key==ret.model.publishedBy)?string( 'selected="selected"','')}>${globalDict['publishedBy'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="50" type="text" class="form-control" name="publishedBy" value="${ret.model.publishedBy!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="publishedByDeptName"><span style="color: red;">*&nbsp;</span>发布部门</label>
		<div class="col-md-9">
			<#if globalDict['publishedByDeptName']?exists> <select class="form-control" name="publishedByDeptName">
				<#list globalDict['publishedByDeptName']?keys as key>
				<option value="${key}" ${(key==ret.model.publishedByDeptName)?string( 'selected="selected"','')}>${globalDict['publishedByDeptName'][key]!}</option>
				</#list>
			</select> <#else /> <input maxlength="20" type="text" class="form-control" name="publishedByDeptName" value="${ret.model.publishedByDeptName!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="noticeType">发布对象</label>
		<div class="col-md-9">
			<#if globalDict['noticeType']?exists> <select class="form-control" name="noticeType">
				<#list globalDict['noticeType']?keys as key>
				<option value="${key}" ${(key==ret.model.noticeType)?string( 'selected="selected"','')}>${globalDict['noticeType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="noticeType" value="${ret.model.noticeType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="filePath">文件路径</label>
		<div class="col-md-9">
			<#if globalDict['filePath']?exists> <select class="form-control" name="filePath">
				<#list globalDict['filePath']?keys as key>
				<option value="${key}" ${(key==ret.model.filePath)?string( 'selected="selected"','')}>${globalDict['filePath'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="filePath" value="${ret.model.filePath!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language"><span style="color: red;">*&nbsp;</span>语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}" ${(key==ret.model.language)?string( 'selected="selected"','')}>${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="${ret.model.language!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isMustReed">是否必读</label>
		<div class="col-md-9">
			<#if globalDict['isMustReed']?exists> <select class="form-control" name="isMustReed">
				<#list globalDict['isMustReed']?keys as key>
				<option value="${key}" ${(key==ret.model.isMustReed?c)?string( 'selected="selected"','')}>${globalDict['isMustReed'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="isMustReed" value="${ret.model.isMustReed!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="fileType">文件类型</label>
		<div class="col-md-9">
			<#if globalDict['F_TYPE']?exists> <select class="form-control" name="fileType">
				<#list globalDict['F_TYPE']?keys as key>
				<option value="${key}" ${(key==ret.model.fileType)?string( 'selected="selected"','')}>${globalDict['F_TYPE'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="fileType" value="${ret.model.fileType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="focId">FOC记录ID</label>
		<div class="col-md-9">
			<#if globalDict['focId']?exists> <select class="form-control" name="focId">
				<#list globalDict['focId']?keys as key>
				<option value="${key}" ${(key==ret.model.focId)?string( 'selected="selected"','')}>${globalDict['focId'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="focId" value="${ret.model.focId!}" /> </#if>
		</div>
	</div>
</form>
<script src="/js/views/aoFileLearning/validation.js"></script>
<script>
	load_date_pickers();
</script>

