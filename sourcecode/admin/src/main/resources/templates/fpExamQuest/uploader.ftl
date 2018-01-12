<form title="更新" class="form-horizontal" action="fromExcel" method="post" id="excelUploader" enctype="multipart/form-data">
	<div class="form-group row">
		<div class="col-md-9">
            <input id="bankId" type="hidden" name="bankId" value="${bankId}"/>
            <label class="col-md-9 form-control-label">${bankName}</label>
		</div>
	</div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="file">文件</label>
        <div class="col-md-9">
            <input id="file" type="file" name="file" title="选择文件" placeholder="选择文件"
                accept="application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"/>
        </div>
    </div>
    <div id="sk-wave-div" class="form-group row" style="display:none">
        <div class="sk-wave">
             <div class="sk-rect sk-rect1"></div>
             <div class="sk-rect sk-rect2"></div>
             <div class="sk-rect sk-rect3"></div>
             <div class="sk-rect sk-rect4"></div>
             <div class="sk-rect sk-rect5"></div>
        </div>
        <label class="col-md-3 form-control-label">处理中...</label>
    </div>
</form>

