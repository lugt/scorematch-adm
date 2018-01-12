<table class="table table-bordered table-striped table-condensed" style="    width: 100%;    text-align: center">
    <thead>
    <tr>
        <th>选择</th>
        <th>序号</th>
        <th>内容</th>
        <th>正解</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="table_data_option">
	<#list ret.model.list as item>
    <tr>
        <td><input type="hidden" name="id" value="${item.id}"/>
            <input type="checkbox" name="multiSelect" value="${item.id}" /></td>
        <td>${item.optNumber!}</td>
        <td>${item.content!}</td>
        <td><#if globalDict['isRightKey']?exists && globalDict['isRightKey'][item.isRightKey?c]?exists> 
            ${globalDict['isRightKey'][item.isRightKey?c]!} 
            <#else> ${item.isRightKey!} </#if></td>
        <td><a href="#####" onclick="editThisOption('fpExamOptions',${item.id})">编辑</a></td>
    </tr>
	</#list>
    </tbody>
</table>