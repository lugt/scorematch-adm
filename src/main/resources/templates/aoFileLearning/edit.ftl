<div class="container-fluid">
              <div class="animated fadeIn">
                 <div class="card">
                    <div class="card-header">
                        <strong>文件管理</strong>
                    </div>
                    <div class="card-block">
                        <form title="更新" class="form-horizontal" id="saveOrUpdateForm">
                            <input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
                            <input id="fileserverURI" type="hidden" class="form-control" value="${uploadURI!}" />
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="title"><span style="color: red;">*&nbsp;</span>标题</label>
                                <div class="col-md-9">
                                    <input maxlength="200" type="text" class="form-control" name="title" value="${ret.model.title!}" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="content">内容</label>
                                <div class="col-md-9">
                                    <input maxlength="2000" type="text" class="form-control" name="content" value="${ret.model.content!}" /> 
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="publishedOn"><span style="color: red;">*&nbsp;</span>发布时间</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="publishedOn" value="${(ret.model.publishedOn?string('yyyy-MM-dd'))!}" dh-type="datepick" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="publishedBy">发布人</label>
                                <div class="col-md-9">
                                    <input maxlength="50" type="text" class="form-control" name="publishedBy" value="${ret.model.publishedBy!}" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="publishedByDeptName"><span style="color: red;">*&nbsp;</span>发布部门</label>
                                <div class="col-md-9">
                                    <input maxlength="20" type="text" class="form-control" name="publishedByDeptName" value="${ret.model.publishedByDeptName!}" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="noticeType"><span style="color: red;">*&nbsp;</span>发布对象</label>
                                <div class="col-md-9">
                                <#if globalDict['noticeType']?exists> <select class="form-control" name="noticeType">
                                    <#list globalDict['noticeType']?keys as key>
                                        <option value="${key}" ${(key==ret.model.noticeType)?string( 'selected="selected"','')}>${globalDict['noticeType'][key]!}</option>
                                    </#list>
                                </select> <#else /> <input type="text" class="form-control" name="noticeType" value="${ret.model.noticeType!}" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="language"><span style="color: red;">*&nbsp;</span>语言</label>
                                <div class="col-md-9">
                                <#if globalDict['language']?exists> <select class="form-control" name="language">
                                    <#list globalDict['language']?keys as key>
                                        <option value="${key}" ${(key==ret.model.language)?string( 'selected="selected"','')}>${globalDict['language'][key]!}</option>
                                    </#list>
                                </select> <#else /> <input type="text" class="form-control" name="language" value="${ret.model.language!}" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="isMustReed">是否必读</label>
                                <div class="col-md-9">
                                <#if globalDict['isMustReed']?exists> <select class="form-control" name="isMustReed">
                                    <#list globalDict['isMustReed']?keys as key>
                                        <option value="${key}" ${(key==ret.model.isMustReed?c)?string( 'selected="selected"','')}>${globalDict['isMustReed'][key]!}</option>
                                    </#list>
                                </select> <#else /> <input type="text" class="form-control" name="isMustReed" value="${ret.model.isMustReed!}" /> </#if>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 form-control-label" for="fileType">文件类型</label>
                                <div class="col-md-9">
	                                <#if globalDict['F_TYPE']?exists> 
                                    <select class="form-control" name="fileType">
                                        <#list globalDict['F_TYPE']?keys as key>
                                        <option value="${key}" ${(key==ret.model.fileType!'')?string( 'selected="selected"','')}>${globalDict['F_TYPE'][key]!}</option>
                                        </#list>
                                    </select> 
	                                <#else /> 
                                    <input type="text" class="form-control" name="fileType" value="${ret.model.fileType!}" /> 
	                                </#if>
                                </div>
                            </div>
						    <div class="form-group row">
						        <label class="col-md-3 form-control-label" for="handbookType">手册类型名称</label>
						        <div class="col-md-9">
					                <input maxlength="50" type="text" class="form-control" name="handbookType" value="${ret.model.handbookType!}" />
						        </div>
						    </div>
						    <div class="form-group row">
						        <label class="col-md-3 form-control-label" for="handbookTypeCode">手册类型</label>
						        <div class="col-md-9">
						            <#if globalDict['handbook_type']?exists> 
						                <select class="form-control" name="handbookTypeCode">
						                    <option value="">请选择</option>
						                    <#list globalDict['handbook_type']?keys as key>
						                    <option value="${key}" ${(ret.model.handbookTypeCode?? && key==ret.model.handbookTypeCode)?string( 'selected="selected"','')}>${globalDict['handbook_type'][key]!}</option>
						                    </#list>
						                </select> 
						            <#else>
						                <input type="text" class="form-control" name="handbookTypeCode" value="${ret.model.handbookTypeCode!}" />
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
						                    <option value="${key}" ${(ret.model.fileLevel?? && key==ret.model.fileLevel)?string( 'selected="selected"','')}>${globalDict['noticeLevel'][key]!}</option>
						                    </#list>
						                </select> 
						            <#else>
						                <input type="text" class="form-control" name="fileLevel" value="${ret.model.fileLevel!}" />
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
                                            <button href="#" type="button" class="btn btn-success btn-sm" id="addAttachBtn"
                                               onclick="doAddPdfAttach()" style="color: #fff"> <i
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
                            <i class="fa fa-magic"></i> 保存文件
                        </button>
                        <button type="button" class="btn btn-default" 
                            onclick="location.href='listPage';">
                            <i class="fa fa-ban"></i> 返回列表
                        </button>
                    </div>
                </div>
            </div>
        </div>
<script src="/js/views/aoFileLearning/validation.js"></script>
<script src="/js/dh-upload.js"></script>
<script>

    load_date_pickers();

    var parentTable = "ao_file_learning";
    var lastFileCount = ${appendixLength};

    $(document).ready(function(){
        $("#savePageBtn").on("click",saveMyPage);
    });

    function saveMyPage(){
        if (!$("#saveOrUpdateForm").valid()) {
            return;
        }        var arr = getFormDatas("#saveOrUpdateForm");
        var reqData = JSON.stringify(arr);
        $.ajax({
            type : "POST",
            url : 'updateBatch',
            data : reqData,
            contentType : "application/json",
            success :  function(data){
                if (data.ret == '10000') {
                    uploadAllAttach(${editingId}, $("#fileserverURI").val());
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