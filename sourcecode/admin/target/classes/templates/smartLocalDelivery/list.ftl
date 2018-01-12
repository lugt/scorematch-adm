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
												<label for="deliverid">派送单ID</label>
												<div class="col-sm-8">
													<#if globalDict['deliverid']?exists> 
														<select class="form-control" name="deliverid">
															<option value="">请选择</option>
														<#list globalDict['deliverid']?keys as key>
															<option value="${key}" ${(query.deliverid?? && key==query.deliverid?c)?string( 'selected="selected"','')}>${globalDict['deliverid'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="deliverid" value="${query.deliverid!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="orderid">订单ID</label>
												<div class="col-sm-8">
													<#if globalDict['orderid']?exists> 
														<select class="form-control" name="orderid">
															<option value="">请选择</option>
														<#list globalDict['orderid']?keys as key>
															<option value="${key}" ${(query.orderid?? && key==query.orderid?c)?string( 'selected="selected"','')}>${globalDict['orderid'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="orderid" value="${query.orderid!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="uid">用户名</label>
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
												<label for="type">发货类型</label>
												<div class="col-sm-8">
													<#if globalDict['type']?exists> 
														<select class="form-control" name="type">
															<option value="">请选择</option>
														<#list globalDict['type']?keys as key>
															<option value="${key}" ${(query.type?? && key==query.type?c)?string( 'selected="selected"','')}>${globalDict['type'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="type" value="${query.type!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="status">发货状态</label>
												<div class="col-sm-8">
													<#if globalDict['status']?exists> 
														<select class="form-control" name="status">
															<option value="">请选择</option>
														<#list globalDict['status']?keys as key>
															<option value="${key}" ${(query.status?? && key==query.status?c)?string( 'selected="selected"','')}>${globalDict['status'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="status" value="${query.status!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="sender">运输人</label>
												<div class="col-sm-8">
													<#if globalDict['sender']?exists> 
														<select class="form-control" name="sender">
															<option value="">请选择</option>
														<#list globalDict['sender']?keys as key>
															<option value="${key}" ${(query.sender?? && key==query.sender)?string( 'selected="selected"','')}>${globalDict['sender'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="sender" value="${query.sender!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="address">接受地址</label>
												<div class="col-sm-8">
													<#if globalDict['address']?exists> 
														<select class="form-control" name="address">
															<option value="">请选择</option>
														<#list globalDict['address']?keys as key>
															<option value="${key}" ${(query.address?? && key==query.address?c)?string( 'selected="selected"','')}>${globalDict['address'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="address" value="${query.address!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="carrier">派送人员</label>
												<div class="col-sm-8">
													<#if globalDict['carrier']?exists> 
														<select class="form-control" name="carrier">
															<option value="">请选择</option>
														<#list globalDict['carrier']?keys as key>
															<option value="${key}" ${(query.carrier?? && key==query.carrier)?string( 'selected="selected"','')}>${globalDict['carrier'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="carrier" value="${query.carrier!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="starttime">开始时间</label>
												<div class="col-sm-8">
													<#if globalDict['starttime']?exists> 
														<select class="form-control" name="starttime">
															<option value="">请选择</option>
														<#list globalDict['starttime']?keys as key>
															<option value="${key}" ${(query.starttime?? && key==query.starttime?c)?string( 'selected="selected"','')}>${globalDict['starttime'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="starttime" value="${query.starttime!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="reservetime">预定上门时间</label>
												<div class="col-sm-8">
													<#if globalDict['reservetime']?exists> 
														<select class="form-control" name="reservetime">
															<option value="">请选择</option>
														<#list globalDict['reservetime']?keys as key>
															<option value="${key}" ${(query.reservetime?? && key==query.reservetime?c)?string( 'selected="selected"','')}>${globalDict['reservetime'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="reservetime" value="${query.reservetime!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="packagetime">包裹出库时间</label>
												<div class="col-sm-8">
													<#if globalDict['packagetime']?exists> 
														<select class="form-control" name="packagetime">
															<option value="">请选择</option>
														<#list globalDict['packagetime']?keys as key>
															<option value="${key}" ${(query.packagetime?? && key==query.packagetime?c)?string( 'selected="selected"','')}>${globalDict['packagetime'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="packagetime" value="${query.packagetime!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="accepttime">签收时间</label>
												<div class="col-sm-8">
													<#if globalDict['accepttime']?exists> 
														<select class="form-control" name="accepttime">
															<option value="">请选择</option>
														<#list globalDict['accepttime']?keys as key>
															<option value="${key}" ${(query.accepttime?? && key==query.accepttime?c)?string( 'selected="selected"','')}>${globalDict['accepttime'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="accepttime" value="${query.accepttime!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="confirmtime">确认收获时间</label>
												<div class="col-sm-8">
													<#if globalDict['confirmtime']?exists> 
														<select class="form-control" name="confirmtime">
															<option value="">请选择</option>
														<#list globalDict['confirmtime']?keys as key>
															<option value="${key}" ${(query.confirmtime?? && key==query.confirmtime?c)?string( 'selected="selected"','')}>${globalDict['confirmtime'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="confirmtime" value="${query.confirmtime!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="logs">记录信息</label>
												<div class="col-sm-8">
													<#if globalDict['logs']?exists> 
														<select class="form-control" name="logs">
															<option value="">请选择</option>
														<#list globalDict['logs']?keys as key>
															<option value="${key}" ${(query.logs?? && key==query.logs)?string( 'selected="selected"','')}>${globalDict['logs'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="logs" value="${query.logs!}" />
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
									<th>派送单ID</th>
									<th>订单ID</th>
									<th>用户名</th>
									<th>发货类型</th>
									<th>发货状态</th>
									<th>运输人</th>
									<th>接受地址</th>
									<th>派送人员</th>
									<th>开始时间</th>
									<th>预定上门时间</th>
									<th>包裹出库时间</th>
									<th>签收时间</th>
									<th>确认收获时间</th>
									<th>记录信息</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.deliverid}" /></td>
									<td>${item_index+1}<input type="hidden" name="deliverid" value="${item.deliverid}" /></td>
									<td>
										<#if item.deliverid?? 
												&& globalDict['deliverid']?exists 
												&& globalDict['deliverid'][item.deliverid?c]?exists> 
											${globalDict['deliverid'][item.deliverid?c]!} 
										<#else> 
											${item.deliverid!} 
										</#if>
									</td>
									<td>
										<#if item.orderid?? 
												&& globalDict['orderid']?exists 
												&& globalDict['orderid'][item.orderid?c]?exists> 
											${globalDict['orderid'][item.orderid?c]!} 
										<#else> 
											${item.orderid!} 
										</#if>
									</td>
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
										<#if item.type?? 
												&& globalDict['type']?exists 
												&& globalDict['type'][item.type?c]?exists> 
											${globalDict['type'][item.type?c]!} 
										<#else> 
											${item.type!} 
										</#if>
									</td>
									<td>
										<#if item.status?? 
												&& globalDict['status']?exists 
												&& globalDict['status'][item.status?c]?exists> 
											${globalDict['status'][item.status?c]!} 
										<#else> 
											${item.status!} 
										</#if>
									</td>
									<td>
										<#if item.sender?? 
												&& globalDict['sender']?exists 
												&& globalDict['sender'][item.sender]?exists> 
											${globalDict['sender'][item.sender]!} 
										<#else> 
											${item.sender!} 
										</#if>
									</td>
									<td>
										<#if item.address?? 
												&& globalDict['address']?exists 
												&& globalDict['address'][item.address?c]?exists> 
											${globalDict['address'][item.address?c]!} 
										<#else> 
											${item.address!} 
										</#if>
									</td>
									<td>
										<#if item.carrier?? 
												&& globalDict['carrier']?exists 
												&& globalDict['carrier'][item.carrier]?exists> 
											${globalDict['carrier'][item.carrier]!} 
										<#else> 
											${item.carrier!} 
										</#if>
									</td>
									<td>
										<#if item.starttime?? 
												&& globalDict['starttime']?exists 
												&& globalDict['starttime'][item.starttime?c]?exists> 
											${globalDict['starttime'][item.starttime?c]!} 
										<#else> 
											${item.starttime!} 
										</#if>
									</td>
									<td>
										<#if item.reservetime?? 
												&& globalDict['reservetime']?exists 
												&& globalDict['reservetime'][item.reservetime?c]?exists> 
											${globalDict['reservetime'][item.reservetime?c]!} 
										<#else> 
											${item.reservetime!} 
										</#if>
									</td>
									<td>
										<#if item.packagetime?? 
												&& globalDict['packagetime']?exists 
												&& globalDict['packagetime'][item.packagetime?c]?exists> 
											${globalDict['packagetime'][item.packagetime?c]!} 
										<#else> 
											${item.packagetime!} 
										</#if>
									</td>
									<td>
										<#if item.accepttime?? 
												&& globalDict['accepttime']?exists 
												&& globalDict['accepttime'][item.accepttime?c]?exists> 
											${globalDict['accepttime'][item.accepttime?c]!} 
										<#else> 
											${item.accepttime!} 
										</#if>
									</td>
									<td>
										<#if item.confirmtime?? 
												&& globalDict['confirmtime']?exists 
												&& globalDict['confirmtime'][item.confirmtime?c]?exists> 
											${globalDict['confirmtime'][item.confirmtime?c]!} 
										<#else> 
											${item.confirmtime!} 
										</#if>
									</td>
									<td>
										<#if item.logs?? 
												&& globalDict['logs']?exists 
												&& globalDict['logs'][item.logs]?exists> 
											${globalDict['logs'][item.logs]!} 
										<#else> 
											${item.logs!} 
										</#if>
									</td>
									<td><a href="###" onclick="showModal('updatePage?deliverid=${item.deliverid}')">编辑</a></td>
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
