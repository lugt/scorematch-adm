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
												<label for="goodid">商品ID</label>
												<div class="col-sm-8">
													<#if globalDict['goodid']?exists> 
														<select class="form-control" name="goodid">
															<option value="">请选择</option>
														<#list globalDict['goodid']?keys as key>
															<option value="${key}" ${(query.goodid?? && key==query.goodid?c)?string( 'selected="selected"','')}>${globalDict['goodid'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="goodid" value="${query.goodid!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="name">商品名称</label>
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
												<label for="goodsNo">商品的货号</label>
												<div class="col-sm-8">
													<#if globalDict['goodsNo']?exists> 
														<select class="form-control" name="goodsNo">
															<option value="">请选择</option>
														<#list globalDict['goodsNo']?keys as key>
															<option value="${key}" ${(query.goodsNo?? && key==query.goodsNo)?string( 'selected="selected"','')}>${globalDict['goodsNo'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="goodsNo" value="${query.goodsNo!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="modelId">模型ID</label>
												<div class="col-sm-8">
													<#if globalDict['modelId']?exists> 
														<select class="form-control" name="modelId">
															<option value="">请选择</option>
														<#list globalDict['modelId']?keys as key>
															<option value="${key}" ${(query.modelId?? && key==query.modelId?c)?string( 'selected="selected"','')}>${globalDict['modelId'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="modelId" value="${query.modelId!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="sellPrice">销售价格</label>
												<div class="col-sm-8">
													<#if globalDict['sellPrice']?exists> 
														<select class="form-control" name="sellPrice">
															<option value="">请选择</option>
														<#list globalDict['sellPrice']?keys as key>
															<option value="${key}" ${(query.sellPrice?? && key==query.sellPrice)?string( 'selected="selected"','')}>${globalDict['sellPrice'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="sellPrice" value="${query.sellPrice!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="storeNums">库存</label>
												<div class="col-sm-8">
													<#if globalDict['storeNums']?exists> 
														<select class="form-control" name="storeNums">
															<option value="">请选择</option>
														<#list globalDict['storeNums']?keys as key>
															<option value="${key}" ${(query.storeNums?? && key==query.storeNums?c)?string( 'selected="selected"','')}>${globalDict['storeNums'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="storeNums" value="${query.storeNums!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="searchWords">产品搜索词库</label>
												<div class="col-sm-8">
													<#if globalDict['searchWords']?exists> 
														<select class="form-control" name="searchWords">
															<option value="">请选择</option>
														<#list globalDict['searchWords']?keys as key>
															<option value="${key}" ${(query.searchWords?? && key==query.searchWords)?string( 'selected="selected"','')}>${globalDict['searchWords'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="searchWords" value="${query.searchWords!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="weight">重量</label>
												<div class="col-sm-8">
													<#if globalDict['weight']?exists> 
														<select class="form-control" name="weight">
															<option value="">请选择</option>
														<#list globalDict['weight']?keys as key>
															<option value="${key}" ${(query.weight?? && key==query.weight)?string( 'selected="selected"','')}>${globalDict['weight'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="weight" value="${query.weight!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="brandId">品牌ID</label>
												<div class="col-sm-8">
													<#if globalDict['brandId']?exists> 
														<select class="form-control" name="brandId">
															<option value="">请选择</option>
														<#list globalDict['brandId']?keys as key>
															<option value="${key}" ${(query.brandId?? && key==query.brandId?c)?string( 'selected="selected"','')}>${globalDict['brandId'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="brandId" value="${query.brandId!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="sort">排序</label>
												<div class="col-sm-8">
													<#if globalDict['sort']?exists> 
														<select class="form-control" name="sort">
															<option value="">请选择</option>
														<#list globalDict['sort']?keys as key>
															<option value="${key}" ${(query.sort?? && key==query.sort?c)?string( 'selected="selected"','')}>${globalDict['sort'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="sort" value="${query.sort!}" />
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
									<th>商品ID</th>
									<th>商品名称</th>
									<th>商品的货号</th>
									<th>模型ID</th>
									<th>销售价格</th>
									<th>市场价格</th>
									<th>成本价格</th>
									<th>库存</th>
									<th>重量</th>
									<th>计量单位</th>
									<th>品牌ID</th>
									<th>排序</th>
									<th>详细页缩略图 小图</th>
									<th>序列化存储规格,key值为规则ID，value为此商品具有的规格值</th>
									<th>经验值</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.goodid}" /></td>
									<td>${item_index+1}<input type="hidden" name="goodid" value="${item.goodid}" /></td>
									<td>
										<#if item.goodid?? 
												&& globalDict['goodid']?exists 
												&& globalDict['goodid'][item.goodid?c]?exists> 
											${globalDict['goodid'][item.goodid?c]!} 
										<#else> 
											${item.goodid!} 
										</#if>
									</td>
									<td>
										<#if item.name?? 
												&& globalDict['name']?exists 
												&& globalDict['name'][item.name]?exists> 
											${globalDict['name'][item.name]!} 
										<#else> 
											${item.name!} 
										</#if>
									</td>
									<td>
										<#if item.goodsNo?? 
												&& globalDict['goodsNo']?exists 
												&& globalDict['goodsNo'][item.goodsNo]?exists> 
											${globalDict['goodsNo'][item.goodsNo]!} 
										<#else> 
											${item.goodsNo!} 
										</#if>
									</td>
									<td>
										<#if item.modelId?? 
												&& globalDict['modelId']?exists 
												&& globalDict['modelId'][item.modelId?c]?exists> 
											${globalDict['modelId'][item.modelId?c]!} 
										<#else> 
											${item.modelId!} 
										</#if>
									</td>
									<td>
										<#if item.sellPrice?? 
												&& globalDict['sellPrice']?exists 
												&& globalDict['sellPrice'][item.sellPrice]?exists> 
											${globalDict['sellPrice'][item.sellPrice]!} 
										<#else> 
											${item.sellPrice!} 
										</#if>
									</td>
									<td>
										<#if item.marketPrice?? 
												&& globalDict['marketPrice']?exists 
												&& globalDict['marketPrice'][item.marketPrice]?exists> 
											${globalDict['marketPrice'][item.marketPrice]!} 
										<#else> 
											${item.marketPrice!} 
										</#if>
									</td>
									<td>
										<#if item.costPrice?? 
												&& globalDict['costPrice']?exists 
												&& globalDict['costPrice'][item.costPrice]?exists> 
											${globalDict['costPrice'][item.costPrice]!} 
										<#else> 
											${item.costPrice!} 
										</#if>
									</td>
									<!--<td>${(item.upTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${(item.downTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${(item.createTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>-->
									<td>
										<#if item.storeNums?? 
												&& globalDict['storeNums']?exists 
												&& globalDict['storeNums'][item.storeNums?c]?exists> 
											${globalDict['storeNums'][item.storeNums?c]!} 
										<#else> 
											${item.storeNums!} 
										</#if>
									</td>
									<td>
										<#if item.weight?? 
												&& globalDict['weight']?exists 
												&& globalDict['weight'][item.weight]?exists> 
											${globalDict['weight'][item.weight]!} 
										<#else> 
											${item.weight!} 
										</#if>
									</td>
									<td>
										<#if item.unit?? 
												&& globalDict['unit']?exists 
												&& globalDict['unit'][item.unit]?exists> 
											${globalDict['unit'][item.unit]!} 
										<#else> 
											${item.unit!} 
										</#if>
									</td>
									<td>
										<#if item.brandId?? 
												&& globalDict['brandId']?exists 
												&& globalDict['brandId'][item.brandId?c]?exists> 
											${globalDict['brandId'][item.brandId?c]!} 
										<#else> 
											${item.brandId!} 
										</#if>
									</td>
									<td>
										<#if item.sort?? 
												&& globalDict['sort']?exists 
												&& globalDict['sort'][item.sort?c]?exists> 
											${globalDict['sort'][item.sort?c]!} 
										<#else> 
											${item.sort!} 
										</#if>
									</td>
									<td>
										<#if item.smallImg?? 
												&& globalDict['smallImg']?exists 
												&& globalDict['smallImg'][item.smallImg]?exists> 
											${globalDict['smallImg'][item.smallImg]!} 
										<#else> 
											<img src="https://north.niimei.com/smartpets/${item.smallImg!}" style="max-width: 50px;"/>
										</#if>
									</td>
									<td>
										<#if item.specArray?? 
												&& globalDict['specArray']?exists 
												&& globalDict['specArray'][item.specArray]?exists> 
											${globalDict['specArray'][item.specArray]!} 
										<#else> 
											${item.specArray!} 
										</#if>
									</td>
									<td>
										<#if item.exp?? 
												&& globalDict['exp']?exists 
												&& globalDict['exp'][item.exp?c]?exists> 
											${globalDict['exp'][item.exp?c]!} 
										<#else> 
											${item.exp!} 
										</#if>
									</td>
									<td><a href="###" onclick="showModal('updatePage?goodid=${item.goodid}')">编辑</a></td>
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
