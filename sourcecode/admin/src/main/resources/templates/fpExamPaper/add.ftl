<!DOCTYPE html>
<html lang="en">
<head>
<title>小鹿云</title>
<!-- head  -->
<#include "/common/head.ftl" />
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
	<!-- header -->
	<#include "/common/header.ftl" />
	<div class="app-body">
		<!-- sidebar -->
		<#include "/common/sidebar.ftl" />
		<!-- content -->
		<main class="main">
		<div class="container-fluid">
			<div class="animated fadeIn">
                <div id="prePage-display"></div>
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<form id="table_form" action="#">
								<div class="card-block">
                                    <div class="form-actions">
                                        <button type="button" class="btn btn-success" onclick="call_save()">保存</button>
                                        <button type="button" class="btn btn-primary" onclick="history.go(-1)">返回</button>
                                    </div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		</main>
	</div>
	<!-- footer	-->
	<#include "/common/footer.ftl" />
	<script>
        dh_params = {
            cols:[
                {name:'考试类型',col:'examDefineId',
					link:{ // 这个是链接参数
                    	obj:'fpExamDefine', // 对应的OBJ
						col:'id', // 填入这个列(examDefineId) 的 对应的OBJ的某一栏(fpExamDefine/Id)
                        displayCol:'examName', // 显示的目标项目的列
						method:'key',  // 查找方式 key->调用getByKey
						keyParam:'defineId', // 传入的key参数（URL/Get）
						preDisp: 0 // 是否要显示在顶部
                	}
                },
			    {name:'题库名称',col:'name'}
			    ],
			obj:'fpExamQuestionBank',
			name:'题目维护'
        };
        // 其实可以通过JSON分析读入
        dh_init(dh_params);
	</script>
</body>

</html>