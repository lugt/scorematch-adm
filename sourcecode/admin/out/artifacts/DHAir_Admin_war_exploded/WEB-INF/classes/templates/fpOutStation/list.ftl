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
                                                <label for="type">类型</label>
                                                <div class="col-sm-9" id="typeSelector">
                                                    <select class="form-control query-control" name="type" onchange="showOtherInput(this)" id="normalSelect">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['outstationType']?keys as key>
                                                        <option value="${key}" ${(key==((query.type)!""))?string( 'selected="selected"','')}>${globalDict['outstationType'][key]!}</option>
                                                    </#list>
                                                        <option id="customSelect" ${(query.type?? && query.type != "" && globalDict['outstationType']?? && !(globalDict['outstationType'][query.type]??))?string( 'selected="selected"','')}>手动输入</option>
                                                    </select>
                                                    <#if query.type?? && query.type != "" && globalDict['outstationType']?? && !(globalDict['outstationType'][query.type]??)> <input id="otherTypeInput" type="text" name="type" class="col-sm-12" value="${query.type}"></#if>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userNo">工号</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control query-control" name="userNo" 
                                                        value="${query.userNo!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userName">姓名</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control query-control" name="userName" 
                                                        value="${query.userName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="mobilePhone">手机</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control query-control" name="mobilePhone" 
                                                        value="${query.mobilePhone!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="comName">协议保障单位</label>
                                                <div class="col-sm-7">
                                                    <input type="text" class="form-control query-control" name="comName" 
                                                        value="${query.comName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="city">城市名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" name="city" 
                                                        value="${query.city!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="status">状态</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control query-control" name="status">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['status']?keys as key>
                                                        <option value="${key}" ${(key==((query.status?c)!""))?string( 'selected="selected"','')}>${globalDict['status'][key!1]!}</option>
                                                    </#list>
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
									<th>类型</th>
                                    <th>用户工号</th>
									<th>姓名</th>
									<th>手机</th>
									<th>协议保障单位</th>
									<th>城市名称</th>
									<th>状态</th>
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
                                    <td>
                                        <#if item.type??
                                                && globalDict['outstationType']??
                                                && globalDict['outstationType'][item.type]??>
                                            ${globalDict['outstationType'][item.type]!} 
                                        <#else> 
                                            ${item.type!} 
                                        </#if>
                                    </td>
                                    <td>${item.userNo!}</td>
									<td>${item.userName!}</td>
									<td>${item.mobilePhone!}</td>
									<td>${item.comName!}</td>
									<td>${item.city!}</td>
									<td>
									   <#if 1 == item.status!> 有效 
									   <#else> 无效 
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
    <script>
        function showOtherInput(){
            if($("#customSelect")[0].selected) {
                $("#normalSelect")[0].name = "typeV";
                if($("#otherTypeInput").length == 0) {
                    var parent = $("#typeSelector");
                    var newInput = document.createElement("input");
                    newInput.id = "otherTypeInput";
                    newInput.type = "text";
                    newInput.name = "type";
                    $(parent)[0].appendChild(newInput);
                    $("#otherTypeInput").addClass("col-sm-12");
                }
            }else{
                $("#normalSelect")[0].name = "type";
                if($("#otherTypeInput").length > 0){
                    $("#otherTypeInput").remove();
                }
            }
        }
    </script>
</body>

</html>
