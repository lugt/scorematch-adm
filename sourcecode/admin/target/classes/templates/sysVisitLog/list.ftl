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
                                                        name="beginTime" dh-type="datepick" 
                                                        id="beginTime" placeholder="记录开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" 
                                                        id="endTime" placeholder="记录结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userName">用户名称</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="50" dh-type="any"  
                                                        onkeypress="verifyCharType(this,event)" 
                                                        type="text" class="form-control query-control" 
                                                        name="userName" 
                                                        value="${query.userName!}" 
                                                        placeholder="用户名称">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="device">来自设备</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="50" dh-type="any"
                                                        onkeypress="verifyCharType(this,event)" 
                                                        type="text" class="form-control query-control" 
                                                        name="device" placeholder="来自设备" 
                                                        value="${query.device!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="remoteHost">设备名称</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="50" dh-type="any" 
                                                        onkeypress="verifyCharType(this,event)" 
                                                        type="text" class="form-control query-control" 
                                                        name="remoteHost" placeholder="设备名称" 
                                                        value="${query.remoteHost!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="error">调用结果</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="10"
                                                        type="number" class="form-control query-control"
                                                        dh-type="integer"
                                                        name="error" value="${query.error!}" 
                                                        placeholder="调用结果"/>    
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn-success" style="float: right;" value="查询">
                                        </div>
                                    </div>
								</form>
							</div>
						</div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed table-hover">
							<thead>
								<tr>
									<th style="width: 5%">ID</th>
									<th style="width: 16%">日志记录时间</th>
									<th style="width: 20%">调用API</th>
									<th style="width: 8%">用户名称</th>
									<th style="width: 8%">来自设备</th>
									<th style="width: 8%">设备名称</th>
									<th style="width: 10%">输入参数</th>
									<th style="width: 10%">调用结果</th>
									<th style="width: 9%">耗时(毫秒)</th>
                                    <th style="width: 6%">操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
								    <td>${item.logId!}</td>
									<td>${(item.logTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${item.callApi!}</td>
									<td>${item.userName!}</td>
									<td>${item.device!}</td>
									<td>${item.remoteHost!}</td>									
									<td>${item.inputParams!}</td>
									<td>${item.error!}</td>
									<td>${item.timeConsuming!}</td>
                                    <td><a href="###" onclick="showModalEx('updatePage?logId=${item.logId}')">明细</a></td>
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
$(function (){
    $("#beginTime").mask("9999-99-99");
    $("#endTime").mask("9999-99-99");
    
    load_dh_type();    
})
</script>

</body>
</html>
