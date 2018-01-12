<div class="modal-content">
	<div class="modal-header">
		<h6 class="modal-title">标题</h6>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
		<form title="重置密码" class="form-horizontal " id="resetPwdForm">
			<input id="updateKey" type="hidden" name="userNo"
				value="${ret.model.userNo!}" />
			<div class="form-group row">
				<label class="col-md-3 form-control-label">用户工号</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="readonly"
						value="${ret.model.userNo!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="userName">用户名</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="readonly"
						name="userName" value="${ret.model.userName!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="password">
				    新密码</label>
				<div class="col-md-9">
					<input maxlength="50" type="text" class="form-control" name="password"
						value="" />
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
		<button id="dialogSaveBtn" type="button" class="btn btn-primary"
			onclick="resetPwdClick()">保存</button>
	</div>
</div>


<script>

function resetPwdClick(){
    var form = $("#resetPwdForm");
    var list = form.find("input, select");
    var arr = new Array();
    var obj = {};

    list.each(function(j, item) {
        item = $(item);
        var key = item.attr("name");
        if (key) {
            obj[key] = item.val();
        }
    });

    arr.push(obj);

    var reqData = JSON.stringify(obj);

    console.log(reqData);
    
    $.ajax({
        type : "POST",
        url : 'resetPwd',
        data : reqData,
        contentType : "application/json",
        success : function(data) {
            if (data.ret == '10000' && data.model > 0) {
                showToast('处理成功');
            }
            window.location.href = '/admin/sysUser/listPage';
            window.close();
        },
        error : function(msg) {
            showToast('处理失败：' + msg);
        }
    });
}

</script>