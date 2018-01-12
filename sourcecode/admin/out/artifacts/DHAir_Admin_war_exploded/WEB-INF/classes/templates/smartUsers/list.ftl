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
												<label for="uid">用户ID</label>
												<div class="col-sm-8">
													<#if globalDict['uid']?exists> 
														<select class="form-control" name="uid">
															<option value="">请选择</option>
														<#list globalDict['uid']?keys as key>
															<option value="${key}" ${(query.uid?? && key==query.uid?c)?string( 'selected="selected"','')}>${globalDict['uid'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="uid" value="${query.uid!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="usn">用户登陆名称</label>
												<div class="col-sm-8">
													<#if globalDict['usn']?exists> 
														<select class="form-control" name="usn">
															<option value="">请选择</option>
														<#list globalDict['usn']?keys as key>
															<option value="${key}" ${(query.usn?? && key==query.usn)?string( 'selected="selected"','')}>${globalDict['usn'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="usn" value="${query.usn!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="pss">密码密文</label>
												<div class="col-sm-8">
													<#if globalDict['pss']?exists> 
														<select class="form-control" name="pss">
															<option value="">请选择</option>
														<#list globalDict['pss']?keys as key>
															<option value="${key}" ${(query.pss?? && key==query.pss)?string( 'selected="selected"','')}>${globalDict['pss'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="pss" value="${query.pss!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="name">注册姓名</label>
												<div class="col-sm-8">
													<#if globalDict['name']?exists> 
														<select class="form-control" name="name">
															<option value="">请选择</option>
														<#list globalDict['name']?keys as key>
															<option value="${key}" ${(query.name?? && key==query.name)?string( 'selected="selected"','')}>${globalDict['name'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="name" value="${query.name!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="title">头衔</label>
												<div class="col-sm-8">
													<#if globalDict['title']?exists> 
														<select class="form-control" name="title">
															<option value="">请选择</option>
														<#list globalDict['title']?keys as key>
															<option value="${key}" ${(query.title?? && key==query.title)?string( 'selected="selected"','')}>${globalDict['title'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="title" value="${query.title!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="priv">权限</label>
												<div class="col-sm-8">
													<#if globalDict['priv']?exists> 
														<select class="form-control" name="priv">
															<option value="">请选择</option>
														<#list globalDict['priv']?keys as key>
															<option value="${key}" ${(query.priv?? && key==query.priv)?string( 'selected="selected"','')}>${globalDict['priv'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="priv" value="${query.priv!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="state">账户状态</label>
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
											<div class="row col-md-4">
												<label for="sess">登陆</label>
												<div class="col-sm-8">
													<#if globalDict['sess']?exists> 
														<select class="form-control" name="sess">
															<option value="">请选择</option>
														<#list globalDict['sess']?keys as key>
															<option value="${key}" ${(query.sess?? && key==query.sess)?string( 'selected="selected"','')}>${globalDict['sess'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="sess" value="${query.sess!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="phone">手机号</label>
												<div class="col-sm-8">
													<#if globalDict['phone']?exists> 
														<select class="form-control" name="phone">
															<option value="">请选择</option>
														<#list globalDict['phone']?keys as key>
															<option value="${key}" ${(query.phone?? && key==query.phone)?string( 'selected="selected"','')}>${globalDict['phone'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="phone" value="${query.phone!}" />
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
									<th>用户ID</th>
									<th>用户登陆名称</th>
									<th>注册姓名</th>
									<th>头衔</th>
									<th>权限</th>
									<th>账户状态</th>
									<th>登陆</th>
									<th>手机号</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.uid}" /></td>
									<input type="hidden" name="uid" value="${item.uid}" />
									<td>
										<#if item.uid?? 
												&& globalDict['uid']?exists 
												&& globalDict['uid'][item.uid?c]?exists> 
											${globalDict['uid'][item.uid?c]!} 
										<#else> 
											${item.uid!} 
										</#if>
									</td>
									<td>
										<#if item.usn?? 
												&& globalDict['usn']?exists 
												&& globalDict['usn'][item.usn]?exists> 
											${globalDict['usn'][item.usn]!} 
										<#else> 
											${item.usn!} 
										</#if>
									</td>
									<td>
										<script>document.write(decodeURIComponent("${item.name!}"))</script>
									</td>
									<td>
                                        <script>document.write(decodeURIComponent("${item.title!}"))</script>
									</td>
									<td>
										<#if item.priv?? 
												&& globalDict['priv']?exists 
												&& globalDict['priv'][item.priv]?exists> 
											${globalDict['priv'][item.priv]!} 
										<#else> 
											${item.priv!} 
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
									<td>
										<#if item.sess?? 
												&& globalDict['sess']?exists 
												&& globalDict['sess'][item.sess]?exists> 
											${globalDict['sess'][item.sess]!} 
										<#else> 
											${item.sess!} 
										</#if>
									</td>
									<td>
										<#if item.phone?? 
												&& globalDict['phone']?exists 
												&& globalDict['phone'][item.phone]?exists> 
											${globalDict['phone'][item.phone]!} 
										<#else> 
											${item.phone!} 
										</#if>
									</td>
									<td><a href="###" onclick="showModal('updatePage?uid=${item.uid}')">编辑</a></td>
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
