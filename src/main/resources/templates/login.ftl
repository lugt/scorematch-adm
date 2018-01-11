<!DOCTYPE html>
<html lang="en">

<head>
<title>小鹿云</title>

<!-- head -->
<#include "common/head.ftl" />

<style type="text/css">
.logo {
	height: 85px;
	width: 100%;
	display: block;
	background-color: #f2f4f8;
	margin: 0;
}

.footer {
	height: 80px;
	width: 100%;
	display: block;
	background-color: #f2f4f8;
	position: absolute;
	bottom: 0;
}

.main {
	background-image: url(/img/dh/bg.png);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	width: 100%;
	min-height: 850px;
	height: 100%;
}

.login {
	background-image: url(/img/dh/bg_1.png);
	background-repeat: no-repeat;
	width: 353px;
	height: 337px;
	border-radius: 2px;
	padding: 15px;
}

.login-img {
	width: 100%;
	height: 40px;
	background-image: url('/img/dh/btn_1.png');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}
</style>
</head>

<body style="padding: 0">
	<div class="container main" style="padding: 0px; margin: 0px;">
		<div class="row ">
			<div class="logo">
				<div class="media" style="margin-top: 0px; margin-left: 30px; cursor: pointer;">
					<img src="/img/dh/logo.png" style="height:70px;" class="media-object pull-left" alt='小鹿云' /> <div class="row" style="font-size: 2.1em;   padding: 20px;">| 小鹿云在线 </div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6">&nbsp;</div>
			<div class="col-3 " style="margin-top: 220px; margin-left: 20px">
				<div class="login">
					<form action="/login" method="post">
						<h2>用户登录</h2>
						<hr>
						<div class="input-group mb-1">
							<span class="input-group-addon"><i class="icon-user"></i> </span>
							<input type="text" name="u" class="form-control" placeholder="帐号" value="${loginName!}"/>
						</div>
						<div class="input-group mb-2">
							<span class="input-group-addon"><i class="icon-lock"></i> </span>
							<input type="password" name="p" class="form-control" 
							     onpaste="return false" ondragenter="return false" oncontextmenu="return false;" 
							     placeholder="密码" value="${password!}"/>
						</div>
						<div class="row ">
							<div class="col-6">
								<input type="hidden" name="from" id="fromPageInput">
								<input type="text" name="c" class="form-control" 
								    onpaste="return false" ondragenter="return false" oncontextmenu="return false;" 
                                    id="edtCode"
								    placeholder="验证码">
							</div>
							<div class="col-6">
								<img title="点击更换" style="height:40px;cursor: pointer;" src="/code" onclick="getCode(this)">
							</div>
						</div>
						<div class="row" style="margin-top: 4px;">
							<div class="col-2">
                                <label class="switch switch-3d switch-primary">
                                    <input type="checkbox" class="switch-input" name="r">
                                    <span class="switch-label"></span>
                                    <span class="switch-handle"></span>
                                </label>
								<!--<input type="checkbox" name="r">-->
							</div>
							<div class="col-4">2周记住密码</div>
							<div class="col-1">&nbsp;</div>
							<!--  
							<div class="col-4">忘记密码?</div>
							-->
						</div>
						<div class="row">
							<div class="col-12" style="color: red">${prompt!}</div>
						</div>
						<div class="row" style="margin-top: 4px;">
							<div class="col-12">
								<button type="submit" class="btn btn-primary login-img">登录</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-3">&nbsp;</div>
		</div>
		<div class="row footer" style="margin: 0">
			<div class="" style="text-align: center;">
				<p></p>
				<p>COPYRIGHT ©2018 小鹿云 ALLRIGHT RESERVED</p>
				<p>粤ICP备 11082739号</p>
			</div>
		</div>
	</div>
	<script src="/js/libs/jquery.maskedinput.min.js"></script>
	<script type="text/javascript">
	    function getCode(obj) {
			obj.src = '/code?_=' + new Date().getTime();
		}
		if(top.location.href.indexOf("from") === -1) {
            if (top.location.href !== location.href) {
                top.location.href = "/login?from=" + encodeURIComponent(location.href);
            }
        }else if(utils_get_param("from") != null){
			$("#fromPageInput").val(utils_get_param("from"));
		}
	</script>
</body>
</html>