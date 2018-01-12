// 获取表单需要提交的数据
function getTableDataJson() {
	var tableData = $("#table_data tr");
	var arr = new Array();
	tableData.each(function(i, tr) {
		if (!$(tr).find("input[name='multiSelect']").is(":checked")) {
			return;
		}
		var list = $(tr).find("input, select");
		var obj = {};
		list.each(function(j, item) {
			item = $(item);
			var key = item.attr("name");
			if (key) {
				obj[key] = item.val();
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

// 提示
function showToast(msg, ismodal) {
	console.log(msg);
	
//	var box = document.getElementById("messagebox_overlay");
//	if (box) {
//		box.remove();
//	}
//	
//	if (!ismodal) {
//		alert(msg);
//	} else {
//		$.MessageBox(msg);
//	}
	alert(msg);
	return false;
}

// 处理结果
function dealRet(data) {
	console.log(data);
	if (data.ret == '10000' && data.model > 0) {
		if(model_ctrl.onSuccess == undefined) {
            showToast('处理成功');
            refreshPage();
        }else{
			model_ctrl.onSuccess();
		}
	} else {
		showToast(data.detail);
	}

}
// 刷新页面
function refreshPage() {
	window.location.reload();
}

// 全选
function multiSelectCheck() {
	var checks = $("#table_data tr input[name='multiSelect']");
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

// 分页函数
function pageto(loc) {
	var page = $("#pageArea");
	var total = parseInt($("#totalPage").text());
	var current = parseInt($("#currentPage").text());
	if (loc) {
		var form = $("#searchform")[0];
		if (loc == "?") {
			loc = $("#pageArea input[type='number']").val();
			loc = parseInt(loc);
		}
		if (!loc || loc < 1 || loc > total) {
			alert("请输入正确的页号（1-" + total + "之间）");
			$("#pageArea input[type='number']").focus();
			return;
		}
		form.page.value = loc;
		form.submit();
		return;
	}
	var html = '&nbsp;&nbsp;&nbsp;<a>首页</a> <a>上一页</a> <a>下一页</a> <a>尾页</a> 跳至第<input type="number" onkeypress="return IsNumber(event)" min="1" class="mini"/>页 <button onclick="pageto(\'?\')" class="mybutton">GO</button>';
	html = page.html() + html;
	page.html(html);
	var links = page.find("a");
	if (current != 1) {
		$(links[0]).attr("href", "javascript:pageto(1)");
	}
	if (current > 1) {
		$(links[1]).attr("href", "javascript:pageto(" + (current - 1) + ")");
	}
	if (current < total) {
		$(links[2]).attr("href", "javascript:pageto(" + (current + 1) + ")");
	}
	if (current != total) {
		$(links[3]).attr("href", "javascript:pageto(" + total + ")");
	}

}

var model_ctrl = { state : 0 };

// 弹出框
function showModal(url, title) {

    var modelObj = $("#remote-modal");
    var bodyObj = $("#remote-modal .modal-body");
    var titleObj = $("#remote-modal .modal-title");

	if (url.indexOf('save') >= 0) {
		title = title || '添加';
	}
	if (url.indexOf('update') >= 0) {
		title = title || '更新';
	}

	var spinner = "<div class='col-md-12 text-center' id='modelSpinnerText'></div><div class='text-center'><div class='sk-wandering-cubes'> <div class='sk-cube sk-cube1'></div> <div class='sk-cube sk-cube2'></div> </div></div>";

	var documentObj = $("#remote-modal .modal-dialog");
	if(url.indexOf("javascript") != -1){
		documentObj.hasClass("modal-lg") ? (!documentObj.addClass("modal-sm") || documentObj.removeClass("modal-lg")):1 ;
	}else{
		documentObj.hasClass("modal-sm") ? (!documentObj.addClass("modal-lg") || documentObj.removeClass("modal-sm")):1 ;
	}

	bodyObj.html(spinner);
	bodyObj.load(url, function(ret) {
		console.log(ret);
	});

	titleObj.text(title);
	console.log(bodyObj.find("form").attr("title"))

    if(model_ctrl.state != 0){
        model_ctrl.state ++;
	}else{
        modelObj.modal("show");
        model_ctrl.state ++;
    }
}

//弹出框
function showModalEx(url) {
	var modelObj = $("#remote-modal");
	var dialogObj = $("#remote-modal .modal-dialog");
	dialogObj.load(url, function(ret) {
		console.log(ret);
	});
	modelObj.modal("show");
}

function closeUploadModal(){
    var modalObj = $("#remote-modal");
    modalObj.modal("hide");
    model_ctrl.state = 0;
}

$(document).ready(function() {

    $('#remote-modal').on('hide.bs.modal', function (e) {
        // do something...
        if(model_ctrl != undefined) {
            model_ctrl.state = 0;
        }
    });

    $('#remote-modal').on('hidden.bs.modal', function (e) {
        // do something...
		if(model_ctrl != undefined) {
            model_ctrl.state = 0;
        }
    });
});

function batchDeal(action, reqData) {
	console.log(reqData);
	if (reqData) {
		$.ajax({
			type : "POST",
			url : action,
			data : reqData,
			contentType : "application/json",
			success : dealRet
		});
	} else {
		showToast('请先选择相应的条目再操作!');
	}
}

// reqData
// [{"multiSelect":"22","id":"22","state":"1","examName":"飞行培训8750534","language":"cn","userType":"A","examType":"S"}]

function saveOrUpdate(obj) {
	var form = $(obj).parents("#remote-modal").find(".modal-body form");
    if (!$(form).valid()) {
        return;
    }
    
	var list = $(form).find("input, select, textarea");
	var arr = new Array();
	var obj = {};
	console.log(list);
	
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
	if (form.find("#updateKey").length > 0) {
		batchDeal('updateBatch', JSON.stringify(arr));
	} else {
		batchDeal('saveBatch', JSON.stringify(arr));
	}

}

function checkRequired(inputList) {
    list.each(function(j, item) {
        item = $(item);
        var key = item.attr("required");
        if (key) {
        	var value = item.val();
        	if (value) {
        		showToast('请先选择相应的条目再操作!');
        		return false;
        	}
            obj[key] = item.val();
        }
    });
}

function deleteBatch(reqData) {
	reqData = reqData || getTableDataJson();
	if(!confirm("您确定要删除这 "+JSON.parse(reqData).length+" 项吗？")){return;}
	batchDeal('deleteBatch', reqData);
}

function getFormDatas(selector){
    var form = $(selector);
    var list = form.find("input, select, textarea");
    var arr = [];
    var obj = {};

    list.each(function(j, item) {
        item = $(item);
        var key = item.attr("name");
        if (key) {
            obj[key] = item.val();
        }
    });

    arr.push(obj);
    return arr;
}

var queueParams = { lst : [], timer : -1};

function createQueue(){
    var qId = queueParams.lst.length;
    var qObj = { events : [], nodes : []};
    queueParams.lst[qId] = qObj;
    return qId;
}

function addQueueNode(qId, obj){
	var qObj = queueParams.lst[qId];
    qObj.nodes.push(obj);
    //qObj.len = qObj.nodes.length;
}

function setQueueEvent(queueId, evt, params){
    if(queueParams.timer === -1){
        queueParams.timer = setInterval(queueTimer, 500);
    }
    if(evt === "exceed"){
        var q = queueParams.lst[queueId];
        q.events.push({type : "exceed", callback:params.callback, len: params.len, firable: params.firable});
    }
}

function queueTimer(){
    queueParams.lst.forEach(function(item){
        if(item.events !== undefined && item.events.length > 0){
            for(var i=0; i < item.events.length; i++){
                if(item.events[i].type === "exceed") {
                    if (item.nodes.length >= item.events[i].len) {
                        item.events[i].callback(item, item.events[i]);
                        if(item.events[i].firable){
                            item.events[i] = {};
                        }
                    }
                }
            }
        }else{
            clearInterval(queueParams.timer);
        }
    });
}

function IsNumber(e) {
    var k = window.event ? e.keyCode : e.which;
    if (((k >= 48) && (k <= 57)) || k == 8 || k == 0) {
    } else {
        if (window.event) {
            window.event.returnValue = false;
        }
        else {
            e.preventDefault(); //for firefox 
        }
    }
} 


function verifyCharType(me,evt){
	var key = window.event ? evt.keyCode : e.which;
	var obj = $(me);
	var tp = obj.attr("dh-type");
	var allowAlpha = false, allowDigit = false, autoUp = false,
		autoLow = false, allowDot = false, allowMinus = false;
	if(tp === "mobile"){
		allowDigit = true;
	}
    if(tp === "any"){
		allowAlpha = true;
        allowDigit = true;
		allowDot = true;
		allowMinus = true;
    }
    if(tp === "alpha"){
		allowAlpha = true;
    }
    if(tp === "caps"){
		allowAlpha = true;
		autoUp = true;
    }
	if(isAlpha(key)){
		if(!allowAlpha){
			evt.preventDefault();
		}else if(autoUp){
			evt.keyCode = String.fromCharCode(key).toUpperCase().charCodeAt(0);
			evt.returnValue = String.fromCharCode(key).toUpperCase().charCodeAt(0);
		}
	}else if(isDigit(key) && allowDigit) {
    }else if(isMinus(key) && allowMinus) {
	}else if(isDot(key) && allowDot) {
    }else if(isSystamatic(key)){
		// nothing
	}else{
		console.log("Screened key:"+key);
		console.log(evt);
		evt.preventDefault();
	}
}


function utils_get_param(name){
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r!=null)return  unescape(r[2]); return null;
}

function isDot(k){
	return k === '.'.charCodeAt(0);
}

function isAlpha(k){
    return k >= 65 && k<= 90; //|| k >=97 && k <= 122;
}

function isDigit(k){
    return k >= 48 && k<=57;
}

function isMinus(k) { return k == 189;}

function isSystamatic(k){
	return k == 0 || k == 8 || k == 27 || k == 46 || k==17 || k==18;
}

function load_dh_type() {
	load_date_pickers();
	load_type_number();
}

function load_type_number() {
    $('input[dh-type="integer"]').each(function (i, item) {
        console.log(item);
        setImeDisabled(item);
        $(item).on("keyup",function(evt){
            $(this).val($(this).val().replace(/[^\d]+/g, ''));  
        });
        $(item).on("input",function(evt){
            $(this).val($(this).val().replace(/[^\d]+/g, ''));  
        });

        var _input = $(this)[0];  
        if (_input.attachEvent) {  
            _input.attachEvent('onbeforepaste', formatPasteDataToInteger);  
        } else {  
            _input.addEventListener('onbeforepaste', formatPasteDataToInteger, false);  
        }  
    });
    
    $('input[dh-type="float"]').each(function (i, item) {
        console.log(item);
        setImeDisabled(item);
        $(item).on("keyup",function(evt){
        	$(this).val($(this).val().replace(/[^0-9.]+/g, ''));  
        });
        $(item).on("input",function(evt){
        	$(this).val($(this).val().replace(/[^0-9.]+/g, ''));
        });

        var _input = $(this)[0];  
        if (_input.attachEvent) {  
            _input.attachEvent('onbeforepaste', formatPasteDataToInteger);  
        } else {  
            _input.addEventListener('onbeforepaste', formatPasteDataToInteger, false);  
        }  
    });

    function formatPasteDataToInteger() {  
        clipboardData.setData('text', clipboardData.getData('text').replace(/[^\d]+/g, ''));  
    }  
  
    function formatPasteDataToFloat() {  
        clipboardData.setData('text', clipboardData.getData('text').replace(/[^0-9.]+/g, ''));  
    }  
}

function load_date_pickers() {

    $('input[dh-type="timepick"]').each(function (i, item) {
        console.log(item);
        setImeDisabled(item);
        $(item).datetimepicker({
            format : "hh:ii:ss",
            language: 'zh-CN',
			startView : 1,
            autoclose: true,
            clearBtn: true,
        });
        $(item).on("keypress",function(evt){
            if(isSystamatic(evt.keyCode)){
            }else{
                evt.preventDefault();
            }
        })
    });

    $('input[dh-type="datepick"]').each(function (i, item) {
        console.log(item);
        setImeDisabled(item);
        $(item).datetimepicker({
            format: 'yyyy-mm-dd',
            language: 'zh-CN',
            minView : 2,
            autoclose: true,
            forceParse : false,
            todayHighlight: true,
            clearBtn: true,
            startDate:new Date("2000/01/01")
        });
        $(item).on("keypress",function(evt){
            if(isSystamatic(evt.keyCode)){
            }else{
                evt.preventDefault();
            }
        })
    });

    $('input[dh-type="datetimepick"]').each(function (i, item) {
        console.log(item);
        setImeDisabled(item);
        $(item).datetimepicker({
            format: 'yyyy-mm-dd hh:ii:ss',
            language: 'zh-CN',
            autoclose: true,
            forceParse : false,
            todayHighlight: true,
            clearBtn: true,
            startDate:new Date("2000/01/01")
        });
        $(item).on("keypress",function(evt){
        	if(isSystamatic(evt.keyCode)){
			}else{
        		evt.preventDefault();
			}
		})
    });
}

function setImeDisabled(item) {
	$(item).attr("style", "ime-mode:disabled");
}
