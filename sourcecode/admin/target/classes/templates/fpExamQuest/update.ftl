<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<input type="hidden" name="questionBankId" value="${ret.model.questionBankId!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="title">题目</label>
		<div class="col-md-9">
			<textarea id="content-input" name="title" rows="5" 
                class="form-control" value="${ret.model.title!}">${ret.model.title!}</textarea>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="questType">题目类型</label>
		<div class="col-md-9">
			<#if globalDict['questType']?exists> <select class="form-control" name="questType">
				<#list globalDict['questType']?keys as key>
				<option value="${key}" ${(key==ret.model.questType?c)?string( 'selected="selected"','')}>${globalDict['questType'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="questType" value="${ret.model.questType!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="state">是否有效</label>
		<div class="col-md-9">
			<#if globalDict['state']?exists> <select class="form-control" name="state">
				<#list globalDict['state']?keys as key>
				<option value="${key}" ${(key==ret.model.state?c)?string( 'selected="selected"','')}>${globalDict['state'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="state" value="${ret.model.state!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="difficultyDegree">难度系数</label>
		<div class="col-md-9">
			<#if globalDict['difficultyDegree']?exists> <select class="form-control" name="difficultyDegree">
				<#list globalDict['difficultyDegree']?keys as key>
				<option value="${key}" ${(key==ret.model.difficultyDegree)?string( 'selected="selected"','')}>${globalDict['difficultyDegree'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="difficultyDegree" value="${ret.model.difficultyDegree!}" /> </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="language">语言</label>
		<div class="col-md-9">
			<#if globalDict['language']?exists> <select class="form-control" name="language">
				<#list globalDict['language']?keys as key>
				<option value="${key}" ${(key==ret.model.language)?string( 'selected="selected"','')}>${globalDict['language'][key]!}</option>
				</#list>
			</select> <#else /> <input type="text" class="form-control" name="language" value="${ret.model.language!}" /> </#if>
		</div>
	</div>
</form>

<script>
    var currentId = ${ret.model.id};
    load_date_pickers();
    // 要实现 列表 ， 添加（搜索、搜索结果、添加确认 | 直接编辑） ， 刷新、 删除
    var dh_update_params = {
        thisid : ${ret.model.id},
        linkCol:"questId",
        sub: [
            {
                obj:'fpExamOptions',
                type:"input",
                link:{
                    obj:"",
                    col:"questId"
                }
            }
        ]
    };
</script>
<script src="/js/dh-mini-update.js"></script>

<div id="hierarchyPanel">
</div>

