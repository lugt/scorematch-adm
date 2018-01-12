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
			<div class="animated fadeIn">
				<div class="card">
					<div class="card-block">
						<!-- 功能操作区 -->
                        <div class="row mb-1">
                            <div class="col-sm-2">
                                <button type="button" class="btn btn-primary" onclick="showModal('savePage')">添加</button>
                                <button type="button" class="btn btn-danger" onclick="deleteBatch()">删除</button>
                            </div>
                            <div style="float: left;" class="col-sm-10">
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
                                            <div class="row col-md-4">
                                                <label for="beginTime">开始时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="beginTime" dh-type="datepick" placeholder="生效开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="生效结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="status">有效状态</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="status">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['status']?keys as key>
                                                        <option value="${key}" ${(key==(query.status?c)!"")?string( 'selected="selected"','')} >${globalDict['status'][key]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="language">试卷语言</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="language">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['language']?keys as key>
                                                        <option value="${key}" ${(key==((query.language)!""))?string( 'selected="selected"','')}>${globalDict['language'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="name">试卷名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" name="name" 
                                                        value="${query.name!}">                                        
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn btn-success" style="float: right;" value="查询">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed" style="width: 85%">
							<thead>
								<tr>
									<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>
									<th>试卷名称</th>
									<th>生效时间</th>
                                    <th>截止时间</th>
                                    <th>完成时限</th>
                                    <th>考试对象</th>
                                    <th>参加人数</th>
									<th>语言</th>
                                    <th>有效状态</th>
                                    <th>考试大类</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
                                    <input type="hidden" name="id" value="${item.id}" />
									<td>${item.name!}</td>
									<td>${(item.effectStartDate?string('yyyy-MM-dd'))!}</td>
									<td>${(item.effectEndDate?string('yyyy-MM-dd'))!}</td>
									<td>${(item.deadline?string('yyyy-MM-dd'))!}</td>
									<td>${globalDict['userType'][item.userType]!}</td>
									<td><a href="/admin/fpExamAnswer/listPage?paperId=${item.id}">${item.answeredCount!}</a></td>
									<td><#if globalDict['language']?exists && globalDict['language'][item.language]?exists> ${globalDict['language'][item.language]!} <#else> ${item.language!} </#if></td>
                                    <td><#if globalDict['status']?exists && globalDict['status'][item.status?c]?exists> ${globalDict['status'][item.status?c]!} <#else> ${item.status!} </#if></td>
                                    <td>${item.examDefineName!}</td>
                                    <td><a href="###" onclick="callUpdatePage(${item.id})">编辑</a></td>
								</tr>
								</#list>
							</tbody>
						</table>
						<!-- 分页 -->
						<#include "/common/page.ftl" />
					</div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<!-- footer	-->
	<#include "/common/footer.ftl" />

	<script>
        function callUpdatePage(objId) {
            nowPageState.state = 1;
            $.ajax({
                type : "GET",
                url : 'updatePage?id='+objId,
                objId : objId,
                contentType : "application/json",
                success : function(data) {
                    nowPageState.state = 2;
                    $("main").html(data);
                    nowPageState.state = 3;
                },
            });
        }

        $(document).ready(function(){
            if(utils_get_param("editId") != null){
                var id = utils_get_param("editId");
                callUpdatePage(id);
            }
        })

        function executePopState(event) {
            if(nowPageState.state == 5){
                nowPageState.state = 3;
            }else if(nowPageState.state == 3){
                // 要返回了
                location.reload();
            }else{
                // 正要进入下一个页面
            }
        }

        window.addEventListener('popstate', executePopState);

        var nowPageState={state : 0};
	</script>
</body>

</html>
