<div class="sidebar">
	<nav class="sidebar-nav">
		<ul class="nav">
			<#list userMenuList as menu> <#if menu.parentId==0>
			<li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="${menu.url}">${menu.name}</a>
				<ul class="nav-dropdown-items">
					<#list userMenuList as subMenu> <#if subMenu.parentId=menu.id>
					<li class="nav-item"><a class="nav-link" href="${subMenu.url}"><i class="icon-note"></i>${subMenu.name}</a></li>
					</#if></#list>
				</ul></li>
			</#if> </#list>
			
			<!-- <li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 系统管理</a>
				<ul class="nav-dropdown-items">
					<li class="nav-item"><a class="nav-link" href="/admin/sysRole/listPage"><i class="icon-note"></i> 角色管理</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/sysUser/listPage"><i class="icon-note"></i> 人员管理</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/sysAtachment/listPage"><i class="icon-note"></i> 附件查询</a></li>
				</ul></li>
			<li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 考试管理</a>
				<ul class="nav-dropdown-items">
					<li class="nav-item"><a class="nav-link" href="/admin/fpExamDefine/listPage"><i class="icon-note"></i> 考试类型管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/fpExamQuestionBank/listPage"><i class="icon-note"></i> 题库管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/fpExamPaper/listPage"><i class="icon-note"></i> 试卷管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/fpExamAnswer/listPage"><i class="icon-note"></i> 考试结果查询</a></li>
				</ul></li>
            <li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 机组车管理</a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item"><a class="nav-link" href="/admin/gdCrewBusdriver/listPage"><i class="icon-note"></i> 机组车司机</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/gdCrewBus/listPage"><i class="icon-note"></i> 机组车</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/gdCrewBusStation/listPage"><i class="icon-note"></i> 线路维护</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/gdCrewBusReserve/listPage"><i class="icon-note"></i> 预订机组车</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/gdCrewBusSchedule/listPage"><i class="icon-note"></i> 排班信息维护</a></li>
                </ul></li>
            <li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 消息管理</a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item"><a class="nav-link" href="/admin/fpMessage/listPage"><i class="icon-note"></i> 消息管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/fpMsgReceiver/listPage"><i class="icon-note"></i> 消息接收人</a></li>
                </ul></li>
            <li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 通知和公告</a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item"><a class="nav-link" href="/admin/aoComNotice/addPage"><i class="icon-note"></i> 发布公告</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/aoComNotice/listPage"><i class="icon-note"></i> 公告列表</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/fpNoticeRead/listPage"><i class="icon-note"></i> 公告阅读情况</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/aoFileLearning/listPage"><i class="icon-note"></i> 文件管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/fpFileLearningRead/listPage"><i class="icon-note"></i> 文件阅读情况</a></li>
                </ul></li>
            <li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 外站信息</a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item"><a class="nav-link" href="/admin/fpOutStation/listPage"><i class="icon-note"></i> 外站维护</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/aoAirport/listPage"><i class="icon-note"></i> 机场信息</a></li>
                </ul></li>
			<li class="nav-item nav-dropdown"><a class="nav-link nav-dropdown-toggle" href="#"> 日志管理</a>
				<ul class="nav-dropdown-items">
					<li class="nav-item"><a class="nav-link" href="/admin/sysVisitLog/listPage"><i class="icon-note"></i> 日志信息查询</a></li>
				</ul></li> -->
				
		</ul>
	</nav>
</div>