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
            <!-- 弹出框 -->
			<#include "/common/model.ftl" />
            <div class="animated fadeIn">
                <div class="card">
                    <div class="card-block">
                        <!-- 功能操作区 -->
                        <div class="row mb-1">
                            <div class="col-sm-2">
                                <!--<button type="button" class="btn btn-primary" onclick="showModal('savePage')">添加</button>
                                --><button type="button" class="btn btn-primary" onclick="location.href='listPage'">返回列表查看</button>
                            </div>
                            <div class="col-sm-10">
                                <form id="searchform" action="calendarPage" method="get">
                                    <script type="text/javascript">
                                        $(document).ready(function(){
                                            $(".query-control").change(function(){
                                                document.getElementById("input-pageNum").value=1;
                                            });
                                        });
                                    </script>

                                    <div class="animated fadeIn p-0 clearfix">
                                        <div class="row col-md-12 p-0 clearfix">
                                            <div class="row col-md-4">
                                                <label for="busLine" style="padding-top:3px">机组车线路</label>
                                                <div class="col-sm-8">
                                                <#if busList?exists>
                                                    <select class="form-control" name="busId" id="busIdSelect" onchange="$('#searchform').submit()">
                                                    <#list busList as item>
                                                        <option value="${item.id!}" ${(query.busId?exists && (item.id == query.busId))?string("selected='selected'","")}>${item.busLine!}</option>
                                                    </#list>
                                                    </select>
                                                <#else>
                                                    <input type="text" class="form-control" name="busId" value="" />
                                                </#if>
                                                </div>
                                            </div>

                                            <input type="submit" class="btn btn btn-success" style="float: right;" value="查询">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <i class="icon-calendar"></i> 机组车排班信息
                        <div class="card-actions">
                            <a href="#">
                                <small class="text-muted">X</small>
                            </a>
                        </div>
                    </div>
                    <div class="card-block">
                        <div id="calendar"></div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<!-- footer	-->
	<#include "/common/footer.ftl" />

<!-- Plugins and scripts required by this views -->
<script src="/js/libs/moment.min.js"></script>
<script src="/js/libs/fullcalendar.min.js"></script>
<script src="/js/libs/gcal.js"></script>
<script src="/js/calendar-locale-all.js"></script>


<!-- Custom scripts required by this view -->
<script>
    //格式化日期
    Date.prototype.dhFormat = function (fmt) {
        var o = {
            "y+": this.getFullYear(),
            "M+": this.getMonth() + 1,                 //月份
            "d+": this.getDate(),                    //日
            "h+": this.getHours(),                   //小时
            "m+": this.getMinutes(),                 //分
            "s+": this.getSeconds(),                 //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S+": this.getMilliseconds()             //毫秒
        };
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(fmt)){
                if(k == "y+"){
                    fmt = fmt.replace(RegExp.$1, ("" + o[k]).substr(4 - RegExp.$1.length));
                }
                else if(k=="S+"){
                    var lens = RegExp.$1.length;
                    lens = lens==1?3:lens;
                    fmt = fmt.replace(RegExp.$1, ("00" + o[k]).substr(("" + o[k]).length - 1,lens));
                }
                else{
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
                }
            }
        }
        return fmt;
    }

    var d = new Date();
    var busList = [
            <#list busList as item>
                { id : ${item.id!}, line:'${item.busLine!}' },
            </#list>
    ];
    function getBusColor(id){
        for(i=0;i<busList.length;i++){
            if(busList[i].id == id){
                return busList[i].color;
            }
        }
        return colors[0];
    }
    var colors = ['#75FF33','#DBFF33','#FFBD33','#33FF57','#33FFBD'];
    for(i=0;i<busList.length;i++){
            var q = (i % colors.length);
            busList[i].color = colors[q];
    }
    var todayDate = d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();
    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,basicWeek,basicDay,listMonth'
        },
        dayClick: function(date, jsEvent, view) {
            console.log(date);
            var t = new Date(date);
            showModal("savePage?busId="+$("#busIdSelect").val()+"&schDate="+t.dhFormat("yyyy-MM-dd"));
        },
        eventClick: function(calEvent, jsEvent, view) {

            console.log('Event: ' + calEvent.title);
            console.log('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
            console.log('View: ' + view.name);
            showModal("updatePage?id="+calEvent.saveId);
            // change the border color just for fun
            //$(this).css('border-color', 'yellow');

        },
        locale:'zh-cn',
        defaultDate: todayDate,
        editable: true,
        eventLimit: true, // allow "more" link when too many events
        events: [
            <#list ret.model.list as item>
            { saveId:${item.id}, editable:false, color : getBusColor(${item.busId}),  title : '线路${item.busLine!} - ${item.driverName!}' , start:'${(item.schDate)?string("yyyy-MM-dd")}'},
            </#list>
        ]
    });
    /**
     * {
                title: 'All Day Event',
                start: '2017-12-13'
            },
     {
         title: 'Long Event',
         start: '2016-01-07',
         end: '2016-01-10'
     },
     {
         id: 999,
         title: 'Repeating Event',
         start: '2016-01-09T16:00:00'
     },
     {
         id: 999,
         title: 'Repeating Event',
         start: '2016-01-16T16:00:00'
     },

     {
         title: 'Meeting',
         start: '2016-01-12T10:30:00',
         end: '2016-01-12T12:30:00'
     },
     {
         title: 'Lunch',
         start: '2016-01-12T12:00:00'
     },
     {
         title: 'Meeting',
         start: '2016-01-12T14:30:00'
     },
     {
         title: 'Happy Hour',
         start: '2016-01-12T17:30:00'
     },
     {
         title: 'Dinner',
         start: '2016-01-12T20:00:00'
     },
     {
         title: 'Birthday Party',
         start: '2016-01-13T07:00:00'
     },
     {
         title: 'Click for Google',
         url: 'http://google.com/',
         start: '2016-01-28'
     }
     *
     * */
</script>
</body>

</html>
