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
												<label for="addr1">地址1</label>
												<div class="col-sm-8">
													<#if globalDict['addr1']?exists> 
														<select class="form-control" name="addr1">
															<option value="">请选择</option>
														<#list globalDict['addr1']?keys as key>
															<option value="${key}" ${(query.addr1?? && key==query.addr1?c)?string( 'selected="selected"','')}>${globalDict['addr1'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr1" value="${query.addr1!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr2">地址2</label>
												<div class="col-sm-8">
													<#if globalDict['addr2']?exists> 
														<select class="form-control" name="addr2">
															<option value="">请选择</option>
														<#list globalDict['addr2']?keys as key>
															<option value="${key}" ${(query.addr2?? && key==query.addr2?c)?string( 'selected="selected"','')}>${globalDict['addr2'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr2" value="${query.addr2!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr3">地址3</label>
												<div class="col-sm-8">
													<#if globalDict['addr3']?exists> 
														<select class="form-control" name="addr3">
															<option value="">请选择</option>
														<#list globalDict['addr3']?keys as key>
															<option value="${key}" ${(query.addr3?? && key==query.addr3?c)?string( 'selected="selected"','')}>${globalDict['addr3'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr3" value="${query.addr3!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr4">地址4</label>
												<div class="col-sm-8">
													<#if globalDict['addr4']?exists> 
														<select class="form-control" name="addr4">
															<option value="">请选择</option>
														<#list globalDict['addr4']?keys as key>
															<option value="${key}" ${(query.addr4?? && key==query.addr4?c)?string( 'selected="selected"','')}>${globalDict['addr4'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr4" value="${query.addr4!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr5">地址5</label>
												<div class="col-sm-8">
													<#if globalDict['addr5']?exists> 
														<select class="form-control" name="addr5">
															<option value="">请选择</option>
														<#list globalDict['addr5']?keys as key>
															<option value="${key}" ${(query.addr5?? && key==query.addr5?c)?string( 'selected="selected"','')}>${globalDict['addr5'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr5" value="${query.addr5!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr6">地址6</label>
												<div class="col-sm-8">
													<#if globalDict['addr6']?exists> 
														<select class="form-control" name="addr6">
															<option value="">请选择</option>
														<#list globalDict['addr6']?keys as key>
															<option value="${key}" ${(query.addr6?? && key==query.addr6?c)?string( 'selected="selected"','')}>${globalDict['addr6'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr6" value="${query.addr6!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr7">地址7</label>
												<div class="col-sm-8">
													<#if globalDict['addr7']?exists> 
														<select class="form-control" name="addr7">
															<option value="">请选择</option>
														<#list globalDict['addr7']?keys as key>
															<option value="${key}" ${(query.addr7?? && key==query.addr7?c)?string( 'selected="selected"','')}>${globalDict['addr7'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr7" value="${query.addr7!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr8">地址8</label>
												<div class="col-sm-8">
													<#if globalDict['addr8']?exists> 
														<select class="form-control" name="addr8">
															<option value="">请选择</option>
														<#list globalDict['addr8']?keys as key>
															<option value="${key}" ${(query.addr8?? && key==query.addr8?c)?string( 'selected="selected"','')}>${globalDict['addr8'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr8" value="${query.addr8!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr9">地址9</label>
												<div class="col-sm-8">
													<#if globalDict['addr9']?exists> 
														<select class="form-control" name="addr9">
															<option value="">请选择</option>
														<#list globalDict['addr9']?keys as key>
															<option value="${key}" ${(query.addr9?? && key==query.addr9?c)?string( 'selected="selected"','')}>${globalDict['addr9'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr9" value="${query.addr9!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="defaultaddr">默认地址</label>
												<div class="col-sm-8">
													<#if globalDict['defaultaddr']?exists> 
														<select class="form-control" name="defaultaddr">
															<option value="">请选择</option>
														<#list globalDict['defaultaddr']?keys as key>
															<option value="${key}" ${(query.defaultaddr?? && key==query.defaultaddr?c)?string( 'selected="selected"','')}>${globalDict['defaultaddr'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="defaultaddr" value="${query.defaultaddr!}" />
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
									<th>用户ID</th>
									<th>地址1</th>
									<th>地址2</th>
									<th>地址3</th>
									<th>地址4</th>
									<th>地址5</th>
									<th>地址6</th>
									<th>地址7</th>
									<th>地址8</th>
									<th>地址9</th>
									<th>默认地址</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.uid}" /></td>
									<td>${item_index+1}<input type="hidden" name="uid" value="${item.uid}" /></td>
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
										<#if item.addr1?? 
												&& globalDict['addr1']?exists 
												&& globalDict['addr1'][item.addr1?c]?exists> 
											${globalDict['addr1'][item.addr1?c]!} 
										<#else> 
											${item.addr1!} 
										</#if>
									</td>
									<td>
										<#if item.addr2?? 
												&& globalDict['addr2']?exists 
												&& globalDict['addr2'][item.addr2?c]?exists> 
											${globalDict['addr2'][item.addr2?c]!} 
										<#else> 
											${item.addr2!} 
										</#if>
									</td>
									<td>
										<#if item.addr3?? 
												&& globalDict['addr3']?exists 
												&& globalDict['addr3'][item.addr3?c]?exists> 
											${globalDict['addr3'][item.addr3?c]!} 
										<#else> 
											${item.addr3!} 
										</#if>
									</td>
									<td>
										<#if item.addr4?? 
												&& globalDict['addr4']?exists 
												&& globalDict['addr4'][item.addr4?c]?exists> 
											${globalDict['addr4'][item.addr4?c]!} 
										<#else> 
											${item.addr4!} 
										</#if>
									</td>
									<td>
										<#if item.addr5?? 
												&& globalDict['addr5']?exists 
												&& globalDict['addr5'][item.addr5?c]?exists> 
											${globalDict['addr5'][item.addr5?c]!} 
										<#else> 
											${item.addr5!} 
										</#if>
									</td>
									<td>
										<#if item.addr6?? 
												&& globalDict['addr6']?exists 
												&& globalDict['addr6'][item.addr6?c]?exists> 
											${globalDict['addr6'][item.addr6?c]!} 
										<#else> 
											${item.addr6!} 
										</#if>
									</td>
									<td>
										<#if item.addr7?? 
												&& globalDict['addr7']?exists 
												&& globalDict['addr7'][item.addr7?c]?exists> 
											${globalDict['addr7'][item.addr7?c]!} 
										<#else> 
											${item.addr7!} 
										</#if>
									</td>
									<td>
										<#if item.addr8?? 
												&& globalDict['addr8']?exists 
												&& globalDict['addr8'][item.addr8?c]?exists> 
											${globalDict['addr8'][item.addr8?c]!} 
										<#else> 
											${item.addr8!} 
										</#if>
									</td>
									<td>
										<#if item.addr9?? 
												&& globalDict['addr9']?exists 
												&& globalDict['addr9'][item.addr9?c]?exists> 
											${globalDict['addr9'][item.addr9?c]!} 
										<#else> 
											${item.addr9!} 
										</#if>
									</td>
									<td>
										<#if item.defaultaddr?? 
												&& globalDict['defaultaddr']?exists 
												&& globalDict['defaultaddr'][item.defaultaddr?c]?exists> 
											${globalDict['defaultaddr'][item.defaultaddr?c]!} 
										<#else> 
											${item.defaultaddr!} 
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
