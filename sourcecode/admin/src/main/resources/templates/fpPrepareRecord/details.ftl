<div class="modal-content">
	<div class="modal-header">
		<h6 class="modal-title">个人准备情况</h6>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
		<form title="个人准备情况" class="form-horizontal " id="saveOrUpdateForm">
			<div class="form-group row">
				<table class="table table-bordered table-striped table-condensed">
					<thead>
						<tr>
						    <th>序号</th>
							<th>姓名</th>
							<th>准备状态</th>
							<th>准备开始时间</th>
							<th>准备结束时间</th>
							<th>手机</th>
						</tr>
					</thead>
					<tbody id="table_data">
						<#list ret.model as item>
						<tr>
						    <td>${item_index+1}</td>
							<td>${item.userName!}</td>
							<td>${item.prepareStatusName!}</td>
							<td>${(item.beginPrepareTime?string('yyyy-MM-dd hh:mm'))!}</td>
							<td>${(item.endPrepareTime?string('yyyy-MM-dd hh:mm'))!}</td>
							<td>${item.mobilePhone!}</td>
						</tr>
						</#list>
					</tbody>
				</table>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
	</div>
</div>
