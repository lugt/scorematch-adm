<table width="100%" border="0" cellpadding="0" cellspacing="5"
	bgcolor="#FDFDFF">
	<tr>
		<td align="center" id="pageArea">共<span class="red">${ret.model.totalResult}</span>条纪录,当前第<span
			class="red" id="currentPage">${ret.model.page}</span>/<span
			class="red" id="totalPage">${ret.model.totalPage}</span>页,每页<span
			class="red">${ret.model.pageSize}</span>条纪录
		</td>
	</tr>
</table>
<script type="text/javascript">
	pageto();//添加分页功能
</script>
