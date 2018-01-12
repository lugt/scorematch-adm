<form title="更新" class="form-horizontal " id="saveOrUpdateForm">
	<input id="updateKey" type="hidden" name="userNo" value="${ret.model.userNo!}" />
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="deptName">部门名称</label>
        <div class="col-md-9">
            <input id="edtDeptId" maxlength="50" type="hidden" class="form-control" name="deptId" value="${ret.model.deptId!}" /> 
            <input id="edtDeptName" maxlength="30" type="text" class="form-control" name="deptName" value="${ret.model.deptName!}" /> 
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="userNo"><span style="color: red;">*&nbsp;</span>用户工号</label>
        <div class="col-md-9">
            <input maxlength="20" readonly="readonly" type="text" class="form-control" name="userNo" value="${ret.model.userNo!}" />
        </div>
    </div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userLoginName"><span style="color: red;">*&nbsp;</span>登录账号</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userLoginName" value="${ret.model.userLoginName!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userName">用户名</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userName" value="${ret.model.userName!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userNameEn">英文名</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userNameEn" value="${ret.model.userNameEn!}" /> 
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
		<label class="col-md-3 form-control-label" for="mobilePhone">移动电话</label>
		<div class="col-md-9">
			<input maxlength="11" dh-type="integer" type="text" 
			     class="form-control" name="mobilePhone" value="${ret.model.mobilePhone!}" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="phoneBak">备用电话</label>
        <div class="col-md-9">
            <input maxlength="20" type="text" class="form-control" name="phoneBak" value="${ret.model.phoneBak!}" /> 
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="status"><span style="color: red;">*&nbsp;</span>有效状态</label>
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
        <label class="col-md-3 form-control-label" for="crewType">机组人员类型</label>
        <div class="col-md-9">
            <#if globalDict['crewType']?exists> 
                <select class="form-control" name="crewType">
                    <option value="">请选择</option>
                    <#list globalDict['crewType']?keys as key>
                    <option value="${key}" ${(ret.model.crewType?? && key==ret.model.crewType)?string( 'selected="selected"','')}>${globalDict['crewType'][key]!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="crewType" value="${ret.model.crewType!}" />
            </#if>
        </div>
    </div>
    <input type="hidden" name="roleIds" id="roleIds">
    <div class="form-group row">
        <label class="col-md-2 control-label">角色</label>
        <div class="col-md-10">
            <#list roles as item>
            <label class="checkbox-inline">
                <#if 'true'==item.roleSign!>
                <input name="role" type="checkbox" checked="checked" value="${item.id!}" />
                <#else>
                <input name="role" type="checkbox" value="${item.id!}" />
                </#if>
                ${item.name!}
            </label>
            </#list>
        </div>
    </div>
</form>
<script>
$(function (){
	load_dh_type(); 
    $( '#saveOrUpdateForm' ).validate( {
      rules: {
          userNo: 'required',
          userLoginName : 'required',
      },
      errorElement: 'em',
      errorPlacement: function ( error, element ) {
        // Add the `help-block` class to the error element
        error.addClass( 'form-control-feedback' );
        if ( element.prop( 'type' ) === 'checkbox' ) {
          error.insertAfter( element.parent( 'label' ) );
        } else {
          error.insertAfter( element );
        }
        element.focus();
      },
      highlight: function ( element, errorClass, validClass ) {
        $( element ).addClass( 'form-control-danger' ).removeClass( 'form-control-success' );
        $( element ).parents( '.form-group' ).addClass( 'has-danger' ).removeClass( 'has-success' );
      },
      unhighlight: function (element, errorClass, validClass) {
        $( element ).addClass( 'form-control-success' ).removeClass( 'form-control-danger' );
        $( element ).parents( '.form-group' ).addClass( 'has-success' ).removeClass( 'has-danger' );
      }
    });
  });

var roleIds;

document.getElementById("dialogSaveBtn").onclick=function(){
    getCheckedRoles();
    $('#roleIds').val(roleIds);
    saveOrUpdate(this);
};

function getCheckedRoles() {
    roleIds = "";
    $("input:checkbox[name=role]:checked").each(function(i) {
        if (0 == i) {
            roleIds = $(this).val();
        } else {
            roleIds += ("," + $(this).val());
        }
    });
}

var objMap = {}; 

$(function(){
	var deptName = $.find("form input[name='deptName']");
	if (deptName) {
		$.get("/admin/oaDepartment/listName", function(data) {
			$(deptName).typeahead({
                source : function (query, process) {
                    var names = [];
                    $.each(data, function (index, ele) {
                        objMap[ele.deptName] = ele.deptId;
                        names.push(ele.deptName);
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
                    $('#edtDeptId').val(objMap[item]);
                    $('#edtDeptName').val(item);
                    return item;
                }
			})
		});
	}
});
</script>