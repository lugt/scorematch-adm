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
						<strong>发布公告</strong>
					</div>
					<div class="card-block">
						<form class="form-horizontal " id="noticeForm">
							<div class="form-group row" style="display: none">
								<label class="col-md-3 form-control-label" for="id">ID</label>
								<div class="col-md-9">
									<input type="hidden" class="form-control" name="id" value="" />
									<input id="fileserverURI" type="text" class="form-control"
										value="${uploadURI!}" />
								</div>
							</div>
							<div class="row">
								<div class="form-group col-sm-4 row">
									<label for="noticeType" class="col-5"><span style="color: red;">*&nbsp;</span>发布对象</label>
									<#if globalDict['noticeType']?exists> <select
										class="form-control col-7" name="noticeType">
										<#list globalDict['noticeType']?keys as key>
										<option value="${key}">${globalDict['noticeType'][key]!}</option>
										</#list>
									</select> <#else /> <input type="text" pattern="['A', 'F', 'C', 'S']"
										required="required" class="form-control col-7" name="noticeType"
										value="" /> </#if>
								</div>
								<div class="form-group col-sm-4 row">
									<label for="noticeLevel" class="form-control-label col-sm-5"><span style="color: red;">*&nbsp;</span>通告等级</label>
									<#if globalDict['noticeLevel']?exists> <select
										class="form-control col-sm-7" name="noticeLevel">
										<#list globalDict['noticeLevel']?keys as key>
										<option value="${key}">${globalDict['noticeLevel'][key]!}</option>
										</#list>
									</select> <#else /> <input type="text" pattern="['A', 'F', 'C', 'S']"
										required="required" class="form-control" name="noticeLevel"
										value="" /> </#if>
								</div>
								<div class="form-group col-sm-4 row">
									<label for="noticeCat" class="col-sm-4 "><span style="color: red;">*&nbsp;</span>通告种类</label>
									<#if globalDict['N_TYPE']?exists> <select
										class="form-control col-sm-8" name="noticeCat">
										<#list globalDict['N_TYPE']?keys as key>
										<option value="${key}">${globalDict['N_TYPE'][key]!}</option>
										</#list>
									</select> <#else /> <input maxlength=20 type="text"
										class="form-control" required="required" name="noticeCat"
										value="" /> </#if>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-4 row">
									<label for="publishedBy" class="col-sm-4 form-control-label">发布人</label>
									<#if sysUser?exists> <input type="text"
										class="form-control col-sm-8" id="publishedBy" name="publishedBy"
										value="${sysUser.userName!}" maxlength=50 placeholder="发布人">
									<#else> <input type="text" class="form-control"
										id="publishedBy" name="publishedBy" value="" maxlength="50"
										placeholder="发布人"></#if>
								</div>
								<div class="form-group col-sm-4 row">
									<label for="publishedByDeptName" class="col-sm-5"><span
										style="color: red;">*&nbsp;</span>发布部门</label>
									<#if sysUser?exists> <input type="text"
										class="form-control col-sm-7" id="publishedByDeptName"
										name="publishedByDeptName" value="${sysUser.deptName!}"
										required="required" maxlength=30 placeholder="发布部门"> <#else>
									<input type="text" class="form-control"
										id="publishedByDeptName" name="publishedByDeptName" value=""
										required="required" maxlength="30" placeholder="发布部门"></#if>
								</div>
								<div class="form-group col-sm-4 row">
									<label for="isMustReed" class="col-5 form-control-label"><span style="color: red;">*&nbsp;</span>是否必读</label>
									<#if globalDict['isMustReed']?exists> <select
										class="form-control col-7" name="isMustReed">
										<#list globalDict['isMustReed']?keys as key>
										<option value="${key}">${globalDict['isMustReed'][key]!}</option>
										</#list>
									</select> <#else /> <input type="text" class="form-control"
										name="isMustReed" value="" /> </#if>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-sm-2 row">
									<label for="language" class="form-control-label col-6"><span style="color: red;">*&nbsp;</span>语言</label>
									<#if globalDict['language']?exists> <select
										class="form-control col-6" name="language">
										<#list globalDict['language']?keys as key>
										<option value="${key}">${globalDict['language'][key]!}</option>
										</#list>
									</select> <#else /> <input type="text" class="form-control" maxlength=5
										required="required" name="language" value="" /> </#if>
								</div>
								<div class="form-group col-sm-10 row">
									<label for="title" class="form-control-label col-2"> <span style="color: red;">*&nbsp;</span>
										<strong>公告标题</strong>
									</label> <input type="text" class="form-control col-10" maxlength="200"
										required="required" name="title" value="" />
								</div>
							</div>

							<div class="form-group">
								<textarea id="content-input" name="content" rows="25"
									class="form-control" placeholder="公告内容......"></textarea>
							</div>

							<div class="form-group" style="">
                                <div class="col-sm-12 col-lg-12">
                                    <div class="card">
                                        <div class="card-block">
                                            <div class="h5 m-0" style="padding-bottom: 5px;								">附件</div>
                                            <div></div>
                                            <div class="" style="    padding-top: 10px;    ">                                           </div>
                                            <a href="#" class="btn btn-success btn-sm" type="button" id="addAttachBtn"
                                               onclick="doAddAttach('application/pdf')" style="color: #fff"> <i
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
							<i class="fa fa-magic"></i> 保存公告
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
<script src="/js/views/aoComNotice/validation.js"></script>

<script>
	var lastFileCount = 0;
	var parentTable = "ao_com_notice";

	document.getElementById("saveNoticeBtn").onclick = function() {
		if (!$("#noticeForm").valid()) {
			return;
		}

		var arr = getFormDatas("#noticeForm");
		var reqData = JSON.stringify(arr);

		$.ajax({
			type : "POST",
			url : 'saveOne',
			data : reqData,
			contentType : "application/json",
			success : function(data) {
				if (data.ret == '10000' && data.model > 0) {
					uploadAllAttach(data.model, $("#fileserverURI").val());
					//showToast('处理成功');
				} else {
					showToast('处理失败:' + JSON.stringify(data.model));
				}
				//
				//window.close();
			},
			error : function(msg) {
				showToast('处理失败：' + msg);
			}
		});

	};

    aoComNoticeValidate('#noticeForm');

</script>

</html>

