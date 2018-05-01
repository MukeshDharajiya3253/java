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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

            
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
		
		function saveuser()
		{
		//var username,userloginname,usertype,userpassword,usercontact,userphoto,stateid,cityid,useraddress;
			var email = document.getElementById("userloginname");
			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			var username = $("#username").val();
			var userpassword = $("#userpassword").val();
			var usercontact = $("#usercontact").val();
			var useraddress = $("#useraddress").val();
			if(username=="")
			{
				alert("Plase Enter Username");
			}
			 else if ((!filter.test(email.value)))
			{
				alert("Please Enter Valide Email id");
			}
			 else if (userpassword=="")
			{
				alert("Opps.. Please Enter the password......");
			}
			 else if (usercontact=="")
			{
				alert("Please Enter the Contact Number");
			}
			 else if (useraddress=="")
			{
				alert("Please Enter the Adress");
			}
			else
			{
			document.myform.action="usermaster_saveuser";
			document.myform.submit();
			}
		}
		
		function citylist(stateid)
		{
		//alert("stateid:---"+stateid);
		if(stateid=="")
		{
		
		}
		else
		{
			$.ajax({
			url:"usermaster_getCityList",
			data:{paramid:stateid},
			type:"post",
			dataType:"html",
			success:function(data)
			{
				$("#cityid").html(data).selectpicker('refresh');
			},
			error:function(request,textStatus,errorThrown)
			{
			
				alert(errorThrown);
				
			},
			});
		}
		}
		
		function DeleteUser(userid)
		{
			alert(userid);
			//document.getElementById("#userid").value=userid;
			$("#userid").val(userid);
			document.myform.action="usermaster_deleteUser";
			document.myform.submit();
		}
		function update(username,usertype,userloginname,useraddress,userpassword,usercontact,cityid,stateid,active,userid)
		{
			$("#updatebtn").show();
			$("#savebtn").hide();
			$("#username").val(username);
			$("#usertype").val(usertype);
			$("#usertype").selectpicker('refresh');
			$("#userloginname").attr("disabled", "disabled");
			$("#userloginname").val(userloginname);
			$("#useraddress").val(useraddress);
			$("#userpassword").val(userpassword);
			$("#usercontact").val(usercontact);
			$("#cityid").val(cityid); 
			$("#cityid").selectpicker('refresh');
			$("#stateid").val(stateid);
			$("#stateid").selectpicker('refresh');
			$("#active").val(active);
			$("#userid").val(userid);
			$("#add_record").modal('show');
			
		}
		
		function adduser()
		{
			
			$("#updatebtn").hide();
			$("#savebtn").show();
			$("#username").val("");
			$("#usertype").val("");
			$("#userloginname").removeAttr("disabled"); 
			$("#usertype").selectpicker('refresh');
			$("#userloginname").val("");
			$("#useraddress").val("");
			$("#userpassword").val("");
			$("#usercontact").val("");
			$("#cityid").val("");
			$("#cityid").selectpicker('refresh');
			$("#stateid").val("");
			$("#stateid").selectpicker('refresh');
			$("#add_record").modal('show');
		
		}
		
		function updateUser()
		{
			var userid=document.getElementById("userid").value;
			alert("Update-Method-Execute:----"+"UserID:-----"+userid);
			document.myform.action="usermaster_updateUser";
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
                                <a href="#"><i class="zmdi zmdi-face"></i> ${sessionScope.USER}</a>
                            </li>

                            <li>
                                <a href="#"><i class="zmdi zmdi-settings"></i>  Settings</a>
                            </li>
                            <li>
                                <a href="login_lout"><i class="zmdi zmdi-arrow-out"></i>Logout</a>
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
        <form name="myform" id="myform" method="post">
       <input type="hidden" value="" name="userid" id="userid">
            <aside id="sidebar">
                <div class="sidebar-inner c-overflow" tabindex="1" style="overflow: hidden; outline: none;">
                   

                    <!--menu start-->
			<ul class="main-menu"><li class="sub-menu active toggled" id="masters"><a href=""><i class="zmdi zmdi-collection-text"></i> Masters</a><ul><li 				style="background-color: rgb(238, 238, 238);" class="active" id="city"><a href="city.html">City Master</a></li></ul></li></ul>

                    <!-- menu ends-->
                </div>
            <div id="ascrail2002" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: 5; cursor: default; position: absolute; top: 0px; left: 263px; height: 434px; touch-action: none; display: none;"><div class="nicescroll-cursors" style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px; touch-action: none;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: 5; top: 429px; left: 0px; position: absolute; cursor: default; display: none;"><div class="nicescroll-cursors" style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px;"></div></div></aside>
            
                       
            
            <section id="content">
                <div class="container">
                    
                    
                    <div class="clearfix" style="margin-bottom:10px;">
                        <div class="btn-demo pull-right">
                                <a href="#" data-toggle="modal" title="Add Record" onclick="adduser();" class="btn btn-primary waves-effect pull-right"><i class="zmdi zmdi-plus"></i></a>
                            </div>
                    </div>
                    
                    
                    
                    <div class="card animated ">
                        
                        <div class="card-body card-padding">
                        	
                        <div class="table-responsive clearfix ">
				  
                            <table class="table table-bordered">
                               
                                    <tr>
										
                                        <th>UserID</th>
                                        <th>UserType</th>
                                        <th>Username</th>
                                       <!--  <th>LoginName</th> -->
                                        <th>Email</th>
                                        <th>Address</th>
                                       <!--  <th>password</th> -->
                                        <th>Contact</th>
                                        <th>City</th>
                                        <th>State</th>
                                        <th>Active</th>
                                        <th colspan="2">Action</th>
                                        
                                       
                                    </tr>
                                
                                
                                    <s:forEach var="UserList" items="${usermasterlist}">
									<tr>
                                       <td>${UserList[0]}</td>
                                       <td>${UserList[1]}</td>
                                       <td>${UserList[2]}</td>
                                      <%--  <td>${UserList[3]}</td> --%>
                                       <td>${UserList[4]}</td>
                                       <td>${UserList[5]}</td>
                                       <%-- <td>${UserList[6]}</td> --%>
                                       <td>${UserList[7]}</td>
                                       <td>${UserList[8]}</td>
                                       <td>${UserList[9]}</td>
                                       <td>${UserList[10]}</td>
									   <td><a href="#" data-toggle="modal" id="edite"  class="btn btn-default waves-effect" onclick="update('${UserList[2]}','${UserList[1]}','${UserList[3]}','${UserList[5]}','${UserList[6]}','${UserList[7]}','${UserList[8]}','${UserList[9]}','${UserList[10]}','${UserList[0]}')"><i class="zmdi zmdi-edit"></i></a></td>
									   
									  <td> 	<a href="#" title="Delete Record" class="btn btn-danger waves-effect" onclick="DeleteUser('${UserList[0]}');"><i class="zmdi zmdi-delete"></i></a>
										</td>
                                    </tr>
                                    </s:forEach>
									
									
                            </table>
                        </div>
						
                        </div>
<!--                         <div id="data-table-selection-footer" class="bootgrid-footer container-fluid"><div class="row"><div class="col-sm-6"><ul class="pagination"><li class="first disabled" aria-disabled="true"><a href="#first" class="button"><i class="zmdi zmdi-more-horiz"></i></a></li><li class="prev disabled" aria-disabled="true"><a href="#prev" class="button"><i class="zmdi zmdi-chevron-left"></i></a></li><li class="page-1 active" aria-disabled="false" aria-selected="true"><a href="#1" class="button">1</a></li><li class="next disabled" aria-disabled="true"><a href="#next" class="button"><i class="zmdi zmdi-chevron-right"></i></a></li><li class="last disabled" aria-disabled="true"><a href="#last" class="button"><i class="zmdi zmdi-more-horiz"><i></i></i></a></li></ul></div><div class="col-sm-6 infoBar"><div class="infos">Showing 1 to 5 of 5 entries</div></div></div></div>
 -->                    </div>
                        
<!-- Add Record Form start-->                    
                    
<div class="modal fade" id="add_record" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    
                                        <div class="modal-header">
                                            <h4 class="modal-title">Add City</h4>
                                        </div>
<div class="modal-body"><!-- Model Body..... -->
                                        
                                        
          
                                              
                            <div class="row m-t-5">
                                <div class="col-md-6">
                                    <div class="form-group fg-line">
                                        <label for="exampleInputEmail1">User Name</label>
                                        <input type="text" class="form-control input-sm" id="username" name="username" placeholder="Enter Username">
                                    </div>
                                </div>
                                
                                
                                 <div class="col-md-6">
                                    <div class="form-group fg-line">
                                        <label for="exampleInputEmail1">User</label>
                                        <select name="usertype" id="usertype" class="selectpicker" data-live-search="true" required>
                                            <option selected value=""> - Select User Type - </option>
										      <option value="A">Admin</option>
                                             <option value="U">User</option>   
                                        </select>
                                
                                	</div>
                                </div>
                            </div>    
                            
                            
                               <div class="row m-t-5">
	                                <div class="col-md-6">
	                                    <div class="form-group fg-line">
	                                        <label for="exampleInputEmail1">Login Name</label>
	                                        <input type="text" class="form-control input-sm" id="userloginname" name="userloginname" placeholder="Enter LoginName">
	                                    </div>
	                                </div>
                                
                                 <div class="col-md-6">
                                     <div class="form-group fg-line">
                                        <label for="exampleInputEmail1">Password</label>
                                        <input type="text" class="form-control input-sm" id="userpassword" name="userpassword" placeholder="Enter Password">
                                    </div>
                                </div>
                            </div>   
                            
                            
                                <div class="row m-t-5">
                                        <div class="col-md-6">
                                            <div class="form-group fg-line">
                                                <label for="exampleInputEmail1">Contact No</label>
                                                <input type="text" class="form-control input-sm" id="usercontact" name="usercontact" placeholder="Enter Contact Number" maxlength="10" oninput="this.value=this.value.replace(/[^0-9]/g,'');">
                                            </div>
                                        </div>

                                         <div class="col-md-6">
                                             <div class="form-group fg-line">
                                                <label for="exampleInputEmail1">User Photo</label>
                                                <input type="text" class="form-control input-sm" id="userphoto" name="userphoto" placeholder="Enter UserPhoto">
                                            </div>
                                         </div>
                                </div>   
                                         
                                         
                                <div class="row m-t-5">
                                
                                        <div class="col-md-6">
                                        
                                            		 <div class="form-group fg-line">
                                            
					                                        <label for="exampleInputEmail1">State</label>
					                                        <select class="selectpicker" data-live-search="true" name="stateid" id="stateid" onchange="citylist(this.value);" required>
					                                        
					                                        <option selected>Select State</option>
													       	<s:forEach var="row" items="${statelist}">
													        <option value="${row[0]}">${row[1]}</option>
													        </s:forEach>    
					                                        </select>
                                
                                					</div>
                                        </div>

                                        <div class="col-md-6">
                                           
                                            <div class="form-group fg-line">
				                                    <label for="exampleInputEmail1">cityid</label>
				                                   <select class="selectpicker" data-live-search="true" name="cityid" id="cityid" required>
				                                       
				                                       <option value="">Select City</option>
																<s:forEach var="cols" items="${citylist}">
																	<option value="${cols[0]}">${cols[1]}</option>
																</s:forEach>
				                                        </select>
				                                        
				                                        
				                                         <%--  <select class="selectpicker" data-live-search="true" name="cityid" id="cityid">
				                                        <s:forEach var="citylist" items="${citylist}">
				                                        <option selected>Select city</option>
														<option value="${citylist[0]}">${citylist[1]}</option>
														</s:forEach>
				                                        </select> --%>
				                                        
                                
                                			</div>
                                			
                                        </div>
                                </div>   
                                         
                                         
                                              
                                <div class="form-group fg-line">
                                
                                
                                    <label for="exampleInputEmail1">Address</label>
                                    <textarea class="form-control" name="useraddress" id="useraddress" class="form-control input-sm" placeholder="Enter User Address"></textarea>
                                   
                                  
                                </div>
            
                                
                                
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value=""  name="active">
                                        <i class="input-helper"></i>
                                        Active
            
                                    </label>
                                
                                </div>
                             <!--button type="submit" class="btn btn-primary btn-sm m-t-10 waves-effect">Submit</button-->   
                        
                                            
                                            
</div> <!-- End Model Body..... -->
                                        
                                        <div class="modal-footer">
		                                   <a href="#" id="savebtn" class="btn btn-danger waves-effect"  onclick="saveuser();">Save</a>
		                                   <a href="#" id="updatebtn" class="btn btn-danger waves-effect" onclick="updateUser();">update</a>
		                                   <button class="btn btn-danger waves-effect"  data-dismiss="modal">Cancel</button>                                           
                                </div>
                                    </div>
                                </div>
                            </div>                   
<!-- Add Record Form ends-->                                        
                    
                    
                           
                </div>
            </section>
            </form>
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