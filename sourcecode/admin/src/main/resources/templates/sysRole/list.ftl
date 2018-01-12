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
									<input type="text" hidden="true" name="page" value="${ret.model.page}"/>
									
                                    <div class="columns pull-right">
									   <input type="submit" class="btn btn btn-success" style="float: right;" value="刷新"/>
									</div>
								</form>
							</div>
						</div>
						<!-- 列表 -->
						<table class="table table-bordered table-striped table-condensed table-hover">
							<thead>
								<tr>
									<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>
									<th>角色名称</th>
									<th>角色编号</th>
									<th>说明</th>
                                    <th>是否默认角色</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>
									   <input type="checkbox" name="multiSelect" value="${item.id}" />
									   <input type="hidden" name="id" value="${item.id}" />
									</td>
									<td>${item.name!}</td>
									<td>${item.roleCode!}</td>
									<td>${item.remark!}</td>
                                    <td>
                                        <#if item.isDefault?? && '1'==item.isDefault> 
                                                                                                                                                    是 
                                        <#else> 
                                                                                                                                                    否 
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
    <div class="modal" id='local-modal' tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h6 class="modal-title">标题</h6>
                    <button type="button" class="close" onclick="doCloseModalS()" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- 远程拉取内容 -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" onclick="doCloseModalS()">关闭</button>
                    <button id="dialogSaveBtn" type="button" class="btn btn-primary" onclick="saveOrUpdate(this)">保存</button>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
