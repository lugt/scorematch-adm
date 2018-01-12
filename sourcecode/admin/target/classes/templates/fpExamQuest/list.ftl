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
			<!-- 弹出框 -->
			<#include "/common/model.ftl" />
            <div class="modal fade" id="remote-modal-extra" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title">标题</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <!-- 远程拉取内容 -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                            <button id="dialogSavingBtn" type="button" class="btn btn-primary" onclick="execute_upload(this)">上传</button>
                        </div>
                    </div>
                </div>
            </div>
			<div class="animated fadeIn">
				<div class="card">
					<div class="card-block">
						<!-- 功能操作区 -->
						<div class="row mb-1">
							<div class="col-sm-5">
								<button type="button" class="btn btn-primary" 
								    onclick="addNewQuestionPage()">添加</button>
								<button type="button" class="btn btn-danger" onclick="deleteBatch()">删除</button>
                                <button type="button" class="btn btn-primary" onclick="openExcel()">导入Excel</button>
                                <button type="button" class="btn btn-primary" onclick="downloadTemplate()">下载模板</button>
                                <button type="button" class="btn btn-default" 
                                    onclick="location.href='/admin/fpExamQuestionBank/listPage';">
                                    <i class="fa fa-ban"></i> 返回列表</button>
							</div>
							<div class="col-sm-7">
                                <form id="searchform" action="listPage" method="get">
                                    <script type="text/javascript">
                                        $(document).ready(function(){
                                          $(".query-control").change(function(){
                                              document.getElementById("input-pageNum").value=1;
                                          });
                                        });
                                    </script>
                                    <input id="input-pageNum" type="text" hidden="true" name="page" value="${ret.model.page}">
                                    <div class="animated fadeIn p-0 clearfix">
                                        <div class="row col-md-12 p-0 clearfix">
                                            <div class="row col-md-11">
                                                <input id="questionBankId" type="text" hidden="true" class="form-control" 
                                                        name="questionBankId" value="${query.questionBankId!}" />
                                                <label for="examQuestionBankName">题库名称</label>
                                                <div class="col-sm-8">
                                                    <input id="examQuestionBankName" type="text" readonly="true" class="form-control query-control" 
                                                        name="examQuestionBankName" value="${query.examQuestionBankName!}" />
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn btn-success" style="float: right;" value="刷新">
                                        </div>
                                    </div>
                                </form>
							</div>
						</div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>
                                    <th>题目类型</th>
									<th>题目</th>
                                    <th>题库名称</th>
									<th>是否有效</th>
									<th>难度系数</th>
									<th>选项</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>
										<input type="checkbox" name="multiSelect" value="${item.id}" />
										<input type="hidden" name="id" value="${item.id}" />
									</td>
                                    <td><#if globalDict['questType']?exists && globalDict['questType'][item.questType?c]?exists> ${globalDict['questType'][item.questType?c]!} <#else> ${item.questType!} </#if></td>
									<td>${item.title!}</td>
									<td>${item.examQuestionBankName!}</td>
									<td><#if globalDict['state']?exists && globalDict['state'][item.state?c]?exists> ${globalDict['state'][item.state?c]!} <#else> ${item.state!} </#if></td>
									<td><#if globalDict['difficultyDegree']?exists && globalDict['difficultyDegree'][item.difficultyDegree]?exists> ${globalDict['difficultyDegree'][item.difficultyDegree]!} <#else> ${item.difficultyDegree!} </#if></td>
									<td>${item.examQuestAnswers}</td>
									<td><a href="###" onclick="showModal('updatePage?id=${item.id}')">编辑</a></td>
								</tr>
								</#list>
							</tbody>
						</table>
						<!-- 分页 -->
						<#include "/common/page.ftl" />
						<script>
						    function addNewQuestionPage() {
						    	var bankId = questionBankId.value;
						    	showModal('savePage?questionBankId='+bankId);
						    }
						    
							function downloadTemplate(){
                                window.open("/binary/donghai_air_tiku_template.xlsx");
							}

                            function openExcel(){
                                showExtraModal('/admin/fpExamQuest/uploader?id=' 
                                		+ questionBankId.value + '&name=' + examQuestionBankName.value);
                            }

                            function execute_upload(){
                            	//$("#sk-wave-div").show();
                            	$("#remote-modal-extra").hide();
                            	showModalS();
								$("#excelUploader").submit();
                                /*var formData = new FormData();
                                formData.append('file', $('#file')[0].files[0]);
                                $.ajax({
                                    url: '/admin/fpExamQuest/fromExcel?bankId='+bankId+'&lang='+lang,
                                    type: 'POST',
                                    cache: false,
                                    data: formData,
                                    processData: false,
                                    contentType: false
                                }).done(function(res) {

                                }).fail(function(res) {

								});*/
							}

                            // 弹出框
                            function showExtraModal(url) {
                                var title = "导入";
                                var spinner = "<div class='text-center'><i class='fa fa-spinner fa-spin fa-5x fa-fw'></i></div>";
                                var modelObj = $("#remote-modal-extra");
                                var bodyObj = modelObj.find(".modal-body");
                                var titleObj = modelObj.find(".modal-title");
                                bodyObj.html(spinner)
                                bodyObj.load(url);
                                titleObj.text(title);
                                //console.log(bodyObj.find("form").attr("title"))
                                modelObj.modal("show");
                            }
						</script>

					</div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<!-- footer	-->
	<#include "/common/footer.ftl" />
    <div class="modal" id='local-modal' tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 class="modal-title">标题</h6>
                    <button type="button" class="close" onclick="doCloseModalS()" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- 远程拉取内容 -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" onclick="doCloseModalS()">关闭</button>
                    <button id="dialogSaveBtn" type="button" class="btn btn-primary" onclick="saveOrUpdate(this)">保存</button>
                </div>
            </div>
        </div>
    </div>

    <script>
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
        function reverseUp(){
            doCloseModalS();
            $("#remote-modal-extra").show();
        }
        function doCloseModalS(){
            var modelObj = $("#local-modal");
            modelObj.modal('hide');
        }

    </script>
</body>

</html>
