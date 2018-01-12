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
						    <div class="col-sm-1">
                            </div>
							<div class="col-sm-11" style="padding-top: 5px">
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
                                                        name="beginTime" dh-type="datepick" placeholder="考试开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="考试结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userNo">用户工号</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="userNo" value="${query.userNo!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userName">用户名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="userName" value="${query.userName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="examPaperName">试卷名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="examPaperName" value="${query.examPaperName!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="isPassed">是否通过</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="isPassed">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['isPassed']?keys as key>
                                                        <option value="${key}" ${(key==(query.isPassed?c)!"")?string( 'selected="selected"','')} >${globalDict['isPassed'][key]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userType">考试对象</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="userType">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['userType']?keys as key>
                                                        <option value="${key}" ${(key==((query.userType)!""))?string( 'selected="selected"','')}>${globalDict['userType'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn btn-success" style="float: right;" value="查询">
                                        </div>
                                    </div>
								</form>
							</div>
						</div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th>工号</th>
                                    <th>考生名称</th>
                                    <th>考试对象</th>
									<th>试卷名称</th>
									<th>是否通过</th>
									<th>答对题目数</th>
									<th>总题目数</th>
									<th>考试时间</th>
                                    <th>准备记录ID</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>${item.userNo!}</td>
									<td>${item.userName!}</td>
                                    <td><#if item.userType?? && globalDict['userType']?exists && globalDict['userType'][item.userType]?exists>  
                                        ${globalDict['userType'][item.userType]!} 
                                        <#else> ${item.userType!} </#if></td>
									<td>${item.examPaperName!}</td>
									<td><#if item.isPassed?? && globalDict['isPassed']?exists && globalDict['isPassed'][item.isPassed?c]?exists> ${globalDict['isPassed'][item.isPassed?c]!} <#else> ${item.isPassed!} </#if></td>
									<td>${item.score!}</td>
                                    <td>${item.totalQuests!}</td>
									<td>${(item.createdOn?string('yyyy-MM-dd  HH:mm'))!}</td>
                                    <td>${item.fpId!}</td>
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
</body>

</html>
