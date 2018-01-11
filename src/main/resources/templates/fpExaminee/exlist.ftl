<table class="table table-bordered table-striped table-condensed" id="table_data_examinee">
    <thead>
    <tr>
        <th><a href="javascript:void(0)" onclick="editMultiSelect(this)">全选</a></th>
        <!--<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>-->
        <th>用户工号</th>
        <th>用户名</th>
    </tr>
    </thead>
    <tbody id="table_data">
	<#list ret.model.list as item>
    <tr>
        <td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
        <input type="hidden" name="id" value="${item.id}" />
        <td>${item.userNo!}</td>
        <td>${item.userName!}</td>
    </tr>
	</#list>
    </tbody>
</table>