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
		<div class="container-fluid" style="max-width: 100%">
			<!-- 弹出框 -->
			<#include "/common/model.ftl" />
			<div class="animated fadeIn">
				<div class="card" style="max-width: 100%;">
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
                                                <label for="beginTime">开始时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="beginTime" dh-type="datepick" placeholder="发布开始时间" 
                                                        value="${(query.beginTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="endTime">结束时间</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" 
                                                        name="endTime" dh-type="datepick" placeholder="发布结束时间" 
                                                        value="${(query.endTime?string('yyyy-MM-dd'))!}" />
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="noticeType">发布对象</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="noticeType">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['noticeType']?keys as key>
                                                        <option value="${key}" ${(key==((query.noticeType)!""))?string( 'selected="selected"','')}>${globalDict['noticeType'][(key!1)]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="fileType">文件类型</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="fileType">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['F_TYPE']?keys as key>
                                                        <option value="${key}" ${(key==((query.fileType)!""))?string( 'selected="selected"','')}>
                                                            ${globalDict['F_TYPE'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="fileLevel">文件等级</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="fileLevel">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['noticeLevel']?keys as key>
                                                        <option value="${key}" ${(key==((query.fileLevel)!""))?string( 'selected="selected"','')}>
                                                            ${globalDict['noticeLevel'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="isMustReed">是否必读</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="isMustReed">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['isMustReed']?keys as key>
                                                        <option value="${key}" ${(key==((query.isMustReed?c)!""))?string( 'selected="selected"','')}>${globalDict['isMustReed'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="language">文件语言</label>
                                                <div class="col-sm-8">
                                                    <select class="form-control query-control" name="language">
                                                        <option value="">请选择</option>
                                                    <#list globalDict['language']?keys as key>
                                                        <option value="${key}" ${(key==((query.language)!""))?string( 'selected="selected"','')}>${globalDict['language'][key!1]!}</option>
                                                    </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="publishedByDeptName">发布部门</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" name="publishedByDeptName" 
                                                        value="${query.publishedByDeptName!}">                                        
                                                </div>
                                            </div>
                                            <div class="row col-md-4">
                                                <label for="title">标题</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control query-control" name="title" maxlength=""
                                                            value="${query.title!}" placeholder="请输入标题">                                        
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
                                    <th>发布对象</th>
                                    <th>发布部门</th>
									<th>标题</th>
									<th>发布时间</th>
									<th>语言</th>
                                    <th>是否必读</th>
                                    <th>文件类型</th>
                                    <th>文件等级</th>
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
                                    <td><#if item.noticeType?? 
                                                && globalDict['noticeType']?exists 
                                                && globalDict['noticeType'][item.noticeType]?exists> 
                                            ${globalDict['noticeType'][item.noticeType]!} 
                                        <#else> 
                                            ${item.noticeType!} 
                                        </#if></td>
                                    <td>${item.publishedByDeptName!}</td>
									<td>${item.title!}</td>
									<td>${(item.publishedOn?string('yyyy-MM-dd HH:mm:ss'))!}</td>
									<td><#if item.language?? 
									           && globalDict['language']?exists 
									           && globalDict['language'][item.language]?exists> 
									       ${globalDict['language'][item.language]!} 
									   <#else> ${item.language!} 
									   </#if></td>
                                    <td>
                                        <#if item.isMustReed?? 
                                                && globalDict['isMustReed']?exists 
                                                && globalDict['isMustReed'][item.isMustReed?c]?exists> 
                                            ${globalDict['isMustReed'][item.isMustReed?c]!} 
                                        <#else> 
                                            ${item.isMustReed!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.fileType?? 
                                                && globalDict['F_TYPE']?exists 
                                                && globalDict['F_TYPE'][item.fileType]?exists> 
                                            ${globalDict['F_TYPE'][item.fileType]!} 
                                        <#else> 
                                            ${item.fileType!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.fileLevel?? 
                                                && globalDict['fileLevel']?exists 
                                                && globalDict['fileLevel'][item.fileLevel]?exists> 
                                            ${globalDict['fileLevel'][item.fileLevel]!} 
                                        <#else> 
                                            ${item.fileLevel!} 
                                        </#if>
                                    </td>
									<td><a href="###" onclick="callUpdatePage(${item.id})" >编辑</a>
                                        <a href="#" onclick="showModalEx('readPage?id=${item.id}')">阅读</a>
                                        </td>
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
        function callUpdatePage(objId) {
            nowPageState.state = 1;
            $.ajax({
                type : "GET",
                url : 'editPage?id='+objId,
                objId : objId,
                contentType : "application/json",
                success : function(data) {
                    nowPageState.state = 2;
                    $("main").html(data);
                    nowPageState.state = 3;
                },
            });
        }

        $(document).ready(function(){
            if(utils_get_param("editId") != null){
                var id = utils_get_param("editId");
                callUpdatePage(id);
            }
        })

        window.addEventListener('pageshow', function(event) {
            console.log('----------pageshow:----------');
            console.log(event);
            console.log(nowPageState);
            console.log("------------------------------");
        });

        window.addEventListener('popstate', function(event) {
            if(nowPageState.state == 3){
                // 要返回了
                location.reload();
            }else{
                // 正要进入下一个页面
            }
            console.log('----------popstate:----------');
            console.log(nowPageState);
            console.log(event);
            console.log("------------------------------")
        });

        var nowPageState={state : 0};
    </script>

</body>

</html>
