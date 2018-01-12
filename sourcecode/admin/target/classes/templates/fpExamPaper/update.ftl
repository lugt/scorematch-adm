<div class="container-fluid" >
    <div class="animated fadeIn">
        <div class="card">
            <div class="card-header">
                <strong>编辑试卷</strong>
            </div>
            <div class="card-block">
				<form title="更新" class="form-horizontal" id="saveOrUpdateForm">
					<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="name"><span style="color: red;">*&nbsp;</span>试卷名称</label>
						<div class="col-md-9">
							<#if globalDict['name']?exists> <select class="form-control" name="name">
								<#list globalDict['name']?keys as key>
								<option value="${key}" ${(key==ret.model.name)?string( 'selected="selected"','')}>${globalDict['name'][key]!}</option>
								</#list>
							</select> <#else /> <input maxlength="50" type="text" class="form-control" name="name" value="${ret.model.name!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="generatedOn"><span style="color: red;">*&nbsp;</span>生成日期</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="generatedOn" dh-type="datepick" value="${(ret.model.generatedOn?string('yyyy-MM-dd'))!}" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="effectStartDate"><span style="color: red;">*&nbsp;</span>生效时间</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="effectStartDate" dh-type="datetimepick" value="${(ret.model.effectStartDate?string('yyyy-MM-dd HH:mm:ss'))!}" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="effectEndDate">生效截止时间</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="effectEndDate" dh-type="datetimepick"  value="${(ret.model.effectEndDate?string('yyyy-MM-dd HH:mm:ss'))!}" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="examType">考试大类</label>
						<div class="col-md-9">
							<#if globalDict['examType']?exists> <select class="form-control" name="examType">
								<#list globalDict['examType']?keys as key>
								<option value="${key}" ${(key==ret.model.examType)?string( 'selected="selected"','')}>${globalDict['examType'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control" name="examType" value="${ret.model.examType!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="status"><span style="color: red;">*&nbsp;</span>有效状态</label>
						<div class="col-md-9">
							<#if globalDict['status']?exists> <select class="form-control" name="status">
								<#list globalDict['status']?keys as key>
								<option value="${key}" ${(key==ret.model.status?c)?string( 'selected="selected"','')}>${globalDict['status'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control" name="status" value="${ret.model.status!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="deadline">完成时限</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="deadline" dh-type="datetimepick"  value="${(ret.model.deadline?string('yyyy-MM-dd HH:mm:ss'))!}" dh-type="datetimepick"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="examTimes">允许考试次数</label>
						<div class="col-md-9">
							<#if globalDict['examTimes']?exists> <select class="form-control" name="examTimes">
								<#list globalDict['examTimes']?keys as key>
								<option value="${key}" ${(key==ret.model.examTimes?c)?string( 'selected="selected"','')}>${globalDict['examTimes'][key]!}</option>
								</#list>
							</select> <#else /> <input type="number" min="0" class="form-control" name="examTimes" value="${ret.model.examTimes!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="timeLimit">完成时长(分钟)</label>
						<div class="col-md-9">
							<#if globalDict['timeLimit']?exists> <select class="form-control" name="timeLimit">
								<#list globalDict['timeLimit']?keys as key>
								<option value="${key}" ${(key==ret.model.timeLimit?c)?string( 'selected="selected"','')}>${globalDict['timeLimit'][key]!}</option>
								</#list>
							</select> <#else /> <input type="number" min="0" class="form-control" name="timeLimit" value="${ret.model.timeLimit!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="questCount">题目数</label>
						<div class="col-md-9">
							<#if globalDict['questCount']?exists> <select class="form-control" name="questCount">
								<#list globalDict['questCount']?keys as key>
								<option value="${key}" ${(key==ret.model.questCount?c)?string( 'selected="selected"','')}>${globalDict['questCount'][key]!}</option>
								</#list>
							</select> <#else /> <input type="number" min="0" class="form-control" name="questCount" value="${ret.model.questCount!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="userType"><span style="color: red;">*&nbsp;</span>考试用户类型</label>
						<div class="col-md-9">
							<#if globalDict['userType']?exists> <select class="form-control" name="userType">
								<#list globalDict['userType']?keys as key>
								<option value="${key}" ${(key==ret.model.userType)?string( 'selected="selected"','')}>${globalDict['userType'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control" name="userType" value="${ret.model.userType!}" /> </#if>
						</div>
					</div>
					<!--  
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="userScope">考试用户范围</label>
						<div class="col-md-9">
							<#if globalDict['userScope']?exists> <select class="form-control" name="userScope">
								<#list globalDict['userScope']?keys as key>
								<option value="${key}" ${(key==ret.model.userScope)?string( 'selected="selected"','')}>${globalDict['userScope'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control" name="userScope" value="${ret.model.userScope!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="examQuestScope">生成试卷方式</label>
						<div class="col-md-9">
							<#if globalDict['examQuestScope']?exists> <select class="form-control" name="examQuestScope">
								<#list globalDict['examQuestScope']?keys as key>
								<option value="${key}" ${(key==ret.model.examQuestScope)?string( 'selected="selected"','')}>${globalDict['examQuestScope'][key]!}</option>
								</#list>
							</select> <#else /> <input type="text" class="form-control" name="examQuestScope" value="${ret.model.examQuestScope!}" /> </#if>
						</div>
					</div>
					-->
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
						<label class="col-md-3 form-control-label" for="passQstCount">合格题数</label>
						<div class="col-md-9">
							<#if globalDict['passQstCount']?exists> <select class="form-control" name="passQstCount">
								<#list globalDict['passQstCount']?keys as key>
								<option value="${key}" ${(key==ret.model.passQstCount?c)?string( 'selected="selected"','')}>${globalDict['passQstCount'][key]!}</option>
								</#list>
							</select> <#else /> <input type="number" min="0" class="form-control" name="passQstCount" value="${ret.model.passQstCount!}" /> </#if>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 form-control-label" for="fpExamDefineId">考试类别</label>
						<div class="col-md-9">
							<select class="form-control" name="fpExamDefineId">
								<#list defineList as key>
									<option value="${key.id}" ${(key.id==ret.model.fpExamDefineId)?string( 'selected="selected"','')}>${key.examName}</option>
								</#list>
							</select>
						</div>
					</div>
				</form>
				<div id="hierarchyPanel"></div>
            </div>
            <div class="card-footer">
                <button type="button" class="btn btn-success" id="savePageBtn">
                    <i class="fa fa-magic"></i> 保存试卷
                </button>
                <button type="button" class="btn btn-default"
                        onclick="history.go(-1);">
                    <i class="fa fa-ban"></i> 返回列表
                </button>
            </div>
        </div>
    </div>
</div>
<script src="/js/views/fpExamPaper/validation.js"></script>
<script>
    var currentId = ${ret.model.id};
    // 要实现 列表 ， 添加（搜索、搜索结果、添加确认 | 直接编辑） ， 刷新、 删除
    var dh_update_params = {
        thisid : ${ret.model.id},
        linkCol:"paperId",
        sub: [
//            {
//                obj:'fpExaminee',
//                type:"search",
//                from:[
//                    {
//                        depth : 0,
//                        obj : "sysUser",
//                        remoteCol: "userNo",
//                        localCol:"userNo",
//                    },
//                    {
//                        depth : 1,
//                        obj : "oaDepartment",
//                        remoteCol: "deptId",
//                        localCol:"deptId"
//                    }
//                ],
//                link:{
//                    obj:"",
//                    col:"paperId",
//                }
//            },
            {
                obj:'fpExamPaperQuest',
                type:"input",
                link:{
                    obj:"",
                    col:"paperId",
                }
            }
        ]
    };
</script>

<script src="/js/dh-mini-update.js"></script>
<script>

    load_date_pickers();

    $(document).ready(function(){ 	
    	$("#savePageBtn").on("click",saveMyPage);
    });

    function saveMyPage(){
    	if (!$("#saveOrUpdateForm").valid()) {
    	   return;
    	 }
	
        var arr = getFormDatas("#saveOrUpdateForm");
        var reqData = JSON.stringify(arr);
        $.ajax({
            type : "POST",
            url : 'updateBatch',
            data : reqData,
            contentType : "application/json",
            success :  function(data){
                if (data.ret == '10000') {
                    showToast('处理成功');
                    history.go(-1);
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

