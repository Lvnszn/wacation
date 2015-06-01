<html>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="assets/css/docs.css" rel="stylesheet">
<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">

    <form class=".form-horizontal" action="${pageContext.request.contextPath}/Demo" method="post">
        <div class="control-group">
            <i class="icon-user"></i>
            <label class="control-label" for="inputEmail">Username</label>
            <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="demo">department</label>
            <select id="demo" multiple="multiple">
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>
        <div class="control-group">
            <label class="control-label" for="demo2">type</label>
            <select id="demo2" multiple="multiple">
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
        </div>

        <p>
            <button class="btn" type="submit">Default button</button>
        </p>
    </form>

</html>