<form title="更新" class="form-horizontal " id="signupForm">
    <input id="menuIds" name="menuIds" type="hidden">
	<input id="updateKey" type="hidden" name="id" value="${ret.model.id!}" />
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="name"><span style="color: red;">*&nbsp;</span>角色名称</label>
		<div class="col-md-9">
		  <input maxlength="50" type="text" class="form-control" name="name" value="${ret.model.name!}" /> 
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="roleCode"><span style="color: red;">*&nbsp;</span>角色编号</label>
		<div class="col-md-9">
			<input maxlength="20" type="text" class="form-control" name="roleCode" value="${ret.model.roleCode!}" />
		</div>
	</div>
	<div class="form-group row">
		<label class="col-md-3 form-control-label" for="remark">说明</label>
		<div class="col-md-9">
			<input maxlength="200" type="text" class="form-control" name="remark" value="${ret.model.remark!}" />
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="isDefault">是否默认角色</label>
        <div class="col-md-9">
            <select class="form-control" name="isDefault">
                <option value="0" ${(ret.model.isDefault?? && '0'==ret.model.isDefault)?string( 'selected="selected"','')}>否</option>
                <option value="1" ${(ret.model.isDefault?? && '1'==ret.model.isDefault)?string( 'selected="selected"','')}>是</option>
            </select> 
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 control-label">菜单权限：</label>
        <div class="col-sm-8">
            <div id="menuTree">
              </div>
        </div>
    </div>    
</form>

<script src="/js/views/sysRole/validation.js"></script>
<script>
var menuIds;


function showModalS(){
    $("#remote-modal").hide();
    var title = "正在处理中";
    var modelObj = $("#local-modal");
    var bodyObj = $("#local-modal .modal-body");
    var titleObj = $("#local-modal .modal-title");
    var spinner = "<div class='col-md-12 text-center' id='modelSpinnerText'></div><div class='text-center'><div class='sk-wandering-cubes'> <div class='sk-cube sk-cube1'></div> <div class='sk-cube sk-cube2'></div> </div></div>";
    bodyObj.html(spinner);
    titleObj.text(title);
    modelObj.modal('show');
}

function doCloseModalS(){
    $("#remote-modal").show();
    var modelObj = $("#local-modal");
    modelObj.modal('hide');
}


document.getElementById("dialogSaveBtn").onclick=function(){
    if (!$("#signupForm").valid()) {
        return;
    }
        //showModalS();
       // model_ctrl.onSuccess = function(){
            //doCloseModalS();
         //   showToast("操作成功！",true);
            //location.reload();
       // }
        getAllSelectNodes();
        $('#menuIds').val(menuIds);
        saveOrUpdate(this);
};

$(function() {
    getMenuTreeData();
});

function loadMenuTree(menuTree) {
    $('#menuTree').jstree({
        "plugins" : [ "wholerow", "checkbox" ],
        'core' : {
            'data' : menuTree
        },
        "checkbox" : {
            //"keep_selected_style" : false,
            //"undetermined" : true
            //"three_state" : false,
            //"cascade" : ' up'
        }
    });
    $('#menuTree').jstree('open_all');
}

function getAllSelectNodes() {
    var ref = $('#menuTree').jstree(true); // 获得整个树
    menuIds = ref.get_selected(); // 获得所有选中节点的，返回值为数组
    $("#menuTree").find(".jstree-undetermined").each(function(i, element) {
        menuIds.push($(element).closest('.jstree-node').attr("id"));
    });
    console.log(menuIds); 
}
function getMenuTreeData() {
    var roleId = $('#updateKey').val();
    $.ajax({
        type : "POST",
        url : "/admin/sysResource/tree/" + roleId,
        success : function(data) {
            loadMenuTree(data);
        }
    });
}
</script>


