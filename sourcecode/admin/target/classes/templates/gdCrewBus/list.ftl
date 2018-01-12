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
												<label for="lineCode">线路编号</label>
												<div class="col-sm-8">
													<input maxlength="30" type="text" class="form-control" name="lineCode" value="${query.lineCode!}" />
												</div>
											</div>
											<div class="row col-md-4">
												<label for="busLine">线路名称</label>
												<div class="col-sm-8">
													<input maxlength="50" type="text" class="form-control" name="busLine" value="${query.busLine!}" />
												</div>
											</div>
											<div class="row col-md-4">
												<label for="isAllday">是否全天</label>
												<div class="col-sm-8">
													<#if globalDict['isAllday']?exists> 
														<select class="form-control" name="isAllday">
															<option value="">请选择</option>
														<#list globalDict['isAllday']?keys as key>
															<option value="${key}" ${(query.isAllday?? && key==query.isAllday?c)?string( 'selected="selected"','')}>${globalDict['isAllday'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="isAllday" value="${query.isAllday!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="state">有效状态</label>
												<div class="col-sm-8">
													<#if globalDict['state']?exists> 
														<select class="form-control" name="state">
															<option value="">请选择</option>
														<#list globalDict['state']?keys as key>
															<option value="${key}" ${(query.state?? && key==query.state?c)?string( 'selected="selected"','')}>${globalDict['state'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="state" value="${query.state!}" />
													</#if>
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
									<th>线路编号</th>
									<th>线路名称</th>
									<th>是否全天</th>
									<th>有效状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" />
									   <input type="hidden" name="id" value="${item.id}" /></td>
									<td>${item.lineCode!}</td>
									<td>${item.busLine!}</td>
									<td>
										<#if item.isAllday?? 
												&& globalDict['isAllday']?exists 
												&& globalDict['isAllday'][item.isAllday?c]?exists> 
											${globalDict['isAllday'][item.isAllday?c]!} 
										<#else> 
											${item.isAllday!} 
										</#if>
									</td>
									<td>
										<#if item.state?? 
												&& globalDict['state']?exists 
												&& globalDict['state'][item.state?c]?exists> 
											${globalDict['state'][item.state?c]!} 
										<#else> 
											${item.state!} 
										</#if>
									</td>
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
