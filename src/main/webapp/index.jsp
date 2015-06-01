<html charset="UTF-8">

<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <div class="container">

        <form class="form-signin" action="${pageContext.request.contextPath}/Demo" method="post">
            <h2 class="form-signin-heading">Please</h2>
            <i class="icon-user"></i>
            <label for="inputEmail" class="sr-only">Username</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
            <select class="form-control" name="department">
                <option>Juni</option>
                <option>Angelo</option>
                <option>William</option>
                <option>Alber</option>
                <option>Dean</option>
            </select>
            <select class="form-control" name="type">
                <option>0</option>
                <option>病</option>
                <option>X</option>
                <option>0</option>
                <option>0</option>
            </select>
            <div class="controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                <input size="16" type="text" value="" readonly>
                <span class="add-on"><i class="icon-remove"></i></span>
                <span class="add-on"><i class="icon-th"></i></span>
            </div>
            <input type="hidden" id="dtp_input2" value="" /><br/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Apply</button>
        </form>

    </div> <!-- /container -->



<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script src="jquery/jquery-1.8.3.min.js" charset="UTF-8" ></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
    $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 1,
        minView: 0,
        maxView: 1,
        forceParse: 0
    });
</script>
</html>