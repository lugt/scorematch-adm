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
									<input type="text" hidden="true" name="page" value="${ret.model.page}">
									<input type="submit" hidden="true" class="btn btn btn-success" style="float: right;" value="查询">
								</form>
							</div>
						</div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>
									<th>序号</th>
									<th>试卷ID</th>
									<th>题库ID</th>
									<th>题库百分比</th>
									<th>题目数量</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
									<td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
									<td><#if globalDict['paperId']?exists && globalDict['paperId'][item.paperId?c]?exists> ${globalDict['paperId'][item.paperId?c]!} <#else> ${item.paperId!} </#if></td>
									<td><#if globalDict['questionBakId']?exists && globalDict['questionBakId'][item.questionBakId?c]?exists> ${globalDict['questionBakId'][item.questionBakId?c]!} <#else> ${item.questionBakId!} </#if></td>
									<td><#if globalDict['questionPerc']?exists && globalDict['questionPerc'][item.questionPerc]?exists> ${globalDict['questionPerc'][item.questionPerc]!} <#else> ${item.questionPerc!} </#if></td>
									<td><#if globalDict['bankQuestionCount']?exists && globalDict['bankQuestionCount'][item.bankQuestionCount?c]?exists> ${globalDict['bankQuestionCount'][item.bankQuestionCount?c]!} <#else> ${item.bankQuestionCount!} </#if></td>
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
