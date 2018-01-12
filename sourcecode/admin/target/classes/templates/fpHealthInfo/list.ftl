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
							<div class="col-sm-11">
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
                                                        name="beginTime" dh-type="datepick" placeholder="发布开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="发布结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
											<div class="row col-md-4">
												<label for="userNo">用户工号</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="userNo" value="${query.userNo!}" />
												</div>
											</div>
                                            <div class="row col-md-4">
                                                <label for="userName">用户名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name="userName" value="${query.userName!}" />
                                                </div>
                                            </div>
											<div class="row col-md-4">
												<label for="selfDesc">身体自述</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="selfDesc" value="${query.selfDesc!}" />
												</div>
											</div>
											<div class="row col-md-4">
												<label for="healthSummary">身体状况</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="healthSummary" value="${query.healthSummary!}" />
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
                                    <th>准备日期</th>
                                    <th>用户工号</th>
                                    <th>用户姓名</th>
									<th>身体自述</th>
									<th>身体状况</th>
                                    <th>移动电话</th>
                                    <th>备用电话</th>
									<th>准备ID</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="hidden" name="id" value="${item.id}" />
									${(item.fpDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                                    <td>${item.userNo!}</td>
                                    <td>${item.userName!}</td>
									<td>${item.selfDesc!}</td>
									<td>${item.healthSummary!}</td>
									<td>${item.mobilePhone!}</td>
									<td>${item.phoneBak!}</td>
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
