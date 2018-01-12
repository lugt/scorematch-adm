<div class="container-fluid">
		<#include "/common/model.ftl" />
              <div class="animated fadeIn">
                 <div class="card">
                    <div class="card-header">
                        <strong>编辑公告</strong>
                    </div>
                    <div class="card-block">
				<form class="form-horizontal " id="noticeForm">
					<input id="updateKey" type="hidden" name="id"
						value="${ret.model.id!}" /> <input id="fileserverURI"
						type="hidden" class="form-control" value="${uploadURI!}" />
					<div class="row">
						<div class="form-group col-4 row">
							<label for="noticeType" class="form-control-label col-5"><span style="color: red;">*&nbsp;</span>发布对象</label>
							<#if globalDict['noticeType']?exists> <select
								class="form-control col-7" name="noticeType">
								<#list globalDict['noticeType']?keys as key>
								<option value="${key}" ${(key==ret.model.noticeType)?string(
									'selected="selected"','')}>${globalDict['noticeType'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control"
								name="noticeType" value="${ret.model.noticeType!}" /> </#if>
						</div>
						<div class="form-group col-sm-4 row">
							<label for="noticeLevel" class="form-control-label col-5"><span style="color: red;">*&nbsp;</span>通告等级</label>
							<#if globalDict['noticeLevel']?exists> <select
								class="form-control col-7" name="noticeLevel">
								<#list globalDict['noticeLevel']?keys as key>
								<option value="${key}" ${(key==ret.model.noticeLevel)?string(
									'selected="selected"','')}>${globalDict['noticeLevel'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control col-7"
								name="noticeLevel" value="${ret.model.noticeLevel!}" /> </#if>
						</div>
						<div class="form-group col-sm-4 row">
							<label for="noticeCat" class="form-control-label col-5"><span style="color: red;">*&nbsp;</span>通告种类</label>
							<#if globalDict['N_TYPE']?exists> <select
								class="form-control col-7" name="noticeCat">
								<#list globalDict['N_TYPE']?keys as key>
								<option value="${key}" ${(key==ret.model.noticeCat)?string(
									'selected="selected"','')}>${globalDict['N_TYPE'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control col-7"
								name="noticeCat" value="${ret.model.noticeCat!}" /> </#if>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-4 row">
							<label for="publishedBy" class="form-control-label col-5">发布人</label> <input type="text"
								class="form-control col-7" id="publishedBy" name="publishedBy" maxlength="50"
								value="${ret.model.publishedBy!}"  placeholder="发布人">
						</div>
						<div class="form-group col-sm-4 row">
							<label for="publishedByDeptName" class="form-control-label col-5"><span style="color: red;">*&nbsp;</span>发布部门</label> <input type="text"
								class="form-control col-7" id="publishedByDeptName" maxlength="30"
								name="publishedByDeptName"
								value="${ret.model.publishedByDeptName!}" placeholder="发布部门">
						</div>
						<div class="form-group col-sm-4 row">
							<label for="isMustReed" class="form-control-label col-5"><span style="color: red;">*&nbsp;</span>是否必读</label>
							<#if globalDict['isMustReed']?exists> <select
								class="form-control col-7" name="isMustReed">
								<#list globalDict['isMustReed']?keys as key>
								<option value="${key}" ${(key==ret.model.isMustReed?c)?string(
									'selected="selected"','')}>${globalDict['isMustReed'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control"
								name="isMustReed" value="${ret.model.isMustReed!}" /> </#if>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-2 row">
							<label for="language" class="form-control-label col-6"><span style="color: red;">*&nbsp;</span>语言</label>
							<#if globalDict['language']?exists> <select
								class="form-control col-6" name="language">
								<#list globalDict['language']?keys as key>
								<option value="${key}" ${(key==ret.model.language)?string(
									'selected="selected"','')}>${globalDict['language'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control"
								name="language" value="${ret.model.language!}" /> </#if>
						</div>
						<div class="form-group col-sm-10 row">
							<label class="col-md-2 form-control-label" for="title"> <strong><span style="color: red;">*&nbsp;</span>公告标题</strong>
							</label> <input type="text" class="form-control col-9" name="title" maxlength="200"
								value="${ret.model.title!}" />
						</div>
					</div>

					<div class="form-group">
						<textarea id="content-input" name="content" rows="25"
							class="form-control" placeholder="公告内容......">${ret.model.content!}</textarea>
					</div>

                    <div class="form-group" style="">
                        <div class="col-sm-12 col-lg-12">
                            <div class="card">
                                <div class="card-block">
                                    <div class="h5 m-0" style="padding-bottom: 5px;								">附件</div>
                                    <div></div>
                                    <div class="" style="    padding-top: 10px;    ">                                           </div>
                                    <button href="#" type="button" class="btn btn-success btn-sm" id="addAttachBtn"
                                       onclick="doAddAttach('application/pdf')" style="color: #fff"> <i
                                            class="fa fa-plus-square-o"></i> 添加附件
                                    </button>
                                    <div style="height:10px" class="row"></div>
                                    <div class="row" id="attachmentOrganizer"                                                 style="margin-top: 10px;">
									<#list appendixLst as item>
                                        <div id="fileAppender_${item_index+1}" class="col-md-6" style="display: inherit;">
                                            <div  class='col-md-9'  style="padding-left: 15px" id="fileInput_${item_index+1}" dh_id="${item_index+1}" dh_append_id="${item.id}" dh_persisted="yes">
                                                文件 : <a href="${item.filePath}" target="_blank">${item.fileName}</a>
                                            </div>
                                            <div class="col-md-3">
                                                <button type="button" class="btn btn-danger btn-sm" onclick="removeAttach(${item_index+1})" style="color:#fff">
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
			</div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-success" id="savePageBtn">
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


<script src="/js/dh-upload.js"></script>
<script src="/js/views/aoComNotice/validation.js"></script>

<script>
    var parentTable = "ao_com_notice";
    var parentId = $("#updateKey").val();
    var lastFileCount = ${appendixLength};

    load_date_pickers();
    
    $(document).ready(function(){
        $("#savePageBtn").on("click",saveMyPage);
    });

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
    
  　　function addRunningDiv() {
      $("<div class=\"datagrid-mask\"></div>").css({ display: "block", width: "100%", height: $(document).height() }).appendTo("body");
      $("<div class=\"datagrid-mask-msg\"></div>").html("正在处理，请稍候...").appendTo("body").css({ display: "block", left: ($(document.body).outerWidth(true) - 190) / 2, top: ($(document).height() - 45) / 2 });
  }
  
　　function moveRunningDiv() {
    $("div[class='datagrid-mask']").remove();
    $("div[class='datagrid-mask-msg']").remove();
  }

    aoComNoticeValidate('#noticeForm');
  
</script>