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
								<form id="searchform" action="listPage" method="get" class="row">
									<input type="text" hidden="hidden" name="page" id="pageNumIndicator"value="${ret.model.page}">
									<div class="col-3 row">
										<label for="fpType" class="form-control-label col-5" style="padding:5px;padding-top:7px;">
											准备类型 ：
										</label>
										<div class="col-7">
											<select class="form-control" name="fpType">
												<option value="" ${("a"==(query.fpType!"a"))?string( 'selected="selected"','')}>不限</option>
												<#list globalDict['fpType']?keys as key>
													<option value="${key}" ${(key==(query.fpType!"a"))?string( 'selected="selected"','')}>${globalDict['fpType'][key]!}</option>
												</#list>
											</select>
                                        </div>

                                    </div>
									<div class="col-3 row" style="padding:5px; padding-top: 0px;">
                                        <input type="submit" onclick="$('#pageNumIndicator').val('')" class="btn btn-success" style="float: right;" value="查询">
									</div>
								</form>
							</div>
						</div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>
									<th>步骤名称</th>
									<th>检查确认类型</th>
									<th>状态</th>
									<th>准备类型</th>
									<th>语言</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
									<input type="hidden" name="id" value="${item.id}" />
									<td><#if globalDict['stepName']?exists && globalDict['stepName'][item.stepName]?exists> ${globalDict['stepName'][item.stepName]!} <#else> ${item.stepName!} </#if></td>
									<td><#if globalDict['checkType']?exists && globalDict['checkType'][item.checkType?c]?exists> ${globalDict['checkType'][item.checkType?c]!} <#else> 其他类型 : ${item.checkType!} </#if></td>
									<td><#if globalDict['status']?exists && globalDict['status'][item.status?c]?exists> ${globalDict['status'][item.status?c]!} <#else> ${item.status!} </#if></td>
									<td><#if globalDict['fpType']?exists && globalDict['fpType'][item.fpType]?exists> ${globalDict['fpType'][item.fpType]!} <#else> ${item.fpType!} </#if></td>
									<td><#if globalDict['language']?exists && globalDict['language'][item.language]?exists> ${globalDict['language'][item.language]!} <#else> ${item.language!} </#if></td>
									<td><a href="###" onclick="location.href = '/admin/fpStepItem/listPage?stepId=${item.id}'">内部条目</a> <a href="###" onclick="showModal('updatePage?id=${item.id}')">编辑</a></td>
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
