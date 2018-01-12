<!DOCTYPE html>
<html lang="en">
<head>
<title>小鹿云</title>
<!-- head  -->
<#include "/common/head.ftl" />
</head>
<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<!-- header -->
	<#include "/common/header.ftl" />

	<div class="app-body">
		<!-- sidebar -->
		<#include "/common/sidebar.ftl" />
		<!-- content -->
		<main class="main">
		<div class="container-fluid">
			<div class="animated fadeIn">
				<div class="card">
					<div class="card-header">
						<strong>数据同步</strong>
					</div>
					<div class="card-block">
						<form class="form-horizontal " id="saveOrUpdateForm">
							<div class="form-group row">
								<label class="col-md-3 form-control-label" for="startTime">
									<span style="color: red;">*&nbsp;</span>同步时间范围
								</label>
								<div class="col-md-5">
									<div class="col">
										<select id="startSelect" class="form-control" name="startTime"
											onchange="onSelectDates()">
											<option value="">所有</option>
											<option value="${(daysBefore)?string("yyyy-MM-dd")}">3天</option>
											<option value="${(toDay)?string("yyyy-MM-dd")}">今天</option>
											<option value="auto">指定范围</option>
										</select>
									</div>
									<div class="col">
										<input type="text" id="startTimePicker" name="startTime"
											dh-type="datepick" style="display: none;" />
									</div>
								</div>
                                <div class="col-md-4">
                                    <a href="#" class="btn btn-success btn-sm"
                                        onclick="sync3DaysData()" style="color: #fff"> <i
                                        class="fa fa-arrow-circle-right"></i> 现在同步
                                    </a>
                                </div>
							</div>

							<div class="form-group" >
								<#list syncTableList as item>
						 				<div class="card-block">
											<div class="h6 m-0" style="padding-bottom: 5px;">
											<input class="sync_checker" type="checkbox"
                                                    id="choice_choose_${item.id}" dh-id="${item.id}" />
                                            ${item.tableName}
											</div>
										</div>
								</#list>
							</div>
						</form>
					</div>
					<div class="card-footer"></div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<!-- footer	-->
	<#include "/common/footer.ftl" />
	<#include "/common/model.ftl" />
	<script>

    var totals = ${syncTableList?size}

    function onSelectDates(obj){
        if($("#startSelect").val() === "auto"){
                $("#startTimePicker").show();
        }else{
                $("#startTimePicker").hide();
        }
    }


    function sync3DaysData(){


        var startSlc =$("#startSelect").val();
        if(startSlc == "auto"){
            startSlc = $("#startTimePicker").val();
            if(startSlc.length <= 6){
                showToast("请输入时间范围!");
            }
        }

        var totalNum = 0;
        $(".sync_checker").each(function (i,item){
            if(item.checked) {
                totalNum++;
            }
        });

        if(totalNum > 0) {
            var queueId = createQueue();
            setQueueEvent(queueId, "exceed", {len: totalNum, firable: true, callback: onSyncAllFinished});
            showModal("javascript:void", "正在处理,请耐心等待");
        }else{
            showToast("请选择要同步的内容");
            return;
        }

        $(".sync_checker").each(function(i,item){
            if(item.checked) {
                var id = $(item).attr("dh-id");
                var obj = {tableId: id, startDate: startSlc};
                $.ajax({
                    type: "POST",
                    url: "executeSync",
                    contentType: "application/json",
                    data: JSON.stringify(obj),
                    qId: queueId,
                    tbId : id
                }).done(function (ret) {

                    console.log("return has been fired");
                    console.log(ret);

                    if (typeof(ret) == "string") {
                        ret = JSON.parse(ret);
                    }

                    if(ret.ret == "10000"){
                        addQueueNode(this.qId, {result : ret, tbId : this.tbId});
                    }else{
                        closeUploadModal();
                        showToast("操作失败！-"+id);
                    }
                }).fail(function(data){
                    console.log("failing has been fired");
                    console.log(data);
                    closeUploadModal();
                    showToast("操作失败！-"+id);
                });
            }
        })
    }

    function onSyncAllFinished(){
        closeUploadModal();
        showToast("操作成功！");
    }

</script>

</body>
</html>

