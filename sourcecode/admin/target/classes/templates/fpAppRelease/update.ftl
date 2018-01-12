<form title="更新" class="form-horizontal" id="noticeForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="appName"><span style="color: red;">*&nbsp;</span>应用名称</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="appName" value="${ret.model.appName!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="appVersion"><span style="color: red;">*&nbsp;</span>应用版本号</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="appVersion" value="${ret.model.appVersion!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="isCurrent"><span style="color: red;">*&nbsp;</span>是否发布中</label>
		<div class="col-md-9">
			<select class="form-control" name="isCurrent">
				<option value="1" ${(ret.model.isCurrent?? && 1==ret.model.isCurrent)?string( 'selected="selected"','')}>发布中版本</option>
                <option value="0" ${(ret.model.isCurrent?? && 0==ret.model.isCurrent)?string( 'selected="selected"','')}>历史版本</option>
			</select> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="remark">备注</label>
		<div class="col-md-9">
			<input maxlength="200" type="text" class="form-control" name="remark" value="${ret.model.remark!}" />
		</div>
	</div>
    <div class="form-group" style="">
        <div class="col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-block">
                    <div class="h5 m-0" style="padding-bottom: 5px;								">附件</div>
                    <div></div>
                    <div class="" style="    padding-top: 10px;    ">                                           </div>
                    <div style="height:10px" class="row"></div>
                    <input id="fileserverURI"
                           type="hidden" class="form-control" value="${uploadURI!}" />
                    <div class="row" id="attachmentOrganizer" style="margin-top: 10px;">
							<#list appendixLst as item>
								<div id="fileAppender_${item_index+1}" class="col-md-6" style="display: inherit;">
									<div  class='col-md-9'  style="padding-left: 15px" id="fileInput_${item_index+1}" dh_id="${item_index+1}" dh_append_id="${item.id}" dh_persisted="yes">
										文件 : <a href="${item.filePath}" target="_blank">${item.fileName}</a>
									</div>
									<div class="col-md-3">
										<button type="button" class="btn btn-danger btn-sm" onclick="removeAttachS(${item_index+1})" style="color:#fff">
											<i class="fa fa-remove"></i> 删除附件
										</button>
									</div>
								</div>
							</#list>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script src="/js/dh-upload.js"></script>
<script src="/js/views/aoComNotice/validation.js"></script>

<script>


    var parentTable = "fp_app_release";
    var parentId = $("#updateKey").val();
    var lastFileCount = ${appendixLength};


    uploadParams.beforeDelete = function(item){
        if($(item).attr("dh_persisted") === "no" ){
            return false;
        }
        return true;
    };

    $(document).ready(function(){
    	if($("#fileInput_1").length === 0) {
            doAddAttach();
        }
	});

    function removeAttachS(i){
        removeAttach(i);
     	doAddAttach();
	}

    function showModalS(){
        var title = "正在处理中";
        var modelObj = $("#local-modal");
        var bodyObj = $("#local-modal .modal-body");
        var titleObj = $("#local-modal .modal-title");
        var spinner = "<div class='col-md-12 text-center' id='modelSpinnerText'></div><div class='text-center'><div class='sk-wandering-cubes'> <div class='sk-cube sk-cube1'></div> <div class='sk-cube sk-cube2'></div> </div></div>";
        bodyObj.html(spinner);
        titleObj.text(title);
        modelObj.modal('show');
    }

    function doCloseModalS(){
        var modelObj = $("#local-modal");
        modelObj.modal('hide');
    }

    function dealUploadSx(){
        var lst = uploadParams.result.list;
        if(lst != undefined && lst.length > 0){
            var item = lst[0];
            var arr = [{id:parentId, packageUrl: item.url}];
            $.ajax({
                type : "POST",
                url : "updateBatch",
                data : JSON.stringify(arr),
                contentType : "application/json",
            }).always(function (data) {
                console.log(data);
                if(typeof (data) === "string"){
                    data = JSON.parse(data);
                }

                if(data.model > 0){
                    doCloseModalS();
                    showToast("保存成功！",true);
                    location.reload();
                    return;
                }

                doCloseModalS();
                showToast("保存失败！",true);
            });
        }else{
            showToast("保存成功！",true);
            location.reload();
        }
    }

    load_date_pickers();

    $("#dialogSaveBtn")[0].onclick = saveMyPage;

    function saveMyPage(){
        if (!$("#noticeForm").valid()) {
            return;
        }

        var arr = getFormDatas("#noticeForm");
        var reqData = JSON.stringify(arr);
        console.log("run saveMyPage()");
        $.ajax({
            type : "POST",
            url : 'updateBatch',
            data : reqData,
            contentType : "application/json",
            /*beforeSend: function(){
            	showToast("系统处理中，请稍侯！");
            },*/
            success :  function(data){
                console.log("run updateBatch succcess!!!!");
                if (data.ret == '10000') {
                    uploadParams.result.callback = dealUploadSx;
                    uploadParams.result.start = function () {
                        var modelObj = $("#remote-modal");
                        modelObj.hide();
                        showModalS();
                    }
                    uploadAllAttach(parentId, $("#fileserverURI").val());
                    //showToast('处理成功');
                }else{
                    showToast('处理失败:'+JSON.stringify(data.model));
                }
                //
                //window.close();
            },
            error : function(msg) {
                showToast('处理失败：' + msg);
            }
        });
    }
</script>


