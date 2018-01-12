<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="driver"><span style="color: red;">*&nbsp;</span>司机姓名</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="driver" value="${ret.model.driver!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="mobilePhone"><span style="color: red;">*&nbsp;</span>联系方式</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="mobilePhone" value="${ret.model.mobilePhone!}" />
		</div>
	</div>
</form>

<script src="/js/views/gdCrewBusdriver/validation.js"></script>