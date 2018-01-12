<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userNo">用户工号</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="userNo" value="${ret.model.userNo!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="type"><span style="color: red;">*&nbsp;</span>类型</label>
		<div class="col-md-9">
            <#if globalDict['outstationType']?exists> 
                <select class="form-control" name="type">
                    <#list globalDict['outstationType']?keys as key>
                    <option value="${key}" ${(ret.model.type?? && key==ret.model.type)?string( 'selected="selected"','')}>${globalDict['outstationType'][key]!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="type" value="${ret.model.type!}" />
            </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userName">姓名</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userName" value="${ret.model.userName!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="mobilePhone">手机</label>
		<div class="col-md-9">
			<input maxlength="11" type="text" dh-type="integer"  
			    class="form-control" name="mobilePhone" value="${ret.model.mobilePhone!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="comName"><span style="color: red;">*&nbsp;</span>协议保障单位</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="comName" value="${ret.model.comName!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="city"><span style="color: red;">*&nbsp;</span>城市名称</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="city" value="${ret.model.city!}" /> 
		</div>
	</div>
	<div class="form-group row">
        <label class="col-md-3 form-control-label" for="status">有效状态</label>
        <div class="col-md-9">
            <label class="radio-inline" for="rdStatus-valid">
                <#if 1==ret.model.status!>
                <input id="rdStatus-valid" name="status" value="1" checked type="radio">
                <#else>
                <input id="rdStatus-valid" name="status" value="1" type="radio">
                </#if>
                                                     有效
            </label>
            <label class="radio-inline" for="rdStatus-invalid">
                <#if 0==ret.model.status!>
                <input id="rdStatus-valid" name="status" value="0" checked type="radio">
                <#else>
                <input id="rdStatus-valid" name="status" value="0" type="radio">
                </#if>
                                                     无效
            </label>
        </div>
	</div>
	<div class="form-group row">
        <label class="col-md-3 form-control-label" for="gender">性别</label>
        <div class="col-md-9">
            <label class="radio-inline" for="rdGender-man">
                <#if '男'==ret.model.gender!>
                <input id="rdGender-man" name="gender" value="男" checked type="radio">
                <#else>
                <input id="rdGender-man" name="gender" value="男" type="radio">           
                </#if>                                     
                                                     男
            </label>
            <label class="radio-inline" for="rdGender-weman">
                <#if '女'==ret.model.gender!>
                <input id="rdGender-weman" name="gender" value="女" checked type="radio">
                <#else>
                <input id="rdGender-weman" name="gender" value="女" type="radio">           
                </#if>                                     
                                                     女
            </label>
        </div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="post">职务</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="post" value="${ret.model.post!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="email">邮件</label>
		<div class="col-md-9">
			<input maxlength="30" type="email" class="form-control" name="email" value="${ret.model.email!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="phone"><span style="color: red;">*&nbsp;</span>联系方式</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="phone" value="${ret.model.phone!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="airportName"><span style="color: red;">*&nbsp;</span>机场名称</label>
		<div class="col-md-9">
            <input id="edtAirport4Code" maxlength="4" type="hidden" class="form-control" name="airport4Code" value="${ret.model.airport4Code!}" /> 
            <input id="edtAirportName" maxlength="50" type="text" class="form-control" name="airportName" value="${ret.model.airportName!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busFromPlace"><span style="color: red;">*&nbsp;</span>车辆停放始发地点</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="busFromPlace" value="${ret.model.busFromPlace!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="drive"><span style="color: red;">*&nbsp;</span>车程</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="drive" value="${ret.model.drive!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="serviceContent"><span style="color: red;">*&nbsp;</span>保障内容</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="serviceContent" value="${ret.model.serviceContent!}" /> 
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="remark">备注</label>
        <div class="col-md-9">
            <textarea id="content-input" name="remark" rows="5" class="form-control">${ret.model.remark!}</textarea>
        </div>
    </div>
</form>
<script src="/js/views/fpOutStation/validation.js"></script>

<script>
var objMap = {}; 

$(function(){
	load_dh_type();
    var airportName = $.find("form input[name='airportName']");
    if (airportName) {
        $.get("/admin/aoAirport/listName", function(data) {
            $(airportName).typeahead({
                source : function (query, process) {
                    var names = [];
                    $.each(data, function (index, ele) {
                        objMap[ele.airportChName] = ele.airport4code;
                        names.push(ele.airportName);
                    });
                    process(names);
                },
                
                minLength : 0,
                items : 15,
                
                highlighter: function (item) {
                    return "> " + item;
                },

                updater: function (item) {
                    console.log("'" + item + "' selected." + objMap[item]);
                    $('#edtAirport4Code').val(objMap[item]);
                    $('#edtAirportName').val(item);
                    return item;
                }
            })
        });
    }
});
</script>
