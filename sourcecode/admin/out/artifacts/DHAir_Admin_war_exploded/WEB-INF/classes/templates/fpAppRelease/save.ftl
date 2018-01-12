<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">id</label>
		<div class="col-md-9">
				<input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="appName"><span style="color: red;">*&nbsp;</span>应用名称</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="appName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="appVersion"><span style="color: red;">*&nbsp;</span>应用版本号</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="appVersion" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isCurrent">是否发布中版本</label>
		<div class="col-md-9">
			<select class="form-control" name="isCurrent">
				<option value="1">发布中版本</option>
				<option value="0">历史版本</option>
			</select> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="remark">备注</label>
		<div class="col-md-9">
			<input type="text" class="form-control" name="remark" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="packageUrl"><span style="color: red;">*&nbsp;</span>包路径</label>
		<div class="col-md-9">
			<input type="file" id="fileInput_package" 
                placeholder="选择文件" class="fileInputClass" 
                dh_id="lastFileCount" dh_persisted="no"/>           
		</div>
	</div>
</form>
<script src="/js/views/aoComNotice/validation.js"></script>
