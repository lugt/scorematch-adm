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
                                                        name="beginTime" dh-type="datepick" placeholder="发送开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="发送结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="msgType">消息类型</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="msgType">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['msgType']?keys as key>
                                                        <option value="${key}" ${(key==((query.msgType)!""))?string( 'selected="selected"','')}>${globalDict['msgType'][(key!1)]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="title">消息标题</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="title" value="${query.title!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="content">消息内容</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="content" value="${query.content!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="sentBy">发送人工号</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="sentBy" value="${query.sentBy!}">    
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
									<th>消息类型</th>
									<th>标题</th>
									<th>内容</th>
									<th>发送人工号</th>
									<th>发送时间</th>
									<th>航班ID</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>
									    <input type="hidden" name="id" value="${item.id}" />                                   
								        <#if globalDict['msgType']?exists && globalDict['msgType'][item.msgType]?exists> 
									        ${globalDict['msgType'][item.msgType]!} 
									        <#else> ${item.msgType!} </#if></td>
									<td>${item.title!}</td>
									<td>${item.content!}</td>
									<td>${item.sentBy!}</td>
									<td>${(item.sentOn?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${item.flightId!}</td>
									<td><a href="#" onclick="showModalEx('readPage?id=${item.id}')">阅读</a></td>
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
