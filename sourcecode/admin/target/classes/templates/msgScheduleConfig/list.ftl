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
												<label for="msgType">消息类型</label>
												<div class="col-sm-8">
													<#if globalDict['msgType']?exists> 
														<select class="form-control" name="msgType">
															<option value="">请选择</option>
														<#list globalDict['msgType']?keys as key>
															<option value="${key}" ${(query.msgType?? && key==query.msgType)?string( 'selected="selected"','')}>${globalDict['msgType'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="msgType" value="${query.msgType!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="trigerType">发送模式</label>
												<div class="col-sm-8">
													<#if globalDict['trigerType']?exists> 
														<select class="form-control" name="trigerType">
															<option value="">请选择</option>
														<#list globalDict['trigerType']?keys as key>
															<option value="${key}" ${(query.trigerType?? && key==query.trigerType?c)?string( 'selected="selected"','')}>${globalDict['trigerType'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="trigerType" value="${query.trigerType!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="sendType">推送类型</label>
												<div class="col-sm-8">
													<#if globalDict['sendType']?exists> 
														<select class="form-control" name="sendType">
															<option value="">请选择</option>
														<#list globalDict['sendType']?keys as key>
															<option value="${key}" ${(query.sendType?? && key==query.sendType?c)?string( 'selected="selected"','')}>${globalDict['sendType'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="sendType" value="${query.sendType!}" />
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
									<th>序号</th>
									<th>消息类型</th>
									<th>消息生产发送模式</th>
									<th>扫描间隔(分钟) </th>
									<th>定时时间, 从几点开始</th>
									<th>消息推送类型</th>
									<th>内容模板，模板中变量用%s代替</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
									<td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
									<td>
										<#if item.msgType?? 
												&& globalDict['msgType']?exists 
												&& globalDict['msgType'][item.msgType]?exists> 
											${globalDict['msgType'][item.msgType]!} 
										<#else> 
											${item.msgType!} 
										</#if>
									</td>
									<td>
										<#if item.trigerType?? 
												&& globalDict['trigerType']?exists 
												&& globalDict['trigerType'][item.trigerType?c]?exists> 
											${globalDict['trigerType'][item.trigerType?c]!} 
										<#else> 
											${item.trigerType!} 
										</#if>
									</td>
									<td>
										<#if item.inteval?? 
												&& globalDict['inteval']?exists 
												&& globalDict['inteval'][item.inteval?c]?exists> 
											${globalDict['inteval'][item.inteval?c]!} 
										<#else> 
											${item.inteval!} 
										</#if>
									</td>
									<td>${(item.trigerTime?string('HH:mm:ss'))!}</td>
									<td>
										<#if item.sendType?? 
												&& globalDict['sendType']?exists 
												&& globalDict['sendType'][item.sendType?c]?exists> 
											${globalDict['sendType'][item.sendType?c]!} 
										<#else> 
											${item.sendType!} 
										</#if>
									</td>
									<td>
										<#if item.content?? 
												&& globalDict['content']?exists 
												&& globalDict['content'][item.content]?exists> 
											${globalDict['content'][item.content]!} 
										<#else> 
											${item.content!} 
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
