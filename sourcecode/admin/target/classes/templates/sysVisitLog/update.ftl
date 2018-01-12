<div class="modal-content">
    <div class="modal-header">
        <h6 class="modal-title">日志明细</h6>
        <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <form title="日志明细" class="form-horizontal " id="detailsForm" >
            <div class="form-group row">
                <label class="col-md-3 form-control-label" for="logId">日志ID</label>
                <div class="col-md-9">
                    <input type="text" readonly="readonly" class="form-control" name="logId" value="${ret.model.logId!}" />
                </div>
            </div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="logTime">日志记录时间</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="logTime" value="${(ret.model.logTime?string('yyyy-MM-dd HH:mm:ss'))!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="callApi">调用API</label>
    			<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="callApi" value="${ret.model.callApi!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="apiDesc">API描述</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="apiDesc" value="${ret.model.apiDesc!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="userNo">来自用户</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="userNo" value="${ret.model.userNo!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="device">来自设备</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="device" value="${ret.model.device!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="remoteAddr">设备地址</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="remoteAddr" value="${ret.model.remoteAddr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="remoteHost">设备名称</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="remoteHost" value="${ret.model.remoteHost!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="inputParams">输入参数</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="inputParams" value="${ret.model.inputParams!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="error">调用结果</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="error" value="${ret.model.error!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="timeConsuming">调用耗时(毫秒)</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="timeConsuming" value="${ret.model.timeConsuming!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="bak">备注</label>
				<div class="col-md-9">
					<input type="text" readonly="readonly" class="form-control" name="bak" value="${ret.model.bak!}" />
				</div>
			</div>
		</form>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
    </div>
</div>

