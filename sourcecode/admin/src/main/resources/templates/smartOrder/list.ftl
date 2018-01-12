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
												<label for="userId">用户ID</label>
												<div class="col-sm-8">
													<#if globalDict['userId']?exists> 
														<select class="form-control" name="userId">
															<option value="">请选择</option>
														<#list globalDict['userId']?keys as key>
															<option value="${key}" ${(query.userId?? && key==query.userId?c)?string( 'selected="selected"','')}>${globalDict['userId'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="userId" value="${query.userId!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="paymentId">支付ID</label>
												<div class="col-sm-8">
													<#if globalDict['paymentId']?exists> 
														<select class="form-control" name="paymentId">
															<option value="">请选择</option>
														<#list globalDict['paymentId']?keys as key>
															<option value="${key}" ${(query.paymentId?? && key==query.paymentId?c)?string( 'selected="selected"','')}>${globalDict['paymentId'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="paymentId" value="${query.paymentId!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="deliveryId">配送ID</label>
												<div class="col-sm-8">
													<#if globalDict['deliveryId']?exists> 
														<select class="form-control" name="deliveryId">
															<option value="">请选择</option>
														<#list globalDict['deliveryId']?keys as key>
															<option value="${key}" ${(query.deliveryId?? && key==query.deliveryId?c)?string( 'selected="selected"','')}>${globalDict['deliveryId'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="deliveryId" value="${query.deliveryId!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="merchandise">商品代码、数量、型号组合</label>
												<div class="col-sm-8">
													<#if globalDict['merchandise']?exists> 
														<select class="form-control" name="merchandise">
															<option value="">请选择</option>
														<#list globalDict['merchandise']?keys as key>
															<option value="${key}" ${(query.merchandise?? && key==query.merchandise)?string( 'selected="selected"','')}>${globalDict['merchandise'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="merchandise" value="${query.merchandise!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="status">订单状态1:生成订单,2：确认订单,3取消订单,4 物流中订单,5完成订单  6 作废订单</label>
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
												<label for="payStatus">支付状态 0：未支付，1：已支付，2：退款  3:   部分退款</label>
												<div class="col-sm-8">
													<#if globalDict['payStatus']?exists> 
														<select class="form-control" name="payStatus">
															<option value="">请选择</option>
														<#list globalDict['payStatus']?keys as key>
															<option value="${key}" ${(query.payStatus?? && key==query.payStatus?c)?string( 'selected="selected"','')}>${globalDict['payStatus'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="payStatus" value="${query.payStatus!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="distributionStatus">配送状态0：未发送，1：配货 2:  发货中  3 物流中 4 物流问题  5 已签收  6 签收异常   7 缺货  8 延迟发货</label>
												<div class="col-sm-8">
													<#if globalDict['distributionStatus']?exists> 
														<select class="form-control" name="distributionStatus">
															<option value="">请选择</option>
														<#list globalDict['distributionStatus']?keys as key>
															<option value="${key}" ${(query.distributionStatus?? && key==query.distributionStatus?c)?string( 'selected="selected"','')}>${globalDict['distributionStatus'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="distributionStatus" value="${query.distributionStatus!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="dueAmount">应付商品总金额</label>
												<div class="col-sm-8">
													<#if globalDict['dueAmount']?exists> 
														<select class="form-control" name="dueAmount">
															<option value="">请选择</option>
														<#list globalDict['dueAmount']?keys as key>
															<option value="${key}" ${(query.dueAmount?? && key==query.dueAmount)?string( 'selected="selected"','')}>${globalDict['dueAmount'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="dueAmount" value="${query.dueAmount!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="paidAmount">实付商品总金额</label>
												<div class="col-sm-8">
													<#if globalDict['paidAmount']?exists> 
														<select class="form-control" name="paidAmount">
															<option value="">请选择</option>
														<#list globalDict['paidAmount']?keys as key>
															<option value="${key}" ${(query.paidAmount?? && key==query.paidAmount)?string( 'selected="selected"','')}>${globalDict['paidAmount'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="paidAmount" value="${query.paidAmount!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="taxes">税金</label>
												<div class="col-sm-8">
													<#if globalDict['taxes']?exists> 
														<select class="form-control" name="taxes">
															<option value="">请选择</option>
														<#list globalDict['taxes']?keys as key>
															<option value="${key}" ${(query.taxes?? && key==query.taxes)?string( 'selected="selected"','')}>${globalDict['taxes'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="taxes" value="${query.taxes!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="payableFreight">总运费金额</label>
												<div class="col-sm-8">
													<#if globalDict['payableFreight']?exists> 
														<select class="form-control" name="payableFreight">
															<option value="">请选择</option>
														<#list globalDict['payableFreight']?keys as key>
															<option value="${key}" ${(query.payableFreight?? && key==query.payableFreight)?string( 'selected="selected"','')}>${globalDict['payableFreight'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="payableFreight" value="${query.payableFreight!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="realFreight">实付运费</label>
												<div class="col-sm-8">
													<#if globalDict['realFreight']?exists> 
														<select class="form-control" name="realFreight">
															<option value="">请选择</option>
														<#list globalDict['realFreight']?keys as key>
															<option value="${key}" ${(query.realFreight?? && key==query.realFreight)?string( 'selected="selected"','')}>${globalDict['realFreight'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="realFreight" value="${query.realFreight!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="payFee">支付手续费</label>
												<div class="col-sm-8">
													<#if globalDict['payFee']?exists> 
														<select class="form-control" name="payFee">
															<option value="">请选择</option>
														<#list globalDict['payFee']?keys as key>
															<option value="${key}" ${(query.payFee?? && key==query.payFee)?string( 'selected="selected"','')}>${globalDict['payFee'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="payFee" value="${query.payFee!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="promotions">促销优惠金额总计</label>
												<div class="col-sm-8">
													<#if globalDict['promotions']?exists> 
														<select class="form-control" name="promotions">
															<option value="">请选择</option>
														<#list globalDict['promotions']?keys as key>
															<option value="${key}" ${(query.promotions?? && key==query.promotions)?string( 'selected="selected"','')}>${globalDict['promotions'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="promotions" value="${query.promotions!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="discount">订单折扣或涨价比例</label>
												<div class="col-sm-8">
													<#if globalDict['discount']?exists> 
														<select class="form-control" name="discount">
															<option value="">请选择</option>
														<#list globalDict['discount']?keys as key>
															<option value="${key}" ${(query.discount?? && key==query.discount)?string( 'selected="selected"','')}>${globalDict['discount'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="discount" value="${query.discount!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="orderAmount">订单总金额</label>
												<div class="col-sm-8">
													<#if globalDict['orderAmount']?exists> 
														<select class="form-control" name="orderAmount">
															<option value="">请选择</option>
														<#list globalDict['orderAmount']?keys as key>
															<option value="${key}" ${(query.orderAmount?? && key==query.orderAmount)?string( 'selected="selected"','')}>${globalDict['orderAmount'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="orderAmount" value="${query.orderAmount!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="acceptTime">用户收货时间</label>
												<div class="col-sm-8">
													<#if globalDict['acceptTime']?exists> 
														<select class="form-control" name="acceptTime">
															<option value="">请选择</option>
														<#list globalDict['acceptTime']?keys as key>
															<option value="${key}" ${(query.acceptTime?? && key==query.acceptTime)?string( 'selected="selected"','')}>${globalDict['acceptTime'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="acceptTime" value="${query.acceptTime!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="invoice">发票：0不索要 1普通  2 电子发票 3增值税</label>
												<div class="col-sm-8">
													<#if globalDict['invoice']?exists> 
														<select class="form-control" name="invoice">
															<option value="">请选择</option>
														<#list globalDict['invoice']?keys as key>
															<option value="${key}" ${(query.invoice?? && key==query.invoice?c)?string( 'selected="selected"','')}>${globalDict['invoice'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="invoice" value="${query.invoice!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="invoiceTitle">发票抬头</label>
												<div class="col-sm-8">
													<#if globalDict['invoiceTitle']?exists> 
														<select class="form-control" name="invoiceTitle">
															<option value="">请选择</option>
														<#list globalDict['invoiceTitle']?keys as key>
															<option value="${key}" ${(query.invoiceTitle?? && key==query.invoiceTitle)?string( 'selected="selected"','')}>${globalDict['invoiceTitle'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="invoiceTitle" value="${query.invoiceTitle!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="postscript">用户附言</label>
												<div class="col-sm-8">
													<#if globalDict['postscript']?exists> 
														<select class="form-control" name="postscript">
															<option value="">请选择</option>
														<#list globalDict['postscript']?keys as key>
															<option value="${key}" ${(query.postscript?? && key==query.postscript)?string( 'selected="selected"','')}>${globalDict['postscript'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="postscript" value="${query.postscript!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="note">管理员备注</label>
												<div class="col-sm-8">
													<#if globalDict['note']?exists> 
														<select class="form-control" name="note">
															<option value="">请选择</option>
														<#list globalDict['note']?keys as key>
															<option value="${key}" ${(query.note?? && key==query.note)?string( 'selected="selected"','')}>${globalDict['note'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="note" value="${query.note!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="prop">使用的优惠券等</label>
												<div class="col-sm-8">
													<#if globalDict['prop']?exists> 
														<select class="form-control" name="prop">
															<option value="">请选择</option>
														<#list globalDict['prop']?keys as key>
															<option value="${key}" ${(query.prop?? && key==query.prop)?string( 'selected="selected"','')}>${globalDict['prop'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="prop" value="${query.prop!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="exp">增加的经验</label>
												<div class="col-sm-8">
													<#if globalDict['exp']?exists> 
														<select class="form-control" name="exp">
															<option value="">请选择</option>
														<#list globalDict['exp']?keys as key>
															<option value="${key}" ${(query.exp?? && key==query.exp?c)?string( 'selected="selected"','')}>${globalDict['exp'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="exp" value="${query.exp!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="point">增加的积分</label>
												<div class="col-sm-8">
													<#if globalDict['point']?exists> 
														<select class="form-control" name="point">
															<option value="">请选择</option>
														<#list globalDict['point']?keys as key>
															<option value="${key}" ${(query.point?? && key==query.point?c)?string( 'selected="selected"','')}>${globalDict['point'][key]!}</option>
														</#list>
														</select> 
													<#else>
														<input type="text" class="form-control" name="point" value="${query.point!}" />
													</#if>
												</div>
											</div>
											<div class="row col-md-4">
												<label for="type">0普通订单,1团购订单,2限时抢购</label>
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
									<th>支付ID</th>
									<th>配送ID</th>
									<th>商品代码、数量、型号组合</th>
									<th>订单状态1:生成订单,2：确认订单,3取消订单,4 物流中订单,5完成订单  6 作废订单</th>
									<th>支付状态 0：未支付，1：已支付，2：退款  3:   部分退款</th>
									<th>配送状态0：未发送，1：配货 2:  发货中  3 物流中 4 物流问题  5 已签收  6 签收异常   7 缺货  8 延迟发货</th>
									<th>应付商品总金额</th>
									<th>实付商品总金额</th>
									<th>税金</th>
									<th>总运费金额</th>
									<th>实付运费</th>
									<th>支付手续费</th>
									<th>促销优惠金额总计</th>
									<th>订单折扣或涨价比例</th>
									<th>订单总金额</th>
									<th>付款时间</th>
									<th>发货时间</th>
									<th>下单时间</th>
									<th>订单完成时间</th>
									<th>用户收货时间</th>
									<th>发票：0不索要 1普通  2 电子发票 3增值税</th>
									<th>发票抬头</th>
									<th>用户附言</th>
									<th>管理员备注</th>
									<th>使用的优惠券等</th>
									<th>增加的经验</th>
									<th>增加的积分</th>
									<th>0普通订单,1团购订单,2限时抢购</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
									<td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
									<td>
										<#if item.userId?? 
												&& globalDict['userId']?exists 
												&& globalDict['userId'][item.userId?c]?exists> 
											${globalDict['userId'][item.userId?c]!} 
										<#else> 
											${item.userId!} 
										</#if>
									</td>
									<td>
										<#if item.paymentId?? 
												&& globalDict['paymentId']?exists 
												&& globalDict['paymentId'][item.paymentId?c]?exists> 
											${globalDict['paymentId'][item.paymentId?c]!} 
										<#else> 
											${item.paymentId!} 
										</#if>
									</td>
									<td>
										<#if item.deliveryId?? 
												&& globalDict['deliveryId']?exists 
												&& globalDict['deliveryId'][item.deliveryId?c]?exists> 
											${globalDict['deliveryId'][item.deliveryId?c]!} 
										<#else> 
											${item.deliveryId!} 
										</#if>
									</td>
									<td>
										<#if item.merchandise?? 
												&& globalDict['merchandise']?exists 
												&& globalDict['merchandise'][item.merchandise]?exists> 
											${globalDict['merchandise'][item.merchandise]!} 
										<#else> 
											${item.merchandise!} 
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
										<#if item.payStatus?? 
												&& globalDict['payStatus']?exists 
												&& globalDict['payStatus'][item.payStatus?c]?exists> 
											${globalDict['payStatus'][item.payStatus?c]!} 
										<#else> 
											${item.payStatus!} 
										</#if>
									</td>
									<td>
										<#if item.distributionStatus?? 
												&& globalDict['distributionStatus']?exists 
												&& globalDict['distributionStatus'][item.distributionStatus?c]?exists> 
											${globalDict['distributionStatus'][item.distributionStatus?c]!} 
										<#else> 
											${item.distributionStatus!} 
										</#if>
									</td>
									<td>
										<#if item.dueAmount?? 
												&& globalDict['dueAmount']?exists 
												&& globalDict['dueAmount'][item.dueAmount]?exists> 
											${globalDict['dueAmount'][item.dueAmount]!} 
										<#else> 
											${item.dueAmount!} 
										</#if>
									</td>
									<td>
										<#if item.paidAmount?? 
												&& globalDict['paidAmount']?exists 
												&& globalDict['paidAmount'][item.paidAmount]?exists> 
											${globalDict['paidAmount'][item.paidAmount]!} 
										<#else> 
											${item.paidAmount!} 
										</#if>
									</td>
									<td>
										<#if item.taxes?? 
												&& globalDict['taxes']?exists 
												&& globalDict['taxes'][item.taxes]?exists> 
											${globalDict['taxes'][item.taxes]!} 
										<#else> 
											${item.taxes!} 
										</#if>
									</td>
									<td>
										<#if item.payableFreight?? 
												&& globalDict['payableFreight']?exists 
												&& globalDict['payableFreight'][item.payableFreight]?exists> 
											${globalDict['payableFreight'][item.payableFreight]!} 
										<#else> 
											${item.payableFreight!} 
										</#if>
									</td>
									<td>
										<#if item.realFreight?? 
												&& globalDict['realFreight']?exists 
												&& globalDict['realFreight'][item.realFreight]?exists> 
											${globalDict['realFreight'][item.realFreight]!} 
										<#else> 
											${item.realFreight!} 
										</#if>
									</td>
									<td>
										<#if item.payFee?? 
												&& globalDict['payFee']?exists 
												&& globalDict['payFee'][item.payFee]?exists> 
											${globalDict['payFee'][item.payFee]!} 
										<#else> 
											${item.payFee!} 
										</#if>
									</td>
									<td>
										<#if item.promotions?? 
												&& globalDict['promotions']?exists 
												&& globalDict['promotions'][item.promotions]?exists> 
											${globalDict['promotions'][item.promotions]!} 
										<#else> 
											${item.promotions!} 
										</#if>
									</td>
									<td>
										<#if item.discount?? 
												&& globalDict['discount']?exists 
												&& globalDict['discount'][item.discount]?exists> 
											${globalDict['discount'][item.discount]!} 
										<#else> 
											${item.discount!} 
										</#if>
									</td>
									<td>
										<#if item.orderAmount?? 
												&& globalDict['orderAmount']?exists 
												&& globalDict['orderAmount'][item.orderAmount]?exists> 
											${globalDict['orderAmount'][item.orderAmount]!} 
										<#else> 
											${item.orderAmount!} 
										</#if>
									</td>
									<td>${(item.payTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${(item.sendTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${(item.createTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>${(item.completionTime?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td>
										<#if item.acceptTime?? 
												&& globalDict['acceptTime']?exists 
												&& globalDict['acceptTime'][item.acceptTime]?exists> 
											${globalDict['acceptTime'][item.acceptTime]!} 
										<#else> 
											${item.acceptTime!} 
										</#if>
									</td>
									<td>
										<#if item.invoice?? 
												&& globalDict['invoice']?exists 
												&& globalDict['invoice'][item.invoice?c]?exists> 
											${globalDict['invoice'][item.invoice?c]!} 
										<#else> 
											${item.invoice!} 
										</#if>
									</td>
									<td>
										<#if item.invoiceTitle?? 
												&& globalDict['invoiceTitle']?exists 
												&& globalDict['invoiceTitle'][item.invoiceTitle]?exists> 
											${globalDict['invoiceTitle'][item.invoiceTitle]!} 
										<#else> 
											${item.invoiceTitle!} 
										</#if>
									</td>
									<td>
										<#if item.postscript?? 
												&& globalDict['postscript']?exists 
												&& globalDict['postscript'][item.postscript]?exists> 
											${globalDict['postscript'][item.postscript]!} 
										<#else> 
											${item.postscript!} 
										</#if>
									</td>
									<td>
										<#if item.note?? 
												&& globalDict['note']?exists 
												&& globalDict['note'][item.note]?exists> 
											${globalDict['note'][item.note]!} 
										<#else> 
											${item.note!} 
										</#if>
									</td>
									<td>
										<#if item.prop?? 
												&& globalDict['prop']?exists 
												&& globalDict['prop'][item.prop]?exists> 
											${globalDict['prop'][item.prop]!} 
										<#else> 
											${item.prop!} 
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
									<td>
										<#if item.point?? 
												&& globalDict['point']?exists 
												&& globalDict['point'][item.point?c]?exists> 
											${globalDict['point'][item.point?c]!} 
										<#else> 
											${item.point!} 
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
