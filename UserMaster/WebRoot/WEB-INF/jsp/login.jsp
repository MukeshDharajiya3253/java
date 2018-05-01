<!DOCTYPE html>
    <!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>
        
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
            
                    <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">

        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        <script language="javascript">
			function login(){
							
						
						document.loginForm.action="login_logincheck";
						document.loginForm.submit;
					
					
/*The username or password you entered is incorrect*/
			}
		</script>
    </head>
    
    <body class="login-content">

        <!-- Login -->
<form name="loginForm" method="post">
        <div class="lc-block toggled" id="l-login">
 <img src="img/logo.png" />
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                <div class="fg-line">
                    <input type="text" class="form-control" placeholder="Username" name="userloginname" id="userloginname">
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-key"></i></span>
                <div class="fg-line">
                    <input type="password" class="form-control" placeholder="Password" name="userpassword" id="userpassword">
                </div>
            </div>
            
            <div class="clearfix">
            
            <%-- ${sessionScope.error} --%>
            
            </div>
            
            <!--div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Keep me signed in
                </label>
            </div-->
            
            <!-- <a href="#" class="btn btn-login btn-danger btn-float" onclick="login();"><i class="zmdi zmdi-arrow-forward"></i></a> -->
            
            <!--ul class="login-navigation">
                <li data-block="#l-register" class="bgm-red">Register</li>
                <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
            </ul-->
            <input type="submit" class="btn btn-login btn-danger btn-float" onclick="login();"><i class="zmdi zmdi-arrow-forward"></i>
        </div>
       </form> 

        <!-- Javascript Libraries -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
                <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>

        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="js/functions.js"></script>
        
    </body>
</html>