<form title="添加" class="form-horizontal " id="saveOrUpdateForm">
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="deptName">部门名称</label>
        <div class="col-md-9">
            <input id="edtDeptId" maxlength="50" type="hidden" class="form-control" name="deptId" value="" />
            <input id="edtDeptName" maxlength="30" type="text" class="form-control" name="deptName" value="" />
        </div>
    </div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userNo"><span style="color: red;">*&nbsp;</span>用户工号</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="userNo" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userLoginName"><span style="color: red;">*&nbsp;</span>登录账号</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userLoginName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="password"><span style="color: red;">*&nbsp;</span>密码</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="password" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userName">用户名</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userName" value="" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="userNameEn">英文名</label>
		<div class="col-md-9">
			<input maxlength="50" type="text" class="form-control" name="userNameEn" value="" />
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
		<label class="col-md-3 form-control-label" for="mobilePhone">移动电话</label>
		<div class="col-md-9">
			<input maxlength="11" type="text" dh-type="integer" 
			     class="form-control" name="mobilePhone" value="" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="phoneBak">备用电话</label>
        <div class="col-md-9">
            <input maxlength="20" type="text" class="form-control" name="phoneBak" value="" />
        </div>
    </div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="status"><span style="color: red;">*&nbsp;</span>有效状态</label>
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
        <label class="col-md-3 form-control-label" for="crewType">机组人员类型</label>
        <div class="col-md-9">
            <#if globalDict['crewType']?exists> 
                <select class="form-control" name="crewType">
                    <option value="">请选择</option>
                    <#list globalDict['crewType']?keys as key>
                    <option value="${key}">${globalDict['crewType'][key]!}</option>
                    </#list>
                </select> 
            <#else>
                <input type="text" class="form-control" name="crewType" value="" />
            </#if>
        </div>
    </div>
    <input type="hidden" name="roleIds" id="roleIds">
    <div class="form-group row">
        <label class="col-md-2 control-label">角色</label>
        <div class="col-md-10">
            <#list roles as item>
            <label class="checkbox-inline">
                <#if '1'==item.isDefault!>
                    <input name="role" type="checkbox" value="${item.id}" checked="checked" />
                <#else>
                    <input name="role" type="checkbox" value="${item.id}" />
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
	        password : 'required',
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
