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
									<th>题目ID</th>
									<th>序号</th>
									<th>内容</th>
									<th>是否正确答案</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
									<td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
									<td><#if globalDict['questId']?exists && globalDict['questId'][item.questId?c]?exists> ${globalDict['questId'][item.questId?c]!} <#else> ${item.questId!} </#if></td>
									<td><#if globalDict['optNumber']?exists && globalDict['optNumber'][item.optNumber]?exists> ${globalDict['optNumber'][item.optNumber]!} <#else> ${item.optNumber!} </#if></td>
									<td><#if globalDict['content']?exists && globalDict['content'][item.content]?exists> ${globalDict['content'][item.content]!} <#else> ${item.content!} </#if></td>
									<td><#if globalDict['isRightKey']?exists && globalDict['isRightKey'][item.isRightKey?c]?exists> ${globalDict['isRightKey'][item.isRightKey?c]!} <#else> ${item.isRightKey!} </#if></td>
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
