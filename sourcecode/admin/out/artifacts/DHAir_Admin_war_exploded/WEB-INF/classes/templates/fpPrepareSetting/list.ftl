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
												<label for="userType">用户类型</label>
												<div class="col-sm-8">
													<#if globalDict['userType']?exists> 
														<select class="form-control" name="userType">
															<option value="">请选择</option>
														<#list globalDict['userType']?keys as key>
															<option value="${key}" ${(query.userType?? && key==query.userType)?string( 'selected="selected"','')}>${globalDict['userType'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="userType" value="${query.userType!}" />
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
									<th>用户类型</th>
									<th>最晚提前准备时间配置小时</th>
									<th>最早提前准备时间配置小时</th>
									<th>签到提醒时间</th>
									<th>航前签到时间的文字</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
									<td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
									<td>
										<#if item.userType?? 
												&& globalDict['userType']?exists 
												&& globalDict['userType'][item.userType]?exists> 
											${globalDict['userType'][item.userType]!} 
										<#else> 
											${item.userType!} 
										</#if>
									</td>
									<td>
										<#if item.preMinHours?? 
												&& globalDict['preMinHours']?exists 
												&& globalDict['preMinHours'][item.preMinHours?c]?exists> 
											${globalDict['preMinHours'][item.preMinHours?c]!} 
										<#else> 
											${item.preMinHours!} 
										</#if>
									</td>
									<td>
										<#if item.preMaxHours?? 
												&& globalDict['preMaxHours']?exists 
												&& globalDict['preMaxHours'][item.preMaxHours?c]?exists> 
											${globalDict['preMaxHours'][item.preMaxHours?c]!} 
										<#else> 
											${item.preMaxHours!} 
										</#if>
									</td>
									<td>
										<#if item.checkinAlertHours?? 
												&& globalDict['checkinAlertHours']?exists 
												&& globalDict['checkinAlertHours'][item.checkinAlertHours?c]?exists> 
											${globalDict['checkinAlertHours'][item.checkinAlertHours?c]!} 
										<#else> 
											${item.checkinAlertHours!} 
										</#if>
									</td>
									<td>
										<#if item.checkinAlertText?? 
												&& globalDict['checkinAlertText']?exists 
												&& globalDict['checkinAlertText'][item.checkinAlertText]?exists> 
											${globalDict['checkinAlertText'][item.checkinAlertText]!} 
										<#else> 
											${item.checkinAlertText!} 
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
