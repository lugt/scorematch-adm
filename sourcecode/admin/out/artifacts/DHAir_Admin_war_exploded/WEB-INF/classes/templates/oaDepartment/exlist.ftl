<table class="table table-bordered table-striped table-condensed">
    <thead>
    <tr>
        <th><a value="全选" onclick="multiSelectCheck()">全选</a></th>
        <th>序号</th>
        <th>部门名称</th>
        <th>部门编号</th>
        <th>上级部门</th>
    </tr>
    </thead>
    <tbody id="table_data">
	<#list ret.model.list as item>
    <tr>
        <td><input type="checkbox" name="multiSelect" value="${item.deptId}" /></td>
        <td>${item_index+1}<input type="hidden" name="deptId" value="${item.deptId}" /></td>
        <td>${item.deptName!}</td>
        <td>${item.deptCode!}</td>
        <td>${item.parentId!}</td>
        <td><button class="btn btn-primary" onclick="componentSelect(this,'${item.deptId}')">选择</button> </td>
    </tr>
	</#list>
    </tbody>
</table>