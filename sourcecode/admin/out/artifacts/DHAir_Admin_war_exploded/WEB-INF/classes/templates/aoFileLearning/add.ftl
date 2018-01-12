<!DOCTYPE html>
<html lang="en">
<head>
    <title>小鹿云</title>
    <!-- head  -->
<#include "/common/head.ftl" />
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<!-- header -->
	<#include "/common/header.ftl" />

	<div class="app-body">
    <!-- sidebar -->
		<#include "/common/sidebar.ftl" />
		<!-- content -->
		<main class="main">
			<div class="container-fluid">
				<div class="animated fadeIn">
					<div class="card">
						<div class="card-header">
							<strong>新增重要文件</strong>
						</div>
						<div class="card-block">
							<form class="form-horizontal " id="saveOrUpdateForm">
                                <div class="form-group row"  style="display:none">
                                    <label class="col-md-3 form-control-label" for="id">ID</label>
                                    <div class="col-md-9">
									   <input type="text" class="form-control" name="id" value="" />
                                        <input id="fileserverURI" type="hidden" class="form-control" value="${uploadURI!}" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="title"><span style="color: red;">*&nbsp;</span>标题</label>
                                    <div class="col-md-9">
									   <input maxlength="200" type="text" class="form-control" name="title" value="" /> 
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="content">内容</label>
                                    <div class="col-md-9">
									<input maxlength="2000" type="text" class="form-control" name="content" value="" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="publishedBy">发布人</label>
                                    <div class="col-md-9">
	                                    <#if sysUser?exists>
	                                        <input type="text" class="form-control" id="publishedBy" name="publishedBy" maxlength="50"
	                                            value="${sysUser.userName!}" placeholder="发布人">
	                                    <#else>
	                                        <input type="text" class="form-control" id="publishedBy" name="publishedBy" maxlength="50"
	                                            value="" placeholder="发布人">
	                                    </#if>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="publishedByDeptName"><span style="color: red;">*&nbsp;</span>发布部门</label>
                                    <div class="col-md-9">
	                                    <#if sysUser?exists>
	                                        <input type="text" class="form-control" id="publishedByDeptName" name="publishedByDeptName" 
	                                            required="required" value="${sysUser.deptName!}" maxlength="30" placeholder="发布部门">
	                                    <#else>
	                                        <input type="text" class="form-control" id="publishedByDeptName" name="publishedByDeptName" 
	                                            required="required" value="" placeholder="发布部门" maxlength="30">
	                                    </#if>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="noticeType"><span style="color: red;">*&nbsp;</span>发布对象</label>
                                    <div class="col-md-9">
									<#if globalDict['noticeType']?exists> <select class="form-control" name="noticeType">
										<#list globalDict['noticeType']?keys as key>
                                            <option value="${key}">${globalDict['noticeType'][key]!}</option>
										</#list>
                                    </select> <#else /> <input type="text" class="form-control" name="noticeType" value="" /> </#if>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="language"><span style="color: red;">*&nbsp;</span>语言</label>
                                    <div class="col-md-9">
									<#if globalDict['language']?exists> <select class="form-control" name="language">
										<#list globalDict['language']?keys as key>
                                            <option value="${key}">${globalDict['language'][key]!}</option>
										</#list>
                                    </select> <#else /> <input type="text" class="form-control" name="language" value="" /> </#if>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="isMustReed">是否必读</label>
                                    <div class="col-md-9">
									<#if globalDict['isMustReed']?exists> <select class="form-control" name="isMustReed">
										<#list globalDict['isMustReed']?keys as key>
                                            <option value="${key}">${globalDict['isMustReed'][key]!}</option>
										</#list>
                                    </select> <#else /> <input type="text" class="form-control" name="isMustReed" value="" /> </#if>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 form-control-label" for="fileType">文件类型</label>
                                    <div class="col-md-9">
									<#if globalDict['F_TYPE']?exists> <select class="form-control" name="fileType">
										<#list globalDict['F_TYPE']?keys as key>
                                            <option value="${key}">${globalDict['F_TYPE'][key]!}</option>
										</#list>
                                    </select> <#else /> <input type="text" class="form-control" name="fileType" value="" /> </#if>
                                    </div>
                                </div>
							    <div class="form-group row">
							        <label class="col-md-3 form-control-label" for="handbookType">手册类型名称</label>
							        <div class="col-md-9">
						                <input maxlength="50" type="text" class="form-control" name="handbookType" value="" />
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-md-3 form-control-label" for="handbookTypeCode">手册类型</label>
							        <div class="col-md-9">
							            <#if globalDict['handbook_type']?exists> 
							                <select class="form-control" name="handbookTypeCode">
							                    <option value="">请选择</option>
							                    <#list globalDict['handbook_type']?keys as key>
							                    <option value="${key}">${globalDict['handbook_type'][key]!}</option>
							                    </#list>
							                </select> 
							            <#else>
							                <input type="text" class="form-control" name="handbookTypeCode" value="" />
							            </#if>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-md-3 form-control-label" for="fileLevel">文件等级</label>
							        <div class="col-md-9">
							            <#if globalDict['noticeLevel']?exists> 
							                <select class="form-control" name="fileLevel">
							                    <option value="">请选择</option>
							                    <#list globalDict['noticeLevel']?keys as key>
							                    <option value="${key}">${globalDict['noticeLevel'][key]!}</option>
							                    </#list>
							                </select> 
							            <#else>
							                <input type="text" class="form-control" name="fileLevel" value="" />
							            </#if>
							        </div>
							    </div>

                                <div class="form-group" style="">
                                    <div class="col-sm-12 col-lg-12">
                                        <div class="card">
                                            <div class="card-block">
                                                <div class="h5 m-0" style="padding-bottom: 5px;								">附件</div>
                                                <div></div>
                                                <div class="" style="    padding-top: 10px;    ">                                           </div>
                                                <a href="#" type="button" class="btn btn-success btn-sm" id="addAttachBtn"
                                                   onclick="doAddPdfAttach()" style="color: #fff"> <i
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
								<button type="button" class="btn btn-success" id="saveNoticeBtn">
									<i class="fa fa-paper-plane"></i> 保存公告
								</button>
								<button type="button" class="btn btn-default"
										onclick="location.href='/admin/aoFileLearning/listPage';">
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
	<#include "/common/model.ftl" />
    <script src="/js/views/aoFileLearning/validation.js"></script>

    <script src="/js/dh-upload.js"></script>
    <script>

        var parentTable = "ao_file_learning";
        var lastFileCount = 0;
        var parentId = 0;

		document.getElementById("saveNoticeBtn").onclick=function(){
            if($("#saveOrUpdateForm").valid()){
	            var arr = getFormDatas("#saveOrUpdateForm");
				var reqData = JSON.stringify(arr);
	
				$.ajax({
					type : "POST",
					url : 'saveOne',
					data : reqData,
					contentType : "application/json",
					success :  function(data){
						if (data.ret == '10000' && data.model > 0) {
	                        uploadAllAttach(data.model, $("#fileserverURI").val());
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
		};

	</script>

</body>
</html>

