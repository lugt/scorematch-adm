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
                            <div style="float: left;" class="col-sm-11">
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
                                                        name="beginTime" dh-type="datepick" placeholder="阅读开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="阅读结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="noticeTitle">通告标题</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control"
                                                          name="noticeTitle" value="${query.noticeTitle!}">    
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
                                                <label for="isRead">阅读状态</label>
                                                <div class="col-sm-8">
                                                    <select name="isRead" class="form-control query-control">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['isRead']?keys as key>
                                                        <option value="${key}" ${(key==((query.isRead?c)!""))?string( 'selected="selected"','')}>${globalDict['isRead'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="fpId">准备航线</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="fpId" value="${query.fpId!}">    
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
                                    <th style="width: 10%">用户工号</th>
                                    <th style="width: 10%">用户名</th>
                                    <th style="width: 10%">阅读状态</th>
                                    <th style="width: 45%">通告标题</th>
                                    <th style="width: 15%">阅读时间</th>
                                    <th style="width: 10%">准备航线</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
                                    <td>${item.userNo!}</td>
                                    <td>${item.userName!}</td>
                                    <td><#if globalDict['isRead']?exists && globalDict['isRead'][item.isRead?c]?exists> 
                                           ${globalDict['isRead'][item.isRead?c]!} 
                                       <#else> ${item.isRead!} </#if></td>
                                    <td style="word-wrap:break-word;min-width:150px;max-width:900px;">${item.noticeTitle!}</td>
                                    <td>${(item.createdOn?string('yyyy-MM-dd HH:mm:ss'))!}</td>
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
