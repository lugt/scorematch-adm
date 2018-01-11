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
                                                <label for="departureAirport4">起飞机场</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="4" dh-type="caps" 
                                                        onkeypress="verifyCharType(this,event)" 
                                                        onkeyup="this.value = this.value.toUpperCase();" 
                                                        type="text" class="form-control query-control"  
                                                        name="departureAirport4"
                                                        value="${query.departureAirport4!}" 
                                                        placeholder="起飞机场4字码">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="arrivalAirport4">到达机场</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="4" dh-type="caps" 
                                                        onkeypress="verifyCharType(this,event)" 
                                                        onkeyup="this.value = this.value.toUpperCase();" 
                                                        type="text" class="form-control query-control" 
                                                        name="arrivalAirport4"
                                                        value="${query.arrivalAirport4!}" 
                                                        placeholder="到达机场4字码">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="lineName">航线名称</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="20" dh-type="any" 
                                                        onkeypress="verifyCharType(this,event)" 
                                                        type="text" class="form-control query-control" 
                                                        name="lineName"
                                                        value="${query.lineName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="departureOrArrival">机场名称</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="20" dh-type="any" 
                                                        onkeypress="verifyCharType(this,event)" 
                                                        type="text" class="form-control query-control" 
                                                        name="departureOrArrival"
                                                        value="${query.departureOrArrival!}" 
                                                        placeholder="起飞或到达机场名称">                                        
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn-success" style="float: right;" value="查询">
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
									<th>航线代码</th>
									<th>航线名称</th>
                                    <th>升舱票价</th>
                                    <th>飞行时长</th>
                                    <th>飞行高度</th>
                                    <th>城距(公里)</th>
                                    <!--<th>航线描述(航路点)</th>-->
                                    <th>航线特点</th>
                                    <th>飞越省份</th>
                                    <th>飞越城市</th>
                                    <th>飞越河流山脉</th>
                                    <th>有效状态</th>
                                    <th>航站信息</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>
									   <input type="checkbox" name="multiSelect" value="${item.id}" />
									   <input type="hidden" name="id" value="${item.id}" /></td>
									<td>${item.lineCode!}</td>
									<td>${item.lineName!}</td>
									<td>${item.upgradeSeatPrice!}</td>
									<td>${item.flightTime!}</td>
									<td>${item.flyHeigh!}</td>
									<td>${item.airportDistnceCity!}</td>
									<!--<td>$item.lineDesc!</td>-->
                                    <td>${item.feature!}</td>
                                    <td>${item.flightOverProvince!}</td>
                                    <td>${item.flightOverCity!}</td>
                                    <td>${item.flightOverHillRiver!}</td>
									<td>
										<#if item.status?? 
												&& globalDict['status']?exists 
												&& globalDict['status'][item.status?c]?exists> 
											${globalDict['status'][item.status?c]!} 
										<#else> 
											${item.status!} 
										</#if>
									</td>
                                    <td>${item.terminal!}</td>
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
