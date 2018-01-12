<div class="modal-content">
    <div class="modal-header">
        <h6 class="modal-title">发送消息</h6>
        <button type="button" class="close" data-dismiss="modal"
            aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
		<form title="手工发送消息" class="form-horizontal " id="sendMessageForm">
		    <div class="form-group row"  style="display:none">
		        <label class="col-md-3 form-control-label" for="id">ID</label>
		        <div class="col-md-9">
		            <input type="text" class="form-control" name="id" value="" />
		            <input type="text" class="form-control" name="receiverList" value="" />
		        </div>
		    </div>
		    <div class="form-group row">
		        <label class="col-md-3 form-control-label" for="msgType"><span style="color: red;">*&nbsp;</span>消息类型</label>
		        <div class="col-md-9">
		            <#if globalDict['msgType']?exists> <select class="form-control" name="msgType">
		                <#list globalDict['msgType']?keys as key>
		                <option value="${key}">${globalDict['msgType'][key]!}</option>
		                </#list>
		            </select> <#else /> <input type="text" class="form-control" name="msgType"/> </#if>
		        </div>
		    </div>
		    <div class="form-group row">
		        <label class="col-md-3 form-control-label" for="title"><span style="color: red;">*&nbsp;</span>标题</label>
		        <div class="col-md-9">
		            <input maxlength="50" type="text" class="form-control" name="title" required="required" value="" />
		        </div>
		    </div>
		    <div class="form-group row">
		        <label class="col-md-3 form-control-label" for="content">内容</label>
		        <div class="col-md-9">
		            <input maxlength="2000" type="text" class="form-control" name="content" value="" />
		        </div>
		    </div>
		    <div class="form-group row">
		        <label class="col-md-3 form-control-label" for="sentBy">发送人工号</label>
		        <div class="col-md-9">
		            <#if sysUser?exists>
		                <input maxlength="20" type="text" class="form-control" id="sentBy" name="sentBy"
		                    value="${sysUser.userNo!}">
		            <#else>
		                <input type="text" class="form-control" id="sentBy" name="sentBy"
		                    value="">
		            </#if>
		        </div>
		    </div>
		    <!--<div class="form-group row">
		        <label class="col-md-3 form-control-label" for="flightId">航班ID</label>
		        <div class="col-md-9">
		            <input dh-type="number" onkeyup="verifyCharType(this,event)" onkeydown="verifyCharType(this,event)" onkeypress="verifyCharType(this,event)" maxlength="11" type="text" class="form-control" name="flightId" required="required"/>
		        </div>
		    </div>-->
		</form>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        <button id="dialogSaveBtn" type="button" class="btn btn-primary"
            onclick="sendMsgClick()">发布消息</button>
    </div>
</div>

<script src="/js/views/fpMessage/validation.js"></script>
<script>

//当点击发布消息按钮时通过onclick="sendMsgClick()"去调用sendMsgClick()方法执行发布消息处理
function sendMsgClick(){
	//通过form标签里的id="sendMessageForm"定位此页面，并执行valid()来对页面录入的内容进行验证
	//验证的规则定义在每个input中，以及js>views>fpMessage>validation.js中
	if (!$("#sendMessageForm").valid()) {
		return;
	}
	// 把消息发送到选定的用户（多个）
    var form = $("#sendMessageForm");
    var list = form.find("input, select");
    var obj = {};

    list.each(function(j, item) {
        item = $(item);
        var key = item.attr("name");
        if (key) {
            obj[key] = item.val();
        }
    });
    obj["receiverList"] = getReceiverList();

    var reqData = JSON.stringify(obj);

    console.log(reqData);
    
    $.ajax({
        type : "POST",
        url : 'save',
        data : reqData,
        contentType : "application/json",
        success : function(data) {
            if (data.ret == '10000' && data.model > 0) {
                showToast('处理成功');
            }
            window.location.href = '/admin/fpMessage/sendMsgPage';
            window.close();
        },
        error : function(msg) {
            showToast('处理失败：' + msg);
        }
    });
}

function getReceiverList() {
    var tableData = $("#table_data tr");
    var arr = new Array();
    tableData.each(function(i, tr) {
        if (!$(tr).find("input[name='multiSelect']").is(":checked")) {
            return;
        }
        var list = $(tr).find("input, select");
        var obj = {};
        list.each(function(j, item) {
            item = $(item);
            var key = item.attr("name")
            if (key) {
                if (key == "userNo") {
                    arr.push(item.val());   
                }
            }
        });
    });
    
    return arr;
}

</script>		
