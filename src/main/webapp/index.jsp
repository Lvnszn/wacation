<html>
<head>
    <script type="text/javascript">
        function checkUsername() {
            if (/^[A-Za-z.]+$/.test($('#username').val()))
            {
                return true;
            }
            else
            {
                alert("error, please input english");
                $('#username').focus();
            }
        }
    </script>
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>

<body>
    <div class="container">

        <form class="form-signin" action="${pageContext.request.contextPath}/Demo" method="post">
            <h2 class="form-signin-heading">Vacation</h2>
            <label for="username" class="sr-only">Username</label>
            <input type="text" name="username" id="username" onblur="checkUsername(this)" class="form-control" placeholder="Username In English: Xiaoming" required autofocus><br>
            <select class="form-control" name="department">
                <option>Juni</option>
                <option>Angelo</option>
                <option>William</option>
                <option>Alber</option>
                <option>Dean</option>
            </select><br>
            <select class="form-control" name="type">
                <option>0</option>
                <option>e</option>
                <option>X</option>
                <option>0</option>
                <option>0</option>
            </select><br>
            <div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date Start</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" name="start" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input type="hidden" id="dtp_input2" value="" />
            </div><br>
            <div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date End</label>
                <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input3" data-link-format="yyyy-mm-dd">
                    <input class="form-control" name="end" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input type="hidden" id="dtp_input3" value="" />
            </div><br>

            <label for="half" class="sr-only">other</label>
            <input type="text" name="other" id="half" class="form-control" placeholder="How many days?" required autofocus><br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Apply</button>
        </form>

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