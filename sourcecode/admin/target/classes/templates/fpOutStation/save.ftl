<form title="添加" class="form-horizontal "  id="saveOrUpdateForm">
	<div class="form-group row"  style="display:none">
		<label class="col-md-3 form-control-label" for="id">id</label>
		<div class="col-md-9">
            <input type="text" class="form-control" name="id" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userNo">用户工号</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="userNo" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="type"><span style="color: red;">*&nbsp;</span>类型</label>
		<div class="col-md-9">
		    <#if globalDict['outstationType']?exists> 
                <select class="form-control" name="type">
                    <#list globalDict['outstationType']?keys as key>
                    <option value="${key}">${globalDict['outstationType'][key]!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="type" value="" />
            </#if>
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userName">姓名</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="mobilePhone">手机</label>
		<div class="col-md-9">
			<input maxlength="11" type="text" dh-type="integer"  
			     class="form-control" name="mobilePhone" value="" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="comName"><span style="color: red;">*&nbsp;</span>协议保障单位</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="comName" value="" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="city"><span style="color: red;">*&nbsp;</span>城市名称</label>
		<div class="col-md-9">
			<input maxlength="30" type="text" class="form-control" name="city" value="" />
		</div>
	</div>
	<div class="form-group row">
        <label class="col-md-3 form-control-label" for="status">有效状态</label>
        <div class="col-md-9">
            <label class="radio-inline" for="rdStatus-valid">
                <input id="rdStatus-valid" name="status" value="1" checked type="radio">有效
            </label>
            <label class="radio-inline" for="rdStatus-invalid">
                <input id="rdStatus-invalid" name="status" value="0" type="radio">无效
            </label>
        </div>
	</div>
	<div class="form-group row">
        <label class="col-md-3 form-control-label" for="gender">性别</label>
        <div class="col-md-9">
            <label class="radio-inline" for="rdGender-man">
                <input id="rdGender-man" name="gender" value="男" type="radio">男
            </label>
            <label class="radio-inline" for="rdGender-weman">
                <input id="rdGender-weman" name="gender" value="女" type="radio">女
            </label>
        </div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="post">职务</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="post" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="email">邮件</label>
		<div class="col-md-9">
			<input maxlength="30" type="email" class="form-control" name="email" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="phone"><span style="color: red;">*&nbsp;</span>联系方式</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="phone" value="" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="airportName"><span style="color: red;">*&nbsp;</span>机场名称</label>
        <div class="col-md-9">
            <input id="edtAirport4Code" maxlength="4" type="hidden" class="form-control" name="airport4Code" value="" /> 
            <input id="edtAirportName" maxlength="50" type="text" class="form-control" name="airportName" value="" />
        </div>
    </div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="busFromPlace"><span style="color: red;">*&nbsp;</span>车辆停放始发地点</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="busFromPlace" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="drive"><span style="color: red;">*&nbsp;</span>车程</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="drive" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="serviceContent"><span style="color: red;">*&nbsp;</span>保障内容</label>
		<div class="col-md-9">
			<input maxlength="100" type="text" class="form-control" name="serviceContent" value="" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="remark">备注</label>
        <div class="col-md-9">
            <textarea id="content-input" name="remark" rows="5" class="form-control"></textarea>
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
                    console.log("'" + item + "' selected.");
                    $('#edtAirport4Code').val(objMap[item]);
                    $('#edtAirportName').val(item);
                    return item;
                }
            })
        });
    }
});
</script>
