<table class="table table-bordered table-striped table-condensed">
    <thead>
    <tr>
        <th><a href="###" onclick="multiSelectCheck()">全选</a></th>
        <th>用户工号</th>
        <th>用户名</th>
    </tr>
    </thead>
    <tbody id="table_data">
	<#list ret.model.list as item>
    <tr>
        <td><input type="checkbox" name="multiSelect" value="${item.userNo!}" /></td>
        <td>${item.userNo!}<input type="hidden" name="userNo" value="${item.userNo!}" /></td>
        <td>${item.userName!}</td>
    </tr>
	</#list>
    </tbody>
</table>