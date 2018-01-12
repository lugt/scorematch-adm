<div class="modal-content">
	<div class="modal-header">
		<h6 class="modal-title">阅读情况</h6>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
		<form title="阅读情况" class="form-horizontal " id="readForm">
		    <div class="form-group col-sm-12 row">
			     <input class="form-group col-sm-12" readonly="true" name="noticeTitle" value="${stat.title!}" />
			</div>
			<!-- 列表 -->
			<table
				class="table table-bordered table-condensed table-striped table-hover">
				<thead>
					<tr>
						<th style="width: 25%">已读人员(${stat.readedsSize})</th>
						<th style="width: 25%"></th>
						<th style="width: 25%"></th>
						<th style="width: 25%"></th>
					</tr>
				</thead>
				<tbody id="table_data">
					<#list stat.readeds as item>
					<tr *ngFor="let log of logs">
						<td>${item.col1!}</td>
						<td>${item.col2!}</td>
						<td>${item.col3!}</td>
						<td>${item.col4!}</td>
					</tr>
					</#list>
				</tbody>
			</table>

			<!-- 列表 -->
			<table
				class="table table-bordered table-condensed table-striped table-hover">
				<thead>
					<tr>
						<th style="width: 25%">未读人员(${stat.unreadsSize})</th>
						<th style="width: 25%"></th>
						<th style="width: 25%"></th>
						<th style="width: 25%"></th>
					</tr>
				</thead>
				<tbody id="table_data">
					<#list stat.unreads as item>
					<tr *ngFor="let log of logs">
						<td>${item.col1!}</td>
						<td>${item.col2!}</td>
						<td>${item.col3!}</td>
						<td>${item.col4!}</td>
					</tr>
					</#list>
				</tbody>
			</table>
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
	</div>
</div>
