<!DOCTYPE html>
<html lang="en">
<head>
<title>小鹿云</title>
<!-- head  -->
<#include "/common/head.ftl" />
</head>
<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
	<!-- header -->
	<#include "/common/header.ftl" />

	<#include "/common/model.ftl" />

	<div class="app-body">
		<!-- sidebar -->
		<#include "/common/sidebar.ftl" />
		<!-- content -->
		<main class="main">
		<div class="container-fluid">
			<div class="animated fadeIn">
				<div class="card">
					<div class="card-header">
						<strong>添加应用程序</strong>
					</div>
					<div class="card-block">
                        <form title="添加" class="form-horizontal " id="appForm">
                            <div class="form-group row"  style="display:none">
                                <label class="col-md-3 form-control-label" for="id">id</label>
                                <div class="col-md-9">
								<#if globalDict['id']?exists> <select class="form-control" name="id">
									<#list globalDict['id']?keys as key>
										<option value="${key}">${globalDict['id'][key]!}</option>
									</#list>
								</select> <#else />
									<input id="fileserverURI" type="text" class="form-control"
                                           value="${uploadURI!}" />
									<input type="text" class="form-control" name="id" value="" /> </#if>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-3 form-control-label" for="appName"><span style="color: red;">*&nbsp;</span>应用名称</label>
													<div class="col-md-9">
								<#if globalDict['appName']?exists> <select class="form-control" name="appName">
									<#list globalDict['appName']?keys as key>
										<option value="${key}">${globalDict['appName'][key]!}</option>
									</#list>
									</select> <#else /> <input type="text" maxlength="50" class="form-control" name="appName" value="" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="appVersion"><span style="color: red;">*&nbsp;</span>应用版本号</label>
                                <div class="col-md-9">
								<#if globalDict['appVersion']?exists> <select class="form-control" name="appVersion">
									<#list globalDict['appVersion']?keys as key>
										<option value="${key}">${globalDict['appVersion'][key]!}</option>
									</#list>
								</select> <#else /> <input type="text" maxlength="20" class="form-control" name="appVersion" value="" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="isCurrent"><span style="color: red;">*&nbsp;</span>是否发布中版本</label>
                                <div class="col-md-9">
								<#if globalDict['isCurrent']?exists> <select class="form-control" name="isCurrent">
									<#list globalDict['isCurrent']?keys as key>
										<option value="${key}">${globalDict['isCurrent'][key]!}</option>
									</#list>
								</select> <#else /> <input type="text" class="form-control" name="isCurrent" value="" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="remark">备注</label>
                                <div class="col-md-9">
								<#if globalDict['remark']?exists> <select class="form-control" name="remark">
									<#list globalDict['remark']?keys as key>
										<option value="${key}">${globalDict['remark'][key]!}</option>
									</#list>
								</select> <#else /> <input maxlength="200" type="text" class="form-control" name="remark" value="" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="packageUrl">包路径</label>
                                <div class="col-md-9">
								<#if globalDict['packageUrl']?exists> <select class="form-control" name="packageUrl">
									<#list globalDict['packageUrl']?keys as key>
										<option value="${key}">${globalDict['packageUrl'][key]!}</option>
									</#list>
								</select> <#else /> <input maxlength="200" type="text" class="form-control" name="packageUrl" value="" readonly="readonly"/> </#if>
                                </div>
                            </div>
                        <div class="form-group" style="">
                                <div class="col-sm-12 col-lg-12">
                                    <div class="card">
                                        <div class="card-block">
                                            <div class="h5 m-0" style="padding-bottom: 5px;								">附件</div>
                                            <div></div>
                                            <div class="" style="    padding-top: 10px;    ">                                           </div>
                                            <a href="#" class="btn btn-success btn-sm" type="button" id="addAttachBtn"
                                               onclick="doAddAttach()" style="color: #fff"> <i
                                                    class="fa fa-plus-square-o"></i> 添加附件
                                            </a>
											<div style="height:10px" class="row"></div>
                                            <div class="row" id="attachmentOrganizer"
                                                 style="margin-top: 10px;"></div>
                                        </div>
                                    </div>
                                </div>
							</div>
                        </form>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-success" id="saveAppBtn">
							<i class="fa fa-magic"></i> 保存程序
						</button>
						<button type="button" class="btn btn-default"
							onclick="location.href='/admin/aoComNotice/listPage';">
							<i class="fa fa-ban"></i> 返回列表
						</button>
					</div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<!-- footer	-->
	<#include "/common/footer.ftl" />
</body>

<script src="/js/dh-upload.js"></script>
<script src="/js/views/fpAppRelease/validation.js"></script>

<script>
	var lastFileCount = 0;
	var parentTable = "fp_app_release";
	var savedId = 0;


    function dealUploadSx(){
        var lst = uploadParams.result.list;
		if(lst != undefined && lst.length > 0){
		    var item = lst[0];
		    var arr = [{id:savedId, packageUrl: item.url}];
		    $.ajax({
				type : "POST",
				url : "updateBatch",
				data : JSON.stringify(arr),
                contentType : "application/json",
			}).always(function (data) {
			    console.log(data);
                closeUploadModal();
                if(typeof (data) === "string"){
                    data = JSON.parse(data);
				}
                if(data.model > 0){
                    showToast("保存成功！",true);
                    location.href="listPage";
                    return;
                }
                showToast("保存失败！",true);
            });
		}else{
            showToast("保存异常！",true);
		}
    }

	$("#saveAppBtn").on("click", function(ev) {

		if (!$("#appForm").valid()) {
			return;
		}

		var arr = getFormDatas("#appForm");
		var reqData = JSON.stringify(arr);

		$.ajax({
			type : "POST",
			url : 'saveOne',
			data : reqData,
			contentType : "application/json",
			success : function(data) {
				if (data.ret == '10000' && data.model > 0) {
                    savedId = data.model;
				    uploadParams.result.callback = dealUploadSx;
					uploadAllAttach(data.model, $("#fileserverURI").val());
					//showToast('处理成功');
				} else {
					showToast('处理失败:' + JSON.stringify(data.model));
				}
				//
				//window.close();
			},
			error : function(msg, data) {
			    console.log(msg);
				showToast('处理失败：HTTP/' + msg.status);
			}
		});

	});

</script>

</html>

