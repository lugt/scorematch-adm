<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">id</label>
		<div class="col-md-9">
			<#if globalDict['id']?exists> <select class="form-control" name="id">
				<#list globalDict['id']?keys as key>
				<option value="${key}">${globalDict['id'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="id" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="stepName">步骤名称</label>
		<div class="col-md-9">
			<#if globalDict['stepName']?exists> <select class="form-control" name="stepName">
				<#list globalDict['stepName']?keys as key>
				<option value="${key}">${globalDict['stepName'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="stepName" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="stepNo">步骤编号</label>
		<div class="col-md-9">
			<#if globalDict['stepNo']?exists> <select class="form-control" name="stepNo">
				<#list globalDict['stepNo']?keys as key>
				<option value="${key}">${globalDict['stepNo'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="stepNo" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="checkType">检查确认类型 </label>
		<div class="col-md-9">
			<#if globalDict['checkType']?exists> <select class="form-control" name="checkType">
				<#list globalDict['checkType']?keys as key>
				<option value="${key}">${globalDict['checkType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="checkType" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status">状态</label>
		<div class="col-md-9">
			<#if globalDict['status']?exists> <select class="form-control" name="status">
				<#list globalDict['status']?keys as key>
				<option value="${key}">${globalDict['status'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="status" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="fpType">准备类型</label>
		<div class="col-md-9">
			<#if globalDict['fpType']?exists> <select class="form-control" name="fpType">
				<#list globalDict['fpType']?keys as key>
				<option value="${key}">${globalDict['fpType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="fpType" value="" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language">语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}">${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="" /> </#if>
		</div>
	</div>
</form>

