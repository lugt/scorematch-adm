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
												<label for="addrid">地址ID</label>
												<div class="col-sm-8">
													<#if globalDict['addrid']?exists> 
														<select class="form-control" name="addrid">
															<option value="">请选择</option>
														<#list globalDict['addrid']?keys as key>
															<option value="${key}" ${(query.addrid?? && key==query.addrid?c)?string( 'selected="selected"','')}>${globalDict['addrid'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addrid" value="${query.addrid!}" />
													</#if>
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
												<label for="mobile">手机号</label>
												<div class="col-sm-8">
													<#if globalDict['mobile']?exists> 
														<select class="form-control" name="mobile">
															<option value="">请选择</option>
														<#list globalDict['mobile']?keys as key>
															<option value="${key}" ${(query.mobile?? && key==query.mobile)?string( 'selected="selected"','')}>${globalDict['mobile'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="mobile" value="${query.mobile!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="recver">收货人</label>
												<div class="col-sm-8">
													<#if globalDict['recver']?exists> 
														<select class="form-control" name="recver">
															<option value="">请选择</option>
														<#list globalDict['recver']?keys as key>
															<option value="${key}" ${(query.recver?? && key==query.recver)?string( 'selected="selected"','')}>${globalDict['recver'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="recver" value="${query.recver!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="type">类型</label>
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
												<label for="province">省份</label>
												<div class="col-sm-8">
													<#if globalDict['province']?exists> 
														<select class="form-control" name="province">
															<option value="">请选择</option>
														<#list globalDict['province']?keys as key>
															<option value="${key}" ${(query.province?? && key==query.province?c)?string( 'selected="selected"','')}>${globalDict['province'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="province" value="${query.province!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="city">城市</label>
												<div class="col-sm-8">
													<#if globalDict['city']?exists> 
														<select class="form-control" name="city">
															<option value="">请选择</option>
														<#list globalDict['city']?keys as key>
															<option value="${key}" ${(query.city?? && key==query.city?c)?string( 'selected="selected"','')}>${globalDict['city'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="city" value="${query.city!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="district">区县</label>
												<div class="col-sm-8">
													<#if globalDict['district']?exists> 
														<select class="form-control" name="district">
															<option value="">请选择</option>
														<#list globalDict['district']?keys as key>
															<option value="${key}" ${(query.district?? && key==query.district?c)?string( 'selected="selected"','')}>${globalDict['district'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="district" value="${query.district!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="addr">地址详细</label>
												<div class="col-sm-8">
													<#if globalDict['addr']?exists> 
														<select class="form-control" name="addr">
															<option value="">请选择</option>
														<#list globalDict['addr']?keys as key>
															<option value="${key}" ${(query.addr?? && key==query.addr)?string( 'selected="selected"','')}>${globalDict['addr'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="addr" value="${query.addr!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="memo">备忘</label>
												<div class="col-sm-8">
													<#if globalDict['memo']?exists> 
														<select class="form-control" name="memo">
															<option value="">请选择</option>
														<#list globalDict['memo']?keys as key>
															<option value="${key}" ${(query.memo?? && key==query.memo)?string( 'selected="selected"','')}>${globalDict['memo'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="memo" value="${query.memo!}" />
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
									<th>地址ID</th>
									<th>用户ID</th>
									<th>手机号</th>
									<th>收货人</th>
									<th>类型</th>
									<th>省份</th>
									<th>城市</th>
									<th>区县</th>
									<th>地址详细</th>
									<th>备忘</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.addrid}" /></td>
									<td>${item_index+1}<input type="hidden" name="addrid" value="${item.addrid}" /></td>
									<td>
										<#if item.addrid?? 
												&& globalDict['addrid']?exists 
												&& globalDict['addrid'][item.addrid?c]?exists> 
											${globalDict['addrid'][item.addrid?c]!} 
										<#else> 
											${item.addrid!} 
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
										<#if item.mobile?? 
												&& globalDict['mobile']?exists 
												&& globalDict['mobile'][item.mobile]?exists> 
											${globalDict['mobile'][item.mobile]!} 
										<#else> 
											${item.mobile!} 
										</#if>
									</td>
									<td>
										<script>document.write(decodeURIComponent("${item.recver!}"))</script>
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
										<#if item.province?? 
												&& globalDict['province']?exists 
												&& globalDict['province'][item.province?c]?exists> 
											${globalDict['province'][item.province?c]!} 
										<#else> 
											${item.province!} 
										</#if>
									</td>
									<td>
										<#if item.city?? 
												&& globalDict['city']?exists 
												&& globalDict['city'][item.city?c]?exists> 
											${globalDict['city'][item.city?c]!} 
										<#else> 
											${item.city!} 
										</#if>
									</td>
									<td>
										<#if item.district?? 
												&& globalDict['district']?exists 
												&& globalDict['district'][item.district?c]?exists> 
											${globalDict['district'][item.district?c]!} 
										<#else> 
											${item.district!} 
										</#if>
									</td>
									<td>
										<script>document.write(decodeURIComponent("${item.addr!}"))</script>
									</td>
									<td>
										<#if item.memo?? 
												&& globalDict['memo']?exists 
												&& globalDict['memo'][item.memo]?exists> 
											${globalDict['memo'][item.memo]!} 
										<#else> 
											${item.memo!} 
										</#if>
									</td>
									<td><a href="###" onclick="showModal('updatePage?addrid=${item.addrid}')">编辑</a></td>
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
