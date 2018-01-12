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
                                <button type="button" class="btn btn-primary" onclick="showModal('savePage?stepId=${query.stepId}')">添加</button>
                                <button type="button" class="btn btn-danger" onclick="deleteBatch()">删除</button>
                                <input id="stepId" type="text" hidden="true" name="stepId" value="${query.stepId}">
                                <input id="fpType" type="text" hidden="true" name="fpType" value="${query.fpType}">
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
                                            <div class="row col-md-8">
                                                <label for="fpType">准备类型</label>
                                                <div class="col-sm-8">
                                                    <#if globalDict['fpType']?exists> 
                                                        <select class="form-control" name="fpType">
                                                        <#list globalDict['fpType']?keys as key>
                                                            <option value="${key}" ${(query.fpType?? && key==query.fpType)?string( 'selected="selected"','')}>${globalDict['fpType'][key]!}</option>
                                                        </#list>
                                                        </select> 
                                                    <#else>
                                                        <input type="text" class="form-control" name="fpType" value="${query.fpType!}" />
                                                    </#if>
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
                                    <th>序号</th>
                                    <th>步骤ID</th>
                                    <th>项名称</th>
                                    <th>项目编号 </th>
                                    <th>项目编码</th>
                                    <th>面向用户</th>
                                    <th>准备类型</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody id="table_data">
                                <#list ret.model.list as item>
                                <tr>
                                    <td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
                                    <td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
                                    <td>
                                        <#if item.stepId?? 
                                                && globalDict['stepId']?exists 
                                                && globalDict['stepId'][item.stepId?c]?exists> 
                                            ${globalDict['stepId'][item.stepId?c]!} 
                                        <#else> 
                                            ${item.stepId!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.itemName?? 
                                                && globalDict['itemName']?exists 
                                                && globalDict['itemName'][item.itemName]?exists> 
                                            ${globalDict['itemName'][item.itemName]!} 
                                        <#else> 
                                            ${item.itemName!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.itemNo?? 
                                                && globalDict['itemNo']?exists 
                                                && globalDict['itemNo'][item.itemNo]?exists> 
                                            ${globalDict['itemNo'][item.itemNo]!} 
                                        <#else> 
                                            ${item.itemNo!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.itemCode?? 
                                                && globalDict['itemCode']?exists 
                                                && globalDict['itemCode'][item.itemCode]?exists> 
                                            ${globalDict['itemCode'][item.itemCode]!} 
                                        <#else> 
                                            ${item.itemCode!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.targetUserType?? 
                                                && globalDict['targetUserType']?exists 
                                                && globalDict['targetUserType'][item.targetUserType?c]?exists> 
                                            ${globalDict['targetUserType'][item.targetUserType?c]!} 
                                        <#else> 
                                            ${item.targetUserType!} 
                                        </#if>
                                    </td>
                                    <td>
                                        <#if item.fpType?? 
                                                && globalDict['fpType']?exists 
                                                && globalDict['fpType'][item.fpType]?exists> 
                                            ${globalDict['fpType'][item.fpType]!} 
                                        <#else> 
                                            ${item.fpType!} 
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
    <!-- footer -->
    <#include "/common/footer.ftl" />
</body>

</html>
