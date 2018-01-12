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
                                    <div class="animated fadeIn p-0 clearfix">
                                        <div class="row col-md-12 p-0 clearfix">
											<div class="row col-md-4">
                                                <label for="schDate">准备日期</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="30" onkeyup="verifyCharType(this,event)" 
                                                        type="text" class="form-control" name="flightDate" 
                                                        dh-type="datepick" 
                                                        value="<#if query.flightDate?? >${query.flightDate?string('yyyy-MM-dd')}</#if>"/>
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
									<th>人员类型</th>
									<th>总人数</th>
									<th>完成</th>
									<th>进行中</th>
									<th>未开始</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model as item>
								<tr>
									<td>${item.moduleFlagName!}</td>
									<td><a href="#" onclick="showModalEx('detailsPage?moduleFlag=${item.moduleFlag}&flightDate=${query.flightDate?string('yyyy-MM-dd')}')">${item.totalCount!}</a></td>
                                    <td><a href="#" onclick="showModalEx('detailsPage?moduleFlag=${item.moduleFlag}&flightDate=${query.flightDate?string('yyyy-MM-dd')}&prepareStatus=1')">${item.doneCount!}</a></td>
                                    <td><a href="#" onclick="showModalEx('detailsPage?moduleFlag=${item.moduleFlag}&flightDate=${query.flightDate?string('yyyy-MM-dd')}&prepareStatus=0')">${item.doingCount!}</a></td>
                                    <td><a href="#" onclick="showModalEx('detailsPage?moduleFlag=${item.moduleFlag}&flightDate=${query.flightDate?string('yyyy-MM-dd')}&prepareStatus=-1')">${item.undoCount!}</a></td>
								</tr>
								</#list>
							</tbody>
						</table>
                        <table class="table table-bordered table-striped table-condensed">
                            <thead>
                                <tr>
                                    <th style="width: 4%">序号</th>
                                    <th style="width: 14%">航班号</th>
                                    <th style="width: 5%">机型</th>
                                    <th style="width: 5%">机号</th>
                                    <th style="width: 10%">准备开始时间</th>
                                    <th style="width: 6%">起飞站</th>
                                    <th style="width: 6%">到达站</th>
                                    <th style="width: 50%">机组人员</th>
                                </tr>
                            </thead>
                            <tbody id="table_data">
                                <#list flightList as item>
                                <tr>
                                    <td>${item_index+1}</td>
                                    <td>${item.prepareFlight.flightCom!} ${item.prepareFlight.flightVoyage!}</td>
                                    <td>${item.prepareFlight.acTypeShort!}</td>
                                    <td>${item.prepareFlight.acNo!}</td>
                                    <td>${(item.beginPrepareTime?string('yyyy-MM-dd hh:mm'))!}</td>
                                    <td>${item.prepareFlight.takeoffAirport!}</td>
                                    <td>${item.prepareFlight.arrivalAirport!}</td>
                                    <td>
                                        <#list item.crews as one>
                                        <a href="#" onclick="showModalEx('detailsPage?fprId=${one.fprId!}&userNo=${one.userNo!}')">
                                            <#if one.isFinished?exists>
                                                <#if one.isFinished = 1>
                                                   <span style="color: red;">${one.userName!}</span>
                                                <#else>
                                                    <span style="color: green;">${one.userName!}</span>
                                                </#if>
                                            <#else>
                                               <span style="color: blue;">${one.userName!}</span>
                                            </#if>
                                        </a>
                                        </#list>                                                        
                                    </td>
                                </tr>
                                </#list>
                            </tbody>
                        </table>
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

