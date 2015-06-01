<html>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

    <div class="container">

        <form class="form-signin" action="${pageContext.request.contextPath}/Demo" method="post">
            <h2 class="form-signin-heading">Please</h2>
            <i class="icon-user"></i>
            <label for="inputEmail" class="sr-only">Username</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
            <select multiple="multiple" name="department">
                <option>0</option>
                <option>0</option>
                <option>0</option>
                <option>0</option>
                <option>0</option>
            </select>
            <select multiple="multiple" name="type">
                <option>0</option>
                <option>0</option>
                <option>0</option>
                <option>0</option>
                <option>0</option>
            </select>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Apply</button>
        </form>

    </div> <!-- /container -->



<script src="js/bootstrap.min.js"></script>
<script src="jquery/jquery-1.8.3.min.js"></script>
</html>