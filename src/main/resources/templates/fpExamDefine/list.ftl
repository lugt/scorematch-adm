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
                                                <label for="examType">考试类型</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="examType">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['examType']?keys as key>
                                                        <option value="${key}" ${(key==((query.examType)!""))?string( 'selected="selected"','')}>${globalDict['examType'][(key!1)]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userType">用户类型</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="userType">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['userType']?keys as key>
                                                        <option value="${key}" ${(key==((query.userType)!""))?string( 'selected="selected"','')}>${globalDict['userType'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="language">考试语言</label>
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
                                                <label for="state">有效状态</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="state">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['status']?keys as key>
                                                        <option value="${key}" ${(key==((query.state?c)!""))?string( 'selected="selected"','')}>${globalDict['status'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="examName">考试名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" name="examName" 
                                                        value="${query.examName!}">                                        
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
									<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>
                                    <th>考试类型</th>
									<th>考试名称</th>
									<th>是否有效</th>
									<th>考试用户类型</th>
									<th>语言</th>
                                    <th>总库数</th>
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
                                    <td>
                                        <#if globalDict['examType']?exists 
                                                && globalDict['examType'][item.examType]?exists> 
                                            ${globalDict['examType'][item.examType]!} 
                                        <#else> 
                                            ${item.examType!} 
                                        </#if>
                                    </td>
									<td>${item.examName!}</td>
									<td>
									   <#if globalDict['state']?exists 
									           && globalDict['state'][item.state?c]?exists> 
									       ${globalDict['state'][item.state?c]!} 
									   <#else> 
									       ${item.state!} 
									   </#if>
								    </td>
									<td>
									   <#if globalDict['userType']?exists && globalDict['userType'][item.userType]?exists> 
									       ${globalDict['userType'][item.userType]!} 
									   <#else> 
									       ${item.userType!} 
									   </#if>
								    </td>
									<td>
									   <#if globalDict['language']?exists && globalDict['language'][item.language]?exists> 
									       ${globalDict['language'][item.language]!} 
									   <#else> 
									       ${item.language!} 
									   </#if>
								    </td>
                                    <td><a href="#" onclick="gotoListPage('/admin/fpExamQuestionBank/listPage',this)" dh-param="examDefineName,${item.examName}">${item.questionBankCount}</a></td>
									<td><a href="###" onclick="showModal('updatePage?id=${item.id}')">编辑</a></td>
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
