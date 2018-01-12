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
								<button type="button" class="btn btn-primary" onclick="location.href='addPage'">添加</button>
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
                                                <label for="appName">应用名称</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="50" type="text" class="form-control" name="appName" value="${query.appName!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="appVersion">版本号</label>
                                                <div class="col-sm-8">
                                                    <input maxlength="20" type="text" class="form-control" name="appVersion" value="${query.appVersion!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="isCurrent">是否发布中</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control" name="isCurrent">
                                                        <option value="">请选择</option>
                                                        <option value="1" ${(query.isCurrent?? && 1==query.isCurrent)?string( 'selected="selected"','')}>发布中版本</option>
                                                        <option value="0" ${(query.isCurrent?? && 0==query.isCurrent)?string( 'selected="selected"','')}>历史版本</option>
                                                    </select> 
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
                                    <th>应用名称</th>
                                    <th>应用版本号</th>
                                    <th>是否发布中</th>
                                    <th>备注</th>
                                    <th>包路径</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody id="table_data">
                                <#list ret.model.list as item>
                                <tr>
                                    <td><input type="checkbox" name="multiSelect" value="${item.id}" />
                                    <input type="hidden" name="id" value="${item.id}" /></td>
                                    <td>${item.appName!}</td>
                                    <td>${item.appVersion!}</td>
                                    <td>
                                        <#if item.isCurrent?? && 1==item.isCurrent >
                                            发布中版本
                                        <#else> 
                                            历史版本
                                        </#if>
                                    </td>
                                    <td>${item.remark!}</td>
                                    <td>${item.packageUrl!}</td>
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
