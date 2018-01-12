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
                                <button type="button" class="btn btn-danger" onclick="putOnBlackListBatch()">放入黑名单</button>
                                <button type="button" class="btn btn-primary" onclick="takeOffBlackListBatch()">移出黑名单</button>
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
                                                <label for="beginTime">开始时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="beginTime" dh-type="datepick" placeholder="最近登录开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="最近登录结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>

											<div class="row col-md-4">
												<label for="userNo">用户名称</label>
												<div class="col-sm-8">
													<input maxlength="50" type="text" class="form-control" name="userName" value="${query.userName!}" />
												</div>
											</div>
											<div class="row col-md-4">
												<label for="deviceName">设备名称</label>
												<div class="col-sm-8">
													<input maxlength="50" type="text" class="form-control" name="deviceName" value="${query.deviceName!}" />
												</div>
											</div>
											<div class="row col-md-4">
												<label for="onBlackList">是否在黑名单内</label>
												<div class="col-sm-6">
													<#if globalDict['onBlackList']?exists> 
														<select class="form-control" name="onBlackList">
															<option value="">请选择</option>
														<#list globalDict['onBlackList']?keys as key>
															<option value="${key}" ${(query.onBlackList?? && key==query.onBlackList?c)?string( 'selected="selected"','')}>${globalDict['onBlackList'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="onBlackList" value="${query.onBlackList!}" />
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
                                    <th>用户工号</th>
                                    <th>用户名称</th>
									<th>个推clientId</th>
									<th>设备名称</th>
									<th>首次绑定时间</th>
									<th>最近登录时间</th>
									<th>是否在黑名单内</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" />
									   <input type="hidden" name="id" value="${item.id}" /></td>
									<td>${item.userNo!}</td>
									<td>${item.userName!}</td>
									<td>${item.clientId!}</td>
									<td>${item.deviceName!}</td>
									<td>${(item.bindTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${(item.lastLoginTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>
										<#if item.onBlackList?? 
												&& globalDict['onBlackList']?exists 
												&& globalDict['onBlackList'][item.onBlackList?c]?exists> 
											${globalDict['onBlackList'][item.onBlackList?c]!} 
										<#else> 
											${item.onBlackList!} 
										</#if>
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

<script>

function putOnBlackListBatch(reqData) {
    reqData = reqData || getTableDataJson();
    if(!confirm("您确定要把选定的设备加入黑名单么？选定了 "+JSON.parse(reqData).length+" 项。")){return;}
    batchDeal('putOnBlackListBatch', reqData);
}

function takeOffBlackListBatch(reqData) {
    reqData = reqData || getTableDataJson();
    if(!confirm("您确定要把选定的设备移出黑名单么？选定了 "+JSON.parse(reqData).length+" 项。")){return;}
    batchDeal('takeOffBlackListBatch', reqData);
}

</script>

</html>
