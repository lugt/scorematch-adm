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
								<button type="button" class="btn btn-primary" onclick="location.href='calendarPage'">日历查看</button>
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
                                    <style>
										.row label{
											padding-top:5px;
										}
									</style>
                                    <div class="animated fadeIn p-0 clearfix">
                                        <div class="row col-md-12 p-0 clearfix">
											<div class="row col-md-3">
                                                <label for="busLine">机组车线路</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="50" type="text" class="form-control" name="busLine" value="${query.busLine!}" />
                                                </div>
											</div>
											<div class="row col-md-3">
												<label for="schDate">排班日期</label>
												<div class="col-sm-8">
													<input maxlength="30" onkeyup="verifyCharType(this,event)" type="text" class="form-control" name="schDate" dh-type="datepick" value="<#if query.schDate?? >${query.schDate?string('yyyy-MM-dd')}</#if>"/>
												</div>
											</div>
											<div class="row col-md-3">
												<label for="driverName">司机姓名</label>
												<div class="col-sm-8">
													<input maxlength="20" type="text" class="form-control" name="driverName" value="${query.driverName!}" />
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
									<th>机组车线路</th>
									<th>排班日期</th>
									<th>司机姓名</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" />
                                        <input type="hidden" name="id" value="${item.id}" /></td>
									<td>${item.busLine!}</td>
									<td>${item.schDate?string("yyyy-MM-dd")}</td>
									<td>${item.driverName!}</td>
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
