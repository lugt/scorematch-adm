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
							<div class="col-sm-10">
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
                                                <label for="userNo">用户工号</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        maxlength="20" name="userNo" value="${query.userNo!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userLoginName">登录帐号</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        maxlength="50" name="userLoginName" 
                                                        value="${query.userLoginName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userName">用户名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        maxlength="50" name="userName" value="${query.userName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="deptName">用户部门</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        maxlength="30" name="deptName" value="${query.deptName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="status">有效状态</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="status">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['status']?keys as key>
                                                        <option value="${key}" ${(key==((query.status?c)!''))?string( 'selected="selected"','')}>${globalDict['status'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="crewType">人员类型</label>
                                                <div class="col-sm-8">
                                                    <#if globalDict['crewType']?exists> 
                                                        <select class="form-control" name="crewType">
                                                            <option value="">请选择</option>
                                                        <#list globalDict['crewType']?keys as key>
                                                            <option value="${key}" ${(query.crewType?? && key==query.crewType)?string( 'selected="selected"','')}>${globalDict['crewType'][key]!}</option>
                                                        </#list>
                                                        </select> 
                                                    <#else>
                                                        <input type="text" class="form-control" name="crewType" value="${query.crewType!}" />
                                                    </#if>
                                                </div>
                                            </div>
                                            
                                            <input type="submit" class="btn btn-success" style="float: right;" value="查询">
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
									<th>用户工号</th>
									<th>账号</th>
									<th>用户名</th>
									<th>移动电话</th>
									<th>备用电话</th>
									<th>部门名称</th>
									<th>有效状态</th>
									<th>人员类型</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.userNo}" /></td>
									<td>${item.userNo!}<input type="hidden" name="userNo" value="${item.userNo}" /></td>
									<td>${item.userLoginName!}</td>
									<td>${item.userName!}</td>
                                    <td>${item.mobilePhone!}</td>
                                    <td>${item.phoneBak!}</td>
									<td>${item.deptName!}</td>
									<td>
									   <#if item.status?? && globalDict['status']?exists 
									           && globalDict['status'][item.status?c]?exists> 
									       ${globalDict['status'][item.status?c]!} 
									   <#else> 
									       ${item.status!} 
									   </#if></td>
                                    <td>
                                        <#if item.crewType?? 
                                                && globalDict['crewType']?exists 
                                                && globalDict['crewType'][item.crewType]?exists> 
                                            ${globalDict['crewType'][item.crewType]!} 
                                        <#else> 
                                            ${item.crewType!} 
                                        </#if>
                                    </td>
									<td>
									   <a href="###" onclick="showModal('updatePage?userNo=${item.userNo}')">编辑</a>
									   <a href="###" onclick="showModalEx('resetPwdPage?userNo=${item.userNo}')">重置密码</a>
									</td>
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
