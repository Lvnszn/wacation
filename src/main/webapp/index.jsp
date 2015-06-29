<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <style type="text/css">
        #alertMsg {
            display: none;
            width: 400px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 1px 1px 10px black;
            padding: 10px;
            font-size: 12px;
            position: absolute;
            text-align: center;
            background: #fff;
            z-index: 100000;
        }

        #alertMsg_info {
            padding: 2px 15px;
            line-height: 1.6em;
            text-align: left;
        }

        #alertMsg_btn1, #alertMsg_btn2 {
            display: inline-block;
            padding-left: 3px;
            color: #000000;
            font-size: 12px;
            text-decoration: none;
            margin-right: 10px;
            cursor: pointer;
        }

        #alertMsg_btn1 cite, #alertMsg_btn2 cite {
            line-height: 24px;
            display: inline-block;
            padding: 0 13px 0 10px;
            font-style: normal;
        }

    </style>
    <script type="text/javascript">

        function days(mon,day){
            var m,d;
            d=parseInt(day);
            switch (mon){
                case 'January':
                    m=0;
                    break;
                case 'February':
                    m=31;
                    break;
                case 'March':
                    m=58;
                    break;
                case 'April':
                    m=89;
                    break;
                case 'May':
                    m=119;
                    break;
                case 'June':
                    m=150;
                    break;
                case 'July':
                    m=181;
                    break;
                case 'August':
                    m=212;
                    break;
                case 'September':
                    m=242;
                    break;
                case 'October':
                    m=273;
                    break;
                case 'November':
                    m=304;
                    break;
                case 'December':
                    m=334;
                    break;
            }
            return m+d;
        }

        function day(date){
            var day = date.split(" ");
            return day[0];
        }

        function mon(date){
            var day = date.split(" ");
            return day[1];
        }

        function check(){
            if ($('#username').val()!="Staff")
            {
                ;
            }
            else
            {
                alert("please choose name");
                return false;
            }
            if ($('#start').val()!="")
            {
                ;
            }
            else
            {
                alert("please type start time");
                return false;
            }
            if ($('#end').val()!="")
            {
                var startMon = mon($('#start').val());
                var endMon = mon($('#end').val());
                var startDay = day($('#start').val());
                var endDay = day($('#end').val());

                var start = days(startMon,startDay);
                var end = days(endMon,endDay);
                if(start <= end && startMon==endMon)
                    ;
                else if (start > end && startMon==endMon){
                    alert("end time must lager than start time");
                    return false;
                }
                else {
                    alert("start Month should equal end Month");
                    return false;
                }
            }
            else
            {
                alert("please type end time");
                return false;
            }
            if ($('#day').val()!="")
            {
                ;
            }
            else
            {
                alert("please type day");
                return false;
            }
            if (/^[0-9.]+$/.test($('#day').val()))
            {

                return true;
            }
            else
            {
                alert("please input number or point");
                return false;
            }



        }

        function alertMsg(msg, mode) { //mode为空，即只有一个确认按钮，mode为1时有确认和取消两个按钮
            msg = "<center>"+msg+"</center>"+ "<br><font style='color:orange; font-size: 12px'> Warning! When your leave span 2 months, please make two applyments, ie. you can only make leave apply in one month per apply</font>";
            mode = mode || 0;
            var top = document.body.scrollTop || document.documentElement.scrollTop;
            var isIe = (document.all) ? true : false;
            var isIE6 = isIe && !window.XMLHttpRequest;
            var sTop = document.documentElement.scrollTop || document.body.scrollTop;
            var sLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
            var winSize = function(){
                var xScroll, yScroll, windowWidth, windowHeight, pageWidth, pageHeight;
                // innerHeight获取的是可视窗口的高度，IE不支持此属性
                if (window.innerHeight && window.scrollMaxY) {
                    xScroll = document.body.scrollWidth;
                    yScroll = window.innerHeight + window.scrollMaxY;
                } else if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac
                    xScroll = document.body.scrollWidth;
                    yScroll = document.body.scrollHeight;
                } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
                    xScroll = document.body.offsetWidth;
                    yScroll = document.body.offsetHeight;
                }

                if (self.innerHeight) {    // all except Explorer
                    windowWidth = self.innerWidth;
                    windowHeight = self.innerHeight;
                } else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
                    windowWidth = document.documentElement.clientWidth;
                    windowHeight = document.documentElement.clientHeight;
                } else if (document.body) { // other Explorers
                    windowWidth = document.body.clientWidth;
                    windowHeight = document.body.clientHeight;
                }

                // for small pages with total height less then height of the viewport
                if (yScroll < windowHeight) {
                    pageHeight = windowHeight;
                } else {
                    pageHeight = yScroll;
                }

                // for small pages with total width less then width of the viewport
                if (xScroll < windowWidth) {
                    pageWidth = windowWidth;
                } else {
                    pageWidth = xScroll;
                }

                return{
                    'pageWidth':pageWidth,
                    'pageHeight':pageHeight,
                    'windowWidth':windowWidth,
                    'windowHeight':windowHeight
                }
            }();
            //alert(winSize.pageWidth);
            //遮罩层
            var styleStr = 'top:0;left:0;position:absolute;z-index:10000;background:#666;width:' + winSize.pageWidth + 'px;height:' +  (winSize.pageHeight + 30) + 'px;';
            styleStr += (isIe) ? "filter:alpha(opacity=80);" : "opacity:0.8;"; //遮罩层DIV
            var shadowDiv = document.createElement('div'); //添加阴影DIV
            shadowDiv.style.cssText = styleStr; //添加样式
            shadowDiv.id = "shadowDiv";
            //如果是IE6则创建IFRAME遮罩SELECT
            if (isIE6) {
                var maskIframe = document.createElement('iframe');
                maskIframe.style.cssText = 'width:' + winSize.pageWidth + 'px;height:' + (winSize.pageHeight + 30) + 'px;position:absolute;visibility:inherit;z-index:-1;filter:alpha(opacity=0);';
                maskIframe.frameborder = 0;
                maskIframe.src = "about:blank";
                shadowDiv.appendChild(maskIframe);
            }
            document.body.insertBefore(shadowDiv, document.body.firstChild); //遮罩层加入文档
            //弹出框
            var styleStr1 = 'display:block;position:fixed;_position:absolute;left:' + (winSize.windowWidth / 2 - 200) + 'px;top:' + (winSize.windowHeight / 2 - 150) + 'px;_top:' + (winSize.windowHeight / 2 + top - 150)+ 'px;'; //弹出框的位置
            var alertBox = document.createElement('div');
            alertBox.id = 'alertMsg';
            alertBox.style.cssText = styleStr1;
            //创建弹出框里面的内容P标签
            var alertMsg_info = document.createElement('P');
            alertMsg_info.id = 'alertMsg_info';
            alertMsg_info.innerHTML = msg;
            alertBox.appendChild(alertMsg_info);
            //创建按钮
            var btn1 = document.createElement('a');
            btn1.id = 'alertMsg_btn1';
            btn1.href = 'javas' + 'cript:void(0)';
            btn1.innerHTML = '<cite>ok</cite>';
            btn1.onclick = function () {
                if(check()) {
                    document.body.removeChild(alertBox);
                    document.body.removeChild(shadowDiv);
                    document.form.submit();
                    return true;
                }
                else{
                    document.body.removeChild(alertBox);
                    document.body.removeChild(shadowDiv);
                    return true;
                }

            };
            alertBox.appendChild(btn1);
            if (mode === 1) {
                var btn2 = document.createElement('a');
                btn2.id = 'alertMsg_btn2';
                btn2.href = 'javas' + 'cript:void(0)';
                btn2.innerHTML = '<cite>cancel</cite>';
                btn2.onclick = function () {
                    document.body.removeChild(alertBox);
                    document.body.removeChild(shadowDiv);
                    return false;
                };
                alertBox.appendChild(btn2);

            }
            document.body.appendChild(alertBox);

            return false;
        }

    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>

<body>
    <div class="container-fluid">
        <div class="row-fluid">
        <form class="form-signin" name="form" id="form" onsubmit="return alertMsg('Are you '+$('#username').val()+'?',1);" action="${pageContext.request.contextPath}/WechatVacation" method="post">
            <h2 class="form-signin-heading">Apply For Leave</h2>
            <select class="form-control" name="username" id="username">
                <option>Staff</option>
                <option>Albert Zhang</option>
                <option>Allen Li</option>
                <option>Angela Yao</option>
                <option>Annie Ling</option>
                <option>Carol Wang</option>
                <option>Colin Chen</option>
                <option>Cristina Wang</option>
                <option>Daisy Ding</option>
                <option>Dean Song</option>
                <option>Edith Sun</option>
                <option>Fisher Yu</option>
                <option>Gavin Zhang</option>
                <option>Iris Li</option>
                <option>Jack Zhou</option>
                <option>Jason Peng</option>
                <option>Jerry Gu</option>
                <option>Jessie Yu</option>
                <option>John Hao</option>
                <option>John Xu</option>
                <option>Juni Yang</option>
                <option>Michael Zhao</option>
                <option>Owen Xu</option>
                <option>Rosie Zhou</option>
                <option>Sandy Chen</option>
                <option>Scandy Shen</option>
                <option>Simon Chen</option>
                <option>Sky Wang</option>
                <option>Summer Song</option>
                <option>Ward Miao</option>
                <option>William Wu</option>
            </select><br>
            <select class="form-control" name="type">
                <option>Leave Type</option>
                <option>Annual Leave</option>
                <option>Sick Leave</option>
                <option>Paternity Leave</option>
                <option>Condolence Leave</option>
                <option>Maternity Leave</option>
                <option>Marriage Leave</option>
                <option>Unpaid Leave</option>
            </select><br>
            <div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date Start</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" id="start" name="start" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input type="hidden" id="dtp_input2" value="" />
            </div><br>
            <div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date End</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input3" data-link-format="yyyy-mm-dd">
                    <input class="form-control" id="end" name="end" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input type="hidden" id="dtp_input3" value="" />
            </div><br>

            <label for="day" class="sr-only">other</label>
            <input type="text" name="other" id="day" class="form-control" placeholder="How many days?" required autofocus><br>

            <label for="reason" class="sr-only">phone</label>
            <textarea name="reason" id="reason" class="form-control" placeholder="Reason" ></textarea><br>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Apply</button>
        </form>
    </div>
    </div> <!-- /container -->


<script src="jquery/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="js/locales/bootstrap-datetimepicker.ccs.js"></script>
    <script type="text/javascript">
        $('.form_date').datetimepicker({
            language:  'cs',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        });

    </script>

</body>
</html>