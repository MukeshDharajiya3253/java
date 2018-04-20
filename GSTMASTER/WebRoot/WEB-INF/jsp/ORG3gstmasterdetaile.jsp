<%@ taglib uri="/WEB-INF/strutslib/c-1_0-rt.tld" prefix="s"%>
<html style="overflow: hidden;"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tata Sky</title>

        <!-- Vendor CSS -->
               

        
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        
   <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">

            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        <style type="text/css">
		.imgclass{
			border:1px solid #EEE; padding:3px; margin-bottom:10px;
		}
		.imgclass:hover{
			background-color:#EEE;
		}
		</style>
		<script type="text/javascript">
		function deletedata(gstinid)
		{
			//alert(gstinid);
			document.getElementById("gstinid").value=gstinid;
			document.myform.action="gstin_deleteGstinClient";
			document.myform.submit();
		
		}
		
		function update(gstinid)
		{
			//alert(gstinid);
			document.getElementById("gstinid").value=gstinid;
			document.myform.action="gstin_getUpdatedata";
			document.myform.submit();
		}
		
		
		</script>
    </head>
    <body>
        <header id="header">
            <ul class="header-inner">
                <li id="menu-trigger" data-trigger="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>
            
                <li class="logo "><!--hidden-xs-->
                    <a href="#">Tata Sky</a>
                </li>
                
                <li class="pull-right">
                <ul class="top-menu">
                    <li id="toggle-width">
                        <div class="toggle-switch">
                            <input id="tw-switch" type="checkbox" hidden="hidden">
                            <label for="tw-switch" class="ts-helper"></label>
                        </div>
                    </li>
                   

                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-settings" href="#"></a>
                        <ul class="dropdown-menu dm-icon pull-right">
                           
                            <li>
                                <a href="#"><i class="zmdi zmdi-face"></i>  Profile</a>
                            </li>

                            <li>
                                <a href="#"><i class="zmdi zmdi-settings"></i>  Settings</a>
                            </li>
                            <li>
                                <a href="login.html"><i class="zmdi zmdi-arrow-out"></i>Logout</a>
                            </li>
                        </ul>
                    </li>
                 
                
            </ul>
            
            <!-- Top Search Content -->
            <div id="top-search-wrap">
                <input type="text">
                <i id="top-search-close">�</i>
            </div>
        </li></ul></header>
        
        <section id="main">
            <aside id="sidebar">
                <div class="sidebar-inner c-overflow" tabindex="1" style="overflow: hidden; outline: none;">
                   

                    <!--menu start-->
			<ul class="main-menu"><li class="sub-menu active toggled" id="masters"><a href=""><i class="zmdi zmdi-collection-text"></i> Masters</a><ul><li 				style="background-color: rgb(238, 238, 238);" class="active" id="city"><a href="city.html">City Master</a></li></ul></li></ul>

                    <!-- menu ends-->
                </div>
            <div id="ascrail2002" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: 5; cursor: default; position: absolute; top: 0px; left: 263px; height: 434px; touch-action: none; display: none;"><div class="nicescroll-cursors" style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px; touch-action: none;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: 5; top: 429px; left: 0px; position: absolute; cursor: default; display: none;"><div class="nicescroll-cursors" style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px;"></div></div></aside>
            
                       
            
            <section id="content">
                
                    
                    
                    <div class="clearfix" style="margin-bottom:10px;">
                        <div class="btn-demo pull-right">
                                <a href="gstin_gstinMaster" class="btn btn-primary">ADD NEW </a>
                            </div>
                    </div>
                    
                    
                    
                    <div class="card animated ">
                        
                        <div class="card-body card-padding">
                        	
                        <div class="table-responsive clearfix ">
						        
                    </div>
                <h2>Client Brand GSTN</h2>
                               <form name="myform" id="myform" method="post"> 
                               <input type="hidden" id="gstinid" name="gstinid" value="">
                 <table class="table table-bordered" style="text-align:center;">
                    <tr>
                        <td>GSTIN ID</td>
                        <td>GSTIN NAME</td>
                        <td>GSTI NO</td>
                        <td>ADDRESS</td>
                        <td>PINCODE</td>
                        <td>COUNTRY</td>
                        <td>STATE</td>
                        <td>CITY</td>
                        <td>ACTIVE</td>
                        <td colspan="2">ACTION</td>
                    </tr>
                    <s:forEach var="row" items="${getDataList}">
                      <tr>
                        <td>${row[0]}</td>
                        <td>${row[1]}</td>
                        <td>${row[2]}</td>
                        <td>${row[3]}</td>
                        <td>${row[4]}</td>
                        <td>${row[5]}</td>
                        <td>${row[6]}</td>
                        <td>${row[7]}</td>
   
                     
                         <s:if test="${row[8] eq 'Y'.charAt(0)}">  <td>YES</td></s:if>
                         
                        
                        
                         <s:if test="${row[8] eq 'N'.charAt(0)}"> <td>NO</td> </s:if>
                         
                        			
                         
                         				
                        
                      
                        
                        
                  
                        <td><a href="#" onclick="update('${row[0]}')">Update</a></td>
                        <td><a href="#" onclick="deletedata('${row[0]}')">Delete</a></td>
                     </tr>
                    		 </s:forEach>
                            </table>
                            </form>
                        </div>
						
                        </div>
                    
                 
                        
<!-- Add Record Form start-->                    
                    
     
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                    
                    
                           

            </section>
        </section>
        
        <!--footer id="footer">
            Copyright &copy; 2015 Emerging Five
            
            <ul class="f-menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </footer-->
        
      
        
        <!-- Javascript Libraries -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
       
        <script src="vendors/bower_components/jquery.nicescroll/jquery.nicescroll.min.js"></script>
   
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
      
        
                <script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>

        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        
        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>

                <!-- Data Table -->
        <script type="text/javascript">
            $(document).ready(function(){
              
               
            });
        </script>
        
    

<div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: auto; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; touch-action: none; display: block; opacity: 0;"><div class="nicescroll-cursors" style="position: relative; top: 99px; float: right; width: 5px; height: 400px; background-color: rgba(0, 0, 0, 0.3); border: 0px; background-clip: padding-box; border-radius: 0px; touch-action: none;"></div></div><div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: auto; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;"><div class="nicescroll-cursors" style="position: absolute; top: 0px; height: 5px; width: 1600px; background-color: rgba(0, 0, 0, 0.3); border: 0px; background-clip: padding-box; border-radius: 0px;"></div></div><div id="ascrail2001" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: auto; cursor: default; position: absolute; top: 158px; left: 1339px; height: 265px; touch-action: none; display: none; opacity: 0;"><div class="nicescroll-cursors" style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px; touch-action: none;"></div></div><div id="ascrail2001-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: auto; top: 418px; left: 256px; position: absolute; cursor: default; display: none; opacity: 0;"><div class="nicescroll-cursors" style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px; left: 0px;"></div></div><div><div class="sweet-overlay" tabindex="-1"></div><div class="sweet-alert" tabindex="-1"><div class="icon error"><span class="x-mark"><span class="line left"></span><span class="line right"></span></span></div><div class="icon warning"> <span class="body"></span> <span class="dot"></span> </div> <div class="icon info"></div> <div class="icon success"> <span class="line tip"></span> <span class="line long"></span> <div class="placeholder"></div> <div class="fix"></div> </div> <div class="icon custom"></div> <h2>Title</h2><p class="lead text-muted">Text</p><p><button class="cancel btn btn-lg" tabindex="2">Cancel</button> <button class="confirm btn btn-lg" tabindex="1">OK</button></p></div></div></body></html>