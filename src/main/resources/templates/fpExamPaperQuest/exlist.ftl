<table class="table table-bordered table-striped table-condensed">
	<thead>
		<tr>
            <th><a href="javascript:void(0)" onclick="editMultiSelect(this)">全选</a></th>
            <!--<th><input type="button" value="全选" onclick="multiSelectCheck()" /></th>-->
			<th>序号</th>
			<th>题库</th>
			<th>题库百分比</th>
			<th>题目数量</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody id="table_data">
		<#list ret.model.list as item>
		<tr>
			<td><input type="checkbox" name="multiSelect" value="${item.id}" /></td>
			<td>${item_index+1}<input type="hidden" name="id" value="${item.id}" /></td>
			<td>${item.examQuestionBankName}</td>
			<td><#if globalDict['questionPerc']?exists && globalDict['questionPerc'][item.questionPerc]?exists> ${globalDict['questionPerc'][item.questionPerc]!} <#else> ${item.questionPerc!} </#if></td>
			<td><#if globalDict['bankQuestionCount']?exists && globalDict['bankQuestionCount'][item.bankQuestionCount?c]?exists> ${globalDict['bankQuestionCount'][item.bankQuestionCount?c]!} <#else> ${item.bankQuestionCount!} </#if></td>
			<td><a href="##" onclick="editThisOption('fpExamPaperQuest','${item.id}')">编辑</a></td>
		</tr>
		</#list>
	</tbody>
</table>