var uploadParams = {
    uploadURI : "http://localhost:8080/",
    attachURI : "/admin/sysAtachment/saveOne",
    result : { list:[] }
};

function doAddAttach(fileAccept){
    lastFileCount ++;
    var attachRow = document.createElement("div");
    attachRow.id = "fileAppender_"+lastFileCount;
    attachRow.setAttribute("style","display: inherit;");
    attachRow.setAttribute("class","col-md-6");

    //var attachMe = ;
    attachRow.innerHTML = "" +
        "<div class='col-md-9' style='padding: 3px; padding-left:15px'>" +
        "    <input type='file' accept='" + fileAccept + "'" +
        " id='fileInput_"+lastFileCount+"' placeholder='选择文件' class='fileInputClass' dh_id='"+lastFileCount+"' dh_persisted='no'/>" +
        "</div>" +
        "<div class='col-md-3'>" +
        "    <a type=\"button\" class=\"btn btn-danger btn-sm\" onclick=\"removeAttach("+lastFileCount+")\" style=\"color:#fff\">\n" +
        "     <i class=\"fa fa-remove\"></i> 删除附件\n</a>" +
        "</div>";
    $("#attachmentOrganizer").append(attachRow);
}

function doAddPdfAttach(){
    lastFileCount ++;
    var attachRow = document.createElement("div");
    attachRow.id = "fileAppender_"+lastFileCount;
    attachRow.setAttribute("style","display: inherit;");
    attachRow.setAttribute("class","col-md-6");

    //var attachMe = ;
    attachRow.innerHTML = "" +
        "<div class='col-md-9' style='padding: 3px; padding-left:15px'>" +
        "    <input type='file' accept='.pdf' id='fileInput_"+lastFileCount+"' placeholder='选择文件' class='fileInputClass' dh_id='"+lastFileCount+"' dh_persisted='no'/>" +
        "</div>" +
        "<div class='col-md-3'>" +
        "    <a type=\"button\" class=\"btn btn-danger btn-sm\" onclick=\"removeAttach("+lastFileCount+")\" style=\"color:#fff\">\n" +
        "     <i class=\"fa fa-remove\"></i> 删除附件\n</a>" +
        "</div>";
    $("#attachmentOrganizer").append(attachRow);
}

function removeAttach(i){
    var obj = $("#fileInput_"+i);
    if(uploadParams.beforeDelete !== undefined){
        if(uploadParams.beforeDelete() === false){
            return;
        }
    }
    var appendId = obj.attr("dh_append_id");
    if(obj.attr("dh_persisted") === "no" || appendId === undefined || appendId === null || appendId <= 0){
        obj = $("#fileAppender_"+i);
        obj.empty();
        obj.hide();
        return;
    }
    obj = {multiSelect:appendId,id:appendId};
    var arr = [obj];
    $.ajax({
        type : "POST",
        url : '/admin/sysAtachment/deleteBatch',
        data : JSON.stringify(arr),
        contentType : "application/json",
        list_id:i
    }).done(function(data){
        var i = this.list_id;
        var obj = $("#fileAppender_"+i);
        obj.empty();
        obj.hide();
    }).fail(function(data){
        showToast("删除失败");
    })

}

var lastUploadId = 0;
function uploadAllAttach(pId, fileserverURI) {

    parentId = pId;

    uploadParams.result.list = [];

    // 先展示
    var uploadList = [];
    $(".fileInputClass").each(function(i,item){
        //上传附件，绑定Id
        if(item.files.length > 0) {
            uploadList.push($(item).attr("dh_id"));
        }
    });


    if(uploadList.length > 0){
        // 调用保存附件方法
        if (uploadParams.result.start === undefined) {
            showModal("javascript:void", "正在上传 - 第1个文件");
        }else{
            uploadParams.result.start();
        }
        fileServerDeal(uploadList,fileserverURI, 0);
    }else{
        // 没有需要上传的，直接成功
        if (uploadParams.result.callback === undefined) {
            closeUploadModal();
            showToast("处理成功", true);
            location.href = 'listPage';
        }else{
            uploadParams.result.callback();
        }
    }
}

function upload_status_report(title,text){
    var textObj = $("#modelSpinnerText");
    var titleObj = $("#remote-modal .modal-title");
    if(text != undefined) {
        textObj.text(text);
    }
    if(title != undefined) {
        titleObj.text(title);
    }
}


// 第一阶段： 上传文件到fileServerURL
function fileServerDeal(lst, fileServerURL, lstId) {
    uploadParams.uploadURI = fileServerURL;
    var formData = new FormData();
    upload_status_report("正在上传 - 第"+(lstId+1)+"个文件", (lstId + 1) +" / "+ lst.length);
    formData.append('file', $('#fileInput_'+lst[lstId])[0].files[0]);
    $.ajax({
        url: fileServerURL,
        type: 'POST',
        cache: false,
        data: formData,
        processData: false,
        contentType: false,
        now_list_id: lstId,
        now_lst:lst
    }).always(fileServerRet);
}
// 第1阶段 ： 从文件服务器返回值处理
function fileServerRet(data){
    console.log("上传["+this.now_list_id+"]");
    console.log(data);
    if(data != null && data != undefined && typeof(data) == "string"){
        // 合法检验通过,
        uploadParams.result.list.push({url:data});
        var obj = {
            parentTableName:parentTable,
            parentRowId:parentId,
            filePath : data
        };
        saveDeal(this.now_lst, this.now_list_id, uploadParams.attachURI, JSON.stringify(obj));
    }else{
        closeUploadModal();
        showToast("部分上传异常，文件-"+this.now_list_id);
    }
}



// 第二阶段： 保存到SysAtachment
function saveDeal(lst, lstId, action, data) {
    $.ajax({
        url: action,
        type: 'POST',
        data: data,
        contentType : "application/json",
        now_list_id: lstId,
        now_lst:lst
    }).always(updateDealRet);
}

// 第二阶段处理， 继续调用第一阶段
function updateDealRet(data){
    if(typeof(data) == "string"){
        data = JSON.parse(data);
    }
    console.log(data);
    if (data.ret === '10000' && data.uploadUrl !== null) {
        if(this.now_list_id === this.now_lst.length - 1) {
            if (uploadParams.result.callback === undefined) {
                closeUploadModal();
                showToast("处理成功", true);
                location.href = 'listPage';
            }else{
                uploadParams.result.callback();
            }
        }else{
            // 调用下一个附件的 第一阶段;
            fileServerDeal(this.now_lst,uploadParams.uploadURI,this.now_list_id+1);
        }

    }else{
        // 出现上传错误
        closeUploadModal();
        showToast("部分上传异常，文件-"+this.now_list_id);
    }
}