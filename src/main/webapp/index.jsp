<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <script type="text/javascript">


        function check(){
            if (!$('#username').val()=="staff")
            {
                ;
            }
            else
            {
                alert("please choose name");
                return false;
            }
            if (!$('#start').val()=="")
            {
                ;
            }
            else
            {
                alert("please type start time");
                return false;
            }
            if (!$('#end').val()=="")
            {
                ;
            }
            else
            {
                alert("please type end time");
                return false;
            }
            if (!$('#day').val()=="")
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


    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>

<body>
    <div class="container-fluid">
        <div class="row-fluid">
        <form class="form-signin" name="fom" onsubmit="return check();" action="${pageContext.request.contextPath}/Demo" method="post">
            <h2 class="form-signin-heading">Apply For Leave</h2>
            <select class="form-control" name="username" id="username">
                <option>Staff</option>
                <option>Angela Yao</option>
                <option>Angelo Chen</option>
                <option>Albert Zhang</option>
                <option>Allen Li</option>
                <option>Annie Ling</option>
                <option>Carol Wang</option>
                <option>Colin Chen</option>
                <option>Cristina Wang</option>
                <option>Dean Song</option>
                <option>Daisy Ding</option>
                <option>Edith Sun</option>
                <option>Fisher Yu</option>
                <option>Gavin Zhang</option>
                <option>Iris Li</option>
                <option>Jason Peng</option>
                <option>Jerry Gu</option>
                <option>Jessie Yu</option>
                <option>John Hao</option>
                <option>Jack Zhou</option>
                <option>Jay Zhang</option>
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