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
                                                <label for="airport4code">机场4字码</label>
                                                <div class="col-sm-6">
                                                    <input maxlength="4" dh-type="caps" onkeypress="verifyCharType(this,event)" onkeyup="this.value = this.value.toUpperCase();" type="text" class="form-control query-control" name="airport4code"
                                                        value="${query.airport4code!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="cityChName">城市中文名</label>
                                                <div class="col-sm-6">
                                                    <input maxlength="30" dh-type="chinese" onkeypress="verifyCharType(this,event)" type="text" class="form-control query-control" name="cityChName"
                                                        value="${query.cityChName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="cityEnName">城市英文名</label>
                                                <div class="col-sm-6">
                                                    <input maxlength="30" dh-type="alpha" onkeypress="verifyCharType(this,event)" type="text" class="form-control query-control" name="cityEnName"
                                                        value="${query.cityEnName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="airportChName">机场中文名</label>
                                                <div class="col-sm-6">
                                                    <input maxlength="30" dh-type="chinese" onkeypress="verifyCharType(this,event)" type="text" class="form-control query-control" name="airportChName"
                                                        value="${query.airportChName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="airportEnName">机场英文名</label>
                                                <div class="col-sm-6">
                                                    <input maxlength="30" dh-type="alpha" onkeypress="verifyCharType(this,event)" type="text" class="form-control query-control" name="airportEnName"
                                                        value="${query.airportEnName!}">                                        
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
									<th>4字码</th>
									<th>3字码</th>
									<th>城市三码</th>
									<th>城市中文名</th>
									<th>城市英文名</th>
									<th>城市简称</th>
									<th>机场中文名</th>
									<th>机场英文名</th>
                                    <th>机场简称</th>
                                    <th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>${item.airport4code!}</td>
									<td>${item.airport3code!}</td>
									<td>${item.city3code!}</td>
									<td>${item.cityChName!}</td>
									<td>${item.cityEnName!}</td>
									<td>${item.cityAbbr!}</td>
									<td>${item.airportChName!}</td>
									<td>${item.airportEnName!}</td>
									<td>${item.airportAbbr!}</td>
									<td><a href="###" onclick="showModalEx('updatePage?airport4code=${item.airport4code}')">明细</a></td>
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
