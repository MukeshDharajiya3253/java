<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%@ taglib uri="/WEB-INF/strutslib/c-1_0-rt.tld" prefix="c"%>

<html 

style="overflow: hidden;"><head>
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
		function validation()
		{
			var letters = /^[A-Za-z]+$/;  
			var gstinname = $("#gstinname").val();
			var statecode = $("#statecode").val();
			var pannumber = $("#pannumber").val();
			var digit3 = $("#digit3").val();
			var address1 = $("#address1").val();
			var address2 = $("#address2").val();
			var address3 = $("#address3").val();
			var contryid = $("#contryid").val();
			var stateid = $("#stateid").val();
			var cityid = $("#cityid").val();
			var pincode = $("#pincode").val();
			
		
			if(gstinname.length=="" || gstinname.length< 7 )
			{
				alert("OOps...Gstin Name is Empty Or Size Less 7 Character");
				return false;
			}
			else if(!gstinname.match(letters))
			{
				alert("Oops...Gstin Name Contain Only alphabet");
				return false;
			}
			else if(statecode.length=="" || statecode.length< 2 )
			{
				alert("Opps Please Enter Two Digite State Code");
				return false;
			}
			else if(pannumber.length=="" || pannumber.length<10 )
			{
				alert("Opps Please Enter 10 Digite PanNumber");
				return false;
			}
			else if(digit3.length=="" || digit3.length<3 )
			{
				alert("Opps Please Enter 3 Digite Random Number");
				return false;
			}
			else if(address1.length=="" || address1.length<5 )
			{
				alert(" Opps Please Enter Valid Address1");
				return false;
			}
			else if(address2.length=="" || address2.length<5 )
			{
				alert("Opps Please Enter Valid Address2");
				return false;
			}
			else if(address3.length=="" || address3.length<5 )
			{
				alert("Opps Please Enter Valid Address3");
				return false;
			}
			else if(contryid.length=="")
			{
				alert("Opps Please Select Country");
				return false;
			}
			else if(stateid.length=="")
			{
				alert("Opps Please Select STATE");
				return false;
			}
			else if(cityid.length=="" )
			{
				alert("Opps Please Select CITY");
				return false;
			}
			
			else if(pincode.length=="" || pincode.length<6 )
			{
				alert("Opps Please Enter 6 Digite Pincode Number");
				return false;
			}
			/* else
			
			{
				alert(gstinid);
				document.getElementById("gstinid").value=gstinid;
				document.myform.action="gstin_addgstin";
				document.myform.submit();
			} */
		}
		
		
		
		function add(gstinid)
		{
		    var statecode = $("#statecode").val();
			var pannumber = $("#pannumber").val();
			var digit3 = $("#digit3").val();
			
			var flage = validation();
			
			if(flage!=false)
				{
				alert("Check Dublication Method Execute.....");
					$.ajax({
					url:"gstin_checkDuplication",
					data:{paramscode:statecode,
					parampanno:pannumber,
					paramdigit3:digit3
					},
					type:"post",
					datatype:"html",
					success:function(data){
					
						if(data=="Y")
						{
							alert("Opps GSTIN Number Already Exist....");
						}
						
						if(data=="N")
						{
							alert("AJAX IS EXECUTE......");
							document.getElementById("gstinid").value=gstinid;
							document.myform.action="gstin_addgstin";
							document.myform.submit();
						}
					},
					error: function(request,textStatus,errorThrown)
					{
						alert(errorThrown);
					},
					});					
				}
		}
		
		function stateListAjax(countryid)
		{
			
			if(countryid!="")
			{
				$.ajax({
				url:"gstin_stateList",
				data:{paramcid:countryid},
				type:"post",
				datatype:"html",
				success:function(data)
				{
					$("#stateid").html(data).selectpicker('refresh');
				},
				error:function(request,textStatus,errorThrown)
				{
					alert(errorThrown);
				},
				
				});
				
				}
			}
			
			
			function CityListAjax(stateid)
			{
			//alert(stateid);

				if(stateid!=null)
				{
					$.ajax({
					url:"gstin_cityList",
					data:{paramstateid:stateid},
					type:"post",
					datatype:"html",
					success:function(data){
					
						$("#cityid").html(data).selectpicker('refresh');
					},
					error: function(request,textStatus,errorThrown)
					{
						alert(errorThrown);
					},
					});					
				}
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
                <div class="container">
                    
                    
                    <div class="clearfix" style="margin-bottom:10px;">
                        <div class="btn-demo pull-right">
                                <a href="gstin_getList"  class="btn btn-primary ">SHOW</a>
                            </div>
                    </div>
                    
                    
                    
                    <div class="card animated ">
                        
                        <div class="card-body card-padding">
                        	
                        <div class="table-responsive clearfix ">
                            </div>
                                <h2>Client Brand GSTN</h2>
                              
                                <form name="myform" id="myform" method="post">
                                <input type="hidden" name="gstinid" id="gstinid" value="">
                				<table class="table table-striped">
                                    <tr>
                                        <td><br><h4>GSTIN NAME *</h4></td>
                                   		<td><br><input type="text" id="gstinname" name="gstinname" class="form-control" maxlength="32" placeholder="GSTIN Name" value="${gstinname}" ></td>
                                        <td><br><h4>GSTIN NO *</h4></td>
                                        <td><br><input type="text"  id="statecode" name="statecode" value="${statecode}"  class="form-control" style="text-align:center;" placeholder="State Code" maxlength="2" oninput="this.value=this.value.replace(/[^0-9]/g,'');"></td>
                                        <td><br><input type="text"  id="pannumber" name="pannumber"  value="${pannumber}" class="form-control" style="text-align:center;" placeholder="PAN Number" maxlength="10"></td>
										<td><br><input type="text"  id="digit3" name="digit3" value="${digit3}" class="form-control" style="text-align:center;" placeholder="1/Z/Seq" maxlength="3"></td>
                                    </tr>
									<tr>
                                      
                                         <td colspan="2"><input type="text"  id="address1" name="address1" value="${address1}"   class="form-control" placeholder="ADDRESS 1" maxlength="32"></td>
                                         <td colspan="2"><input type="text"  id="address2" name="address2" value="${address2}" class="form-control"  placeholder="ADDRESS 2" maxlength="32"></td>
                                         <td colspan="2"><input type="text"  id="address3" name="address3" value="${address3}" class="form-control"  placeholder="ADDRESS 3" maxlength="32"></td>
                    				</tr>
                    					 
                                    <tr>
                                    
                                    <c:choose>
                                      <c:when test="${contryid != null}">
                                      
                                        <td colspan="2">
                                        
                                       
                                       
                                        <select id="contryid" name="contryid"  class="selectpicker" data-live-search="true" onchange="stateListAjax(this.value)" >
                                            <s:forEach var="row" items="${getCountryList}">
                                            <s:if test="${row[0] eq contryid}">
                                            <option value="${contryid}" selected  >${row[1]}</option>
                                            </s:if>
                                            <option value="${row[0]}">${row[1]}</option>
                                            </s:forEach>
                                            
                                            </select>
                                            
                                            </td>
                                            
                                             <td colspan="2" ><select  id="stateid" name="stateid"  class="selectpicker" data-live-search="true" onchange="CityListAjax(this.value)">
                                         	<s:forEach var ="row" items="${getCityList}">
                                         	  <option value="${row[2]}" selected >${row[4]}</option>
                                         	</s:forEach>
                                         
                                         
											
                                            </select></td>
                                    
                                            <td colspan="2"><select  id="cityid" name="cityid"  class="selectpicker" data-live-search="true" >
                                           <s:forEach var ="row" items="${getCityList}">
                                             <option value="${row[1]}" selected>${row[5]}</option>
                                             </s:forEach>
                                            </select>
                                          
                                            
                                             </td>
                                             </c:when>
                                            
                                        
                                            
                                           
                                            
                                            
                                            
                                            
                                            
                                            
                                       <c:otherwise>
                                             <td colspan="2">
                                            
                                       <select id="contryid" name="contryid"  class="selectpicker" data-live-search="true" onchange="stateListAjax(this.value)" >
                                            <option value="" selected  >Select Country</option>
                                   			<s:forEach var="row" items="${getCountryList}">
                                            <option value="${row[0]}">${row[1]}</option>
                                            </s:forEach>
                                            </select></td>
                                            <td colspan="2" ><select  id="stateid" name="stateid"  class="selectpicker" data-live-search="true" onchange="CityListAjax(this.value)">
                                           <option value="" selected >Select State</option>
											
                                            </select></td>
                                            <td colspan="2"><select  id="cityid" name="cityid"  class="selectpicker" data-live-search="true" >
                                             <option value="" selected>Select City</option>
                                            </select>
                                          
                                            
                                             </td>
                                            
                                       
                                            </c:otherwise>
                                            
                                                </c:choose>
                                            
                                            
                                            
                                            
                                            
                                       
                     				</tr>
                              		<tr>
                     
											<td colspan="6">  
											<br>  
											<input type="text"  id="pincode" name="pincode"  class="form-control" value="${pincode}"  placeholder="PIN CODE" maxlength="6" style="width:300px;"
                                                    oninput="this.value=this.value.replace(/[^0-9]/g,'');"> </td>
                                    </tr> 
                    		
                     		  		<tr>
                     		  			<td colspan="6"><input type="checkbox" name="active" id="active" value=""> Active<br>	
                     		  			
                     		  			</td>
                     		  		</tr>
                     		  		<tr>
                     		  		
                     					<td colspan="6">  <br><a href="#" class="btn btn-primary" onclick="add(${gstinid});">SAVE</a></td>
                     				</tr> 
                    		
                            </table>
                            </form>
                        </div>
						
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