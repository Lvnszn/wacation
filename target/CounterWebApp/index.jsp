<html>
<head>
    <title></title>
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <link href="./css/flat-ui.min.css" rel="stylesheet" media="screen">
    <link href="./css/flat-ui.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/Demo" class="form-horizontal" method="post">
        <fieldset>


            <div class="row">
                <div class="col-md-12">
                    <div class="form-group form-group-lg">
                        <label class="col-sm-2 control-label" for="username">Username</label>
                        <div class="col-sm-10">
                            <input class="form-control" name="username" type="text" id="username" placeholder="Large input">
                        </div>
                    </div>

                         <div class="form-group">
                            <select data-toggle="select" name="department" class="form-control select select-default select-lg">
                                <optgroup label="Profile">
                                    <option value="0">defult</option>
                                    <option value="1">0</option>
                                    <option value="2">1</option>
                                    <option value="3">2</option>
                                    <option value="4" class="highlighted">3</option>
                                </optgroup>
                            </select>
                        </div></br>

                    <div class="form-group">
                        <select data-toggle="select" name="type" class="form-control select select-default select-lg">
                            <optgroup label="Profile">
                                <option value="0">defult</option>
                                <option value="1">0</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4" class="highlighted">3</option>
                            </optgroup>
                        </select>
                    </div>
                    </div>
                </div>


            <div class="control-group">
                <label class="control-label">DateTime Start</label>
                <div class="controls input-append date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    <input size="16" name="start" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
                <input type="hidden" id="dtp_input1" value="" /><br/>
            </div>
            <div class="control-group">
                <label class="control-label">DateTime End</label>
                <div class="controls input-append date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input2">
                    <input size="16" name="end" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
                <input type="hidden" id="dtp_input2" value="" /><br/>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </fieldset>
    </form>
</div>
<script type="text/javascript" src="./jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="./js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript" src="./js/application.js" charset="UTF-8"></script>
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
</body>
</html>
