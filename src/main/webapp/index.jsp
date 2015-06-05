<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <script type="text/javascript">


        function check(){
            if (!$('#username').val()=="")
            {
                ;
            }
            else
            {
                alert("please type name");
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
            if (!$('#phone').val()=="")
            {
                ;
            }
            else
            {
                alert("please type phone");
                return false;
            }
            if (/^[0-9-]{11,20}$/.test($('#phone').val()))
            {
                ;
            }
            else
            {
                alert("please input 11 phone number");
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
            <label for="username" class="sr-only">Username</label>
            <input type="text" name="username" id="username" class="form-control" placeholder="Name" required autofocus><br>
            <select class="form-control" name="department">
                <option>项目组</option>
                <option>Epic</option>
                <option>CRM</option>
                <option>Pulse</option>
                <option>Ratchet</option>
                <option>Web Bench</option>
                <option>HR</option>
            </select><br>
            <select class="form-control" name="type">
                <option>请假类型</option>
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
            <label for="phone" class="sr-only">phone</label>
            <input type="text" name="phone" id="phone" class="form-control" placeholder="Contact Phone?" required autofocus><br>

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