<div class="modal-content">
	<div class="modal-header">
		<h6 class="modal-title">机场明细</h6>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
		<form title="机场明细" class="form-horizontal " id="detailsForm">
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="airport4code"><span style="color: red;">*&nbsp;</span>4字码</label>
				<div class="col-md-9">
					<input maxlength="4" dh-type="caps" onkeyup="this.value = this.value.toUpperCase();" onkeypress="verifyCharType(this,event)" type="text" class="form-control" readonly="true"
						name="airport4code" value="${ret.model.airport4code!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="airport3code"><span style="color: red;">*&nbsp;</span>机场3字代码</label>
				<div class="col-md-9">
					<input maxlength="3" dh-type="caps" onkeyup="this.value = this.value.toUpperCase();" onkeypress="verifyCharType(this,event)" type="text" class="form-control" readonly="true"
						name="airport3code" value="${ret.model.airport3code!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="city3code">城市三码</label>
				<div class="col-md-9">
					<input maxlength="3" dh-type="caps" onkeyup="this.value = this.value.toUpperCase();" onkeypress="verifyCharType(this,event)" type="text" class="form-control" readonly="true"
						name="city3code" value="${ret.model.city3code!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="cityChName">城市中文名</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="cityChName" value="${ret.model.cityChName!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="cityEnName">城市英文名</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="cityEnName" value="${ret.model.cityEnName!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="cityAbbr">城市简称</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="cityAbbr" value="${ret.model.cityAbbr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="airportChName">机场中文名</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="airportChName" value="${ret.model.airportChName!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="airportEnName">机场英文名</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="airportEnName" value="${ret.model.airportEnName!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="airportAbbr">机场简称</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="airportAbbr" value="${ret.model.airportAbbr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="cityTelNo">城市电话号</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="cityTelNo" value="${ret.model.cityTelNo!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="dOrI">I国际/D国内</label>
				<div class="col-md-9">
				<input type="text" class="form-control" readonly="true" 
				    name="dOrI" value="${ret.model.DOrI!}"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="aFir">情报区</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true" name="aFir"
						value="${ret.model.AFir!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="aArea">所在省份</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="aArea" value="${ret.model.AArea!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="curfewInfo">宵禁信息</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="curfewInfo" value="${ret.model.curfewInfo!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="gpsYn">是否对外开放</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="gpsYn" value="${ret.model.gpsYn!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="sitaOnoffAddr">SITA起飞落地报地址</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="sitaOnoffAddr" value="${ret.model.sitaOnoffAddr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="sitaRlsAddr">SITA_RLS报地址</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="sitaRlsAddr" value="${ret.model.sitaRlsAddr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="sitaLdmAddr">SITA_LDM报地址</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="sitaLdmAddr" value="${ret.model.sitaLdmAddr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="sitaCrwAddr">SITA_CRW机组名单报地址</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="sitaCrwAddr" value="${ret.model.sitaCrwAddr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="aftnAddr">AFTN报地址</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="aftnAddr" value="${ret.model.aftnAddr!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="phone">机场相关单位电话</label>
				<div class="col-md-9">
					<textarea id="content-input" name="content" rows="5"
						readonly="true" class="form-control">${ret.model.phone!}</textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="aGzt">是否通航</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true" name="aGzt"
						value="${ret.model.AGzt!}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label" for="runwayNum">跑道数量</label>
				<div class="col-md-9">
					<input type="text" class="form-control" readonly="true"
						name="runwayNum" value="${ret.model.runwayNum!}" />
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
	</div>
</div>
