
function submitSave(objName){
    var form = $("#"+objName+"_update");
    var list = $(form).find("input, select");
    var arr = [];
    var obj = {};
    list.each(function(j, item) {
        item = $(item);
		if (item.attr("type") == "radio") {
			console.log("radio:" + item);
			if (item.is(":checked")) {
				var key = item.attr("name");
				if (key) {
					obj[key] = item.val();
				}
			}
		} else {
	        var key = item.attr("name");
	        if (key) {
	            obj[key] = item.val();
	        }
	    }
    });
    arr.push(obj);

    if($("#"+objName+"_update").attr("dh-action") === "save"){
        miniBatchDeal('/admin/'+objName+'/saveBatch', JSON.stringify(arr));
    }else{
        miniBatchDeal('/admin/'+objName+'/updateBatch', JSON.stringify(arr));
    }
    ctrl_btns(objName,1,0);
    $("#"+objName+"_update").hide();
}

function showSearchPanel(objName){
    //找到上一层的搜索对象
    var sub_obj = get_sub_obj(objName);
    var froms = sub_obj.from;
    var depth = froms.length - 1;

    $("#"+objName+"_update").attr("objName",objName);

    $("#"+objName+"_searchBtn").show();
    $("#"+objName+"_gosearchBtn").hide();
    $("#"+objName+"_searchSaveBtn").hide();

    $("#"+objName+"_update").attr("depth",depth);
    $("#"+objName+"_update").load("/admin/"+froms[depth].obj+"/exList");
    $("#"+objName+"_update").show();
}

function btns_ctrl_search(objName,goSearch,doSearch,doSave){
    if(goSearch) {
        $("#"+objName+"_gosearchBtn").hide();
    }
}

// searchResult --> selected
function componentSelect(obj,nowId){
    var divObj = $(obj).parents(".extUpdator");
    var objName = divObj.attr("objName");

    var sub_obj = get_sub_obj(objName);
    var froms = sub_obj.from;
    var depth = divObj.attr("depth");
    var arr = getSelectedArr(objName+"_update");

    var localSelectorKey = froms[depth].localCol;

    depth--;
    divObj.attr("depth",depth);

    if(depth == 0){
        // 结果可以直接save
        $("#"+objName+"_searchBtn").hide();
        $("#"+objName+"_searchSaveBtn").show();
        divObj.load("/admin/"+froms[depth].obj+"/exList?"+localSelectorKey+"="+nowId);
    }else{
        // 结果继续搜索
        $("#"+objName+"_searchBtn").show();
        $("#"+objName+"_searchSaveBtn").hide();
        divObj.load("/admin/"+froms[depth].obj+"/exList?"+localSelectorKey+"="+nowId);
    }
}

function getSelectedArr(divName){
    var tableData = $("#"+divName);
    var arr = [];
    tableData.each(function(i, tr) {
        if (!$(tr).find("input[name='multiSelect']").is(":checked")) {
            return;
        }
        var list = $(tr).find("input, select");
        var obj = {};
        list.each(function(j, item) {
            item = $(item);
    		if (item.attr("type") == "radio") {
    			console.log("radio:" + item);
    			if (item.is(":checked")) {
    				var key = item.attr("name");
    				if (key) {
    					obj[key] = item.val();
    				}
    			}
    		} else {
    			var key = item.attr("name");
            
    			if (key) {
    				obj[key] = item.val();
    			}
    		}
        });
        arr.push(obj);
    });
}

function commitSearchSave(objName){
    var tableData = $("#"+objName+"_update").find("tr");
    var froms = get_sub_obj(objName).from;
    var arr = [];
    tableData.each(function(i, tr) {
        if (!$(tr).find("input[name='multiSelect']").is(":checked")) {
            return;
        }
        var list = $(tr).find("input, select");
        var obj = {};
        obj[dh_update_params.linkCol] = currentId;
        list.each(function(j, item) {
            item = $(item);
    		if (item.attr("type") == "radio") {
    			console.log("radio:" + item);
    			if (item.is(":checked")) {
    				var key = item.attr("name");
    				if (key) {
    					obj[froms[0].localCol] = item.val();
    				}
    			}
    		} else {
    			var key = item.attr("name");
    			if (key && key == froms[0].remoteCol) {
    				obj[froms[0].localCol] = item.val();
    			}
            }
        });
        arr.push(obj);
    });
    console.log(arr);
    miniBatchDeal("/admin/"+objName+"/saveBatch",JSON.stringify(arr));
    $("#"+objName+"_update").hide();
    $("#"+objName+"_searchBtn").hide();
    $("#"+objName+"_searchSaveBtn").hide();
    $("#"+objName+"_gosearchBtn").show();
}

var tempSum;
function commitSearch(objName){
    var form = $("#"+objName+"_update");
    var list = $(form).find("input, select");
    var arr = [];
    tempSum = "";
    list.each(function(j, item) {
        item = $(item);
        var key = item.attr("name");
        if(key && item.val() !== null && item.val() !== "") {
            if(tempSum !== ""){
                tempSum += "&";
            }
            tempSum += key+"="+item.val();
        }
    });
    location.href="listPage?"+tempSum;
    return false;
}

function showSavePanel(objName){
    // 单击添加
    var sub_obj = get_sub_obj(objName);
    if(sub_obj == null)  return;
    $("#"+objName+"_update").load("/admin/"+objName+"/savePage?"+sub_obj.link.col+"=" + currentId);
    $("#"+objName+"_update").attr("dh-action","save");
    $("#"+objName+"_update").show();
    ctrl_btns(objName,0,1);
}

function editThisOption(objName,id){
    nowPageState = {state : 5};
    $("#"+objName+"_update").load("/admin/"+objName+"/updatePage?id="+id);
    $("#"+objName+"_update").attr("dh-action","update");
    $("#"+objName+"_update").show();
    ctrl_btns(objName,0,1);
}

function ctrl_btns(objName,add,save){
    (add)?$("#"+objName+"_addBtn").show():$("#"+objName+"_addBtn").hide();
    (save)?$("#"+objName+"_saveBtn").show():$("#"+objName+"_saveBtn").hide();
}

function componentDelete(objName,divName){
    reqData = getSelectedRows(objName+"_list");
    miniBatchDeal('/admin/'+objName+'/deleteBatch', reqData);
}

function getSelectedRows(divName){
    var tableData = $("#"+divName+" tr");
    var arr = [];
    tableData.each(function(i, tr) {
        if (!$(tr).find("input[name='multiSelect']").is(":checked")) {
            return;
        }
        var list = $(tr).find("input, select");
        var obj = {};
        list.each(function(j, item) {
            item = $(item);
    		if (item.attr("type") == "radio") {
    			console.log("radio:" + item);
    			if (item.is(":checked")) {
    				var key = item.attr("name");
    				if (key) {
    					obj[key] = item.val();
    				}
    			}
    		} else {
    			var key = item.attr("name");
    			if (key) {
    				obj[key] = item.val();
    			}
    		}
        });
        arr.push(obj);
    });
    if (arr && arr.length > 0) {
        return JSON.stringify(arr);
    } else {
        return "";
    }
}

function updateDealRet(data){
    console.log(data);
    if (data.ret == '10000' && data.model > 0) {
        showToast('处理成功');
        var subs = dh_update_params.sub;
        subs.forEach(function(item){
            refreshOneList(item.obj);
        });
    }
}

function miniBatchDeal(action, reqData) {
    console.log(reqData);
    if (reqData) {
        $.ajax({
            type : "POST",
            url : action,
            data : reqData,
            contentType : "application/json",
            success : updateDealRet
        });
    } else {
        showToast('请正确操作!');
    }
}

$(document).ready(function(){
    showAllPanels();
});

function refreshOneList(objName){
    var sub_param = get_sub_obj(objName);
    if(sub_param == null)  return;
    $("#"+objName+"_list").load("/admin/"+sub_param.obj+"/exList?"+sub_param.link.col+"="+dh_update_params.thisid);
}

function get_sub_obj(objName) {
    var subs = dh_update_params.sub
    for (i = 0; i < subs.length; i++) {
        if (subs[i].obj == objName) {
            return subs[i];
        }
    }
    return null;
}

function showAllPanels(){
    var prepare = "";
    var subs = dh_update_params.sub;

    subs.forEach(function(item){
        prepare += showOnePanel(item.obj, item);
    });

    $("#hierarchyPanel").html(prepare);

    subs.forEach(function(item){
        refreshOneList(item.obj);
    });

}

function showOnePanel(objName, sub_obj){
    var t ='<div class="form-group row" style="padding-left:15px">\n' +
        '        <div class="row mb-1">\n' +
        '            <div class="col-sm-12 col-lg-12">\n';

    if(sub_obj.type == "search") {
        t += '                <button type="button" class="btn btn-primary" id="'+objName+'_gosearchBtn" onclick="showSearchPanel(\'' + objName + '\',this)">添加</button>\n';
        t += '                <button type="button" class="btn btn-success" style="display: none;" id="'+objName+'_searchBtn" onclick="componentSearch(\'' + objName + '\',this)">搜索</button>\n';
        t += '                <button type="button" class="btn btn-success" style="display: none;" id="'+objName+'_searchSaveBtn" onclick="commitSearchSave(\'' + objName + '\',this)">保存</button>\n';
    }else{
        t += '                <button type="button" class="btn btn-primary" id="'+objName+'_addBtn" onclick="showSavePanel(\'' + objName + '\',this)">添加</button>\n';
        t += '                <button type="button" class="btn btn-success" style="display: none;" id="'+objName+'_saveBtn" onclick="submitSave(\'' + objName + '\',this)">确认添加</button>\n';
    }

    t += '                <button type="button" class="btn btn' +
        '-danger" onclick="componentDelete(\'' + objName + '\',this)">删除</button>\n' +

        '            </div>\n' +
        '        </div>\n' +
        '        <!-- 列表 -->\n' +
        '        <br>\n' +
        '    </div>\n' +
        '\n' +
        '    <div class="extUpdator" style="border: solid 1px #39afea; padding:10px; display:none;" id="'+objName+'_update">\n' +
        '    </div>\n' +
        '\n' +
        '    <div id="'+objName+'_list" style="width: 100%">\n' +
        '        <!-- 加载的listPage-->\n' +
        '    </div>'
    return t;
}

function editMultiSelect(item){
    var checks = $(item).parents("table");
    checks = $(checks).find("tr input[name='multiSelect']");
    var checked = false;// 是否已经有选择
    checks.each(function(i, item) {
        if ($(item).is(":checked")) {
            checked = true;
        }
    });
    checks.each(function(i, item) {
        $(item).prop('checked', !checked);
    });
}