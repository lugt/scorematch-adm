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
								<button type="button" class="btn btn-primary" onclick="sendMessageToUsers()">发布消息</button>
							</div>
							<div class="col-sm-10">
								<form id="searchform" action="sendMsgPage" method="get">
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
                                                <label for="userNo">用户工号</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="userNo" value="${query.userNo!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userLoginName">登录帐号</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="userLoginName" value="${query.userLoginName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="userName">用户名称</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="userName" value="${query.userName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="deptName">用户部门</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="deptName" value="${query.deptName!}">    
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="status">有效状态</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="status">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['status']?keys as key>
                                                        <option value="${key}" ${(key==((query.status?c)!''))?string( 'selected="selected"','')}>${globalDict['status'][key!1]!}</option>
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
									<th>用户工号</th>
									<th>账号</th>
									<th>用户名</th>
									<th>移动电话</th>
									<th>备用电话</th>
									<th>部门名称</th>
									<th>有效状态</th>
								</tr>
							</thead>
							<tbody id="table_data">
								<#list ret.model.list as item>
								<tr>
									<td><input type="checkbox" name="multiSelect" value="${item.userNo}" /></td>
									<td>${item.userNo!}<input type="hidden" name="userNo" value="${item.userNo}" /></td>
									<td>${item.userLoginName!}</td>
									<td>${item.userName!}</td>
                                    <td>${item.mobilePhone!}</td>
                                    <td>${item.phoneBak!}</td>
									<td>${item.deptName!}</td>
									<td>
									   <#if item.status?? && globalDict['status']?exists 
									           && globalDict['status'][item.status?c]?exists> 
									       ${globalDict['status'][item.status?c]!} 
									   <#else> 
									       ${item.status!} 
									   </#if></td>
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

<script>

function sendMessageToUsers(){
   var receiverList = getTableDataJson();
   
   if (receiverList) {
	   showModalEx('savePage');
   } else {
       showToast('请先选择接收消息的用户!');
   }
}

function getTableDataJson() {
    var tableData = $("#table_data tr");
    var arr = new Array();
    tableData.each(function(i, tr) {
        if (!$(tr).find("input[name='multiSelect']").is(":checked")) {
            return;
        }
        var list = $(tr).find("input, select");
        var obj = {};
        list.each(function(j, item) {
            item = $(item);
            var key = item.attr("name")
            if (key) {
            	if (key == "userNo") {
            		arr.push(item.val());	
            	}
            }
        });
    });
    if (arr && arr.length > 0) {
        return JSON.stringify(arr);
    } else {
        return "";
    }
}

</script>

</html>
