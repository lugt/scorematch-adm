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
							<div class="col-sm-12">
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
                                            <div class="row col-md-1"></div>
                                            <div class="row col-md-5">
                                                <label for="parentTableName">主表名</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        maxlength="30" name="parentTableName" value="${query.parentTableName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-5">
                                                <label for="fileName">文件名</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        maxlength="100" name="fileName" value="${query.fileName!}">    
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
									<th>主表名</th>
									<th>主表记录ID</th>
									<th>文件名</th>
									<th>文件扩展名</th>
									<th>文件路径</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td>
									   <#if item.parentTableName?? && globalDict['parentTableName']?exists 
									           && globalDict['parentTableName'][item.parentTableName]?exists> 
									       ${globalDict['parentTableName'][item.parentTableName]!} 
									   <#else> 
									       ${item.parentTableName!} 
									   </#if>
									</td>
									<td>${item.parentRowId!}</td>
									<td>${item.fileName!}</td>
									<td>${item.fileExtName!}</td>
									<td>${item.filePath!}</td>
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
