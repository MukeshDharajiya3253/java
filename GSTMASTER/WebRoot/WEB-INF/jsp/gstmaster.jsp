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
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/toastr.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/toastr.min.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        
  		<link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
		<script src="vendors/bower_components/bootstrap-sweetalert/lib/toastr.js"></script>
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
	  // Convert GSTIN NAME INTO Capital Leter 
		function capitalize(textboxid, str) {
     	 if (str && str.length >= 1)
      	{       
          var firstChar = str;  
          
          str = firstChar.toUpperCase();
      	}
      	document.getElementById("gstinname").value = str;
      	
  		}
  	 // Convert PANNUMBER INTO Capital NUmber
	  function ConvtPan(textboxid, str) {
	     	 if (str && str.length >= 1)
	      	{       
	          var firstChar = str;  
	          
	          str = firstChar.toUpperCase();
	      	}
	      	document.getElementById("pannumber").value = str;
	      	
	  }
		
		// Address Vlidation
		function LimtCharacters(txtMsg, CharLength, indicator)
		{
			chars = txtMsg.value.length;
			document.getElementById(indicator).innerHTML = 32 - chars;
			
    
				if (chars > CharLength)
		    	{
		       		 txtMsg.value = txtMsg.value.substring(0, CharLength);
		       		 return true;
		    	}
		    	return false;
		 }
		
		function LimtCharacters1(txtMsg, CharLength, indicator)
		{
			chars = txtMsg.value.length;
			document.getElementById(indicator).innerHTML = 32 - chars;
			
    
				if (chars > CharLength)
		    	{
		       		 txtMsg.value = txtMsg.value.substring(0, CharLength);
		       		 return true;
		    	}
		    	return false;
		 }
		 
		 
		 
		 function LimtCharacters2(txtMsg, CharLength, indicator)
		{
			chars = txtMsg.value.length;
			document.getElementById(indicator).innerHTML = 32 - chars;
			
    
				if (chars > CharLength)
		    	{
		       		 txtMsg.value = txtMsg.value.substring(0, CharLength);
		       		 return true;
		    	}
		    	return false;
		 }
		
		
		
		
		
		function validation()
		{
			var checknc=/^[0-9a-zA-Z]+$/;
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
			
		
			if(gstinname.length=="")
			{
			sweetAlert
			("OPPS...","Gstin Name Is Empty", "warning");
			
				return false;
			}
			
			if(gstinname.length< 7 )
			{
			sweetAlert
			("OPPS...","Gstin Name Less 7 Charecter", "warning");
				
				return false;
			}
			
			else if(!gstinname.match(letters))
			{
			sweetAlert
			("OPPS...","Gstin Name Contain Only alphabet", "warning");
			
				return false;
			}
			else if(statecode.length=="")
			{
			
			sweetAlert
			("OPPS...","Please Enter Two Digite State Code", "warning");
		
				return false;
			}
			else if(pannumber.length=="" || pannumber.length<10 )
			{
			
			sweetAlert
			("OPPS...","Please Enter 10 Digite PanNumber", "warning");
			
				return false;
			}
			
			else if(!pannumber.match(checknc))
			{
			
			sweetAlert
			("OPPS...","Please Enter Valid Pan Number (Both Char & Number)", "warning");
			
				return false;
			}
			
			else if(digit3.length=="" || digit3.length<3 )
			{
			
			sweetAlert
			("OPPS..."," Please Enter 3 Digite GSTIN Number", "warning");
			
				return false;
			}
			
			else if(address1.length=="" || address1.length<5 )
			{
			
			sweetAlert
			("OPPS...","  Please Enter Valid Address1", "warning");
			
				return false;
			}
			else if(address2.length=="" || address2.length<5 )
			{
			
			sweetAlert
			("OPPS...","  Please Enter Valid Address2", "warning");
				
				return false;
			}
			else if(address3.length=="" || address3.length<5 )
			{
			
			sweetAlert
			("OPPS...","  Please Enter Valid Address3", "warning");
				
				return false;
			}
			
			else if(contryid.length=="")
			{
			
			sweetAlert
			("OPPS..."," Opps Please Select Country", "warning");
			
				return false;
			}
			
			else if(stateid.length=="")
			{
				
			sweetAlert
			("OPPS...","Opps Please Select STATE", "warning");
				
				return false;
			}
			
			else if(cityid.length=="" )
			{
			
			sweetAlert
			("OPPS...","Opps Please Select CITY", "warning");
				
				return false;
			}
			
			else if(pincode.length=="" || pincode.length<6 )
			{
			
			sweetAlert
			("OPPS...","Opps Please Enter 6 Digite Pincode Number", "warning");			
				
				return false;
			}
			/* else
			
			{
				alert(gstinid);
				document.getElementById("gstinid").value=gstinid;
				document.myform.action="gstin_addGstinClient";
				document.myform.submit();
			} */
		}
		
		
		
function add(gstinid)
	
	{
		//var addressFlag = LimtCharacters();  
		var flage = validation();
		/* alert(gstinid); */
		if(flage!=false)
		{
		
		
				if(gstinid!=null)
				{
					document.getElementById("gstinid").value=gstinid;
					document.myform.action="gstin_addGstinClient";
					document.myform.submit();
				}
			
		else
		
			{
		
				    var statecode = $("#statecode").val();
					var pannumber = $("#pannumber").val();
					var digit3 = $("#digit3").val();
				
					//alert("Check Dublication Method Execute.....");
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
						sweetAlert
						("OPPS...","GSTIN NO Already Exist....", "error");		
						alert("Opps GSTIN NO Already Exist....");
					}
							
					if(data=="N")
					{
					//alert("AJAX IS EXECUTE......");
					document.getElementById("gstinid").value=gstinid;
					document.myform.action="gstin_addGstinClient";
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
			function getCountryStateCity(statecode)
			{
			//alert(stateid);

				var getStateCode=document.getElementById("statecode").value;
				//alert(getStateCode);
				if(stateid!=null)
				{
					$.ajax({
					url:"gstin_CountryStateCityList",
					data:{paramscode:getStateCode},
					type:"post",
					datatype:"html",
					success:function(data){
					var s=data.split("#");
					alert(s[0]+""+s[1]);
					$("#contryid").html(s[0]).selectpicker('refresh');
					$("#stateid").html(s[1]).selectpicker('refresh');
					$("#cityid").html(s[2]).selectpicker('refresh');
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
                                <h2>Client GSTIN</h2>
                              
                                <form name="myform" id="myform" method="post">
                                <input type="hidden" name="gstinid" id="gstinid" value="">
                				<table class="table table-striped">
                                    <tr>
                                        <td><br><h4>GSTIN NAME *</h4></td>
                                   		<td><br><input type="text" id="gstinname" name="gstinname" class="form-control" maxlength="32" placeholder="GSTIN Name" value="${gstinname}"  autocomplete="off" onkeyup="javascript:capitalize(this.id, this.value);" ></td>
                                        <td><br><h4>GSTIN NO *</h4></td>
                                        <td><br><input type="text"  id="statecode" name="statecode" value="${statecode}"  onblur="getCountryStateCity(this.value);"  autocomplete="off"  class="form-control" style="text-align:center;" placeholder="State Code" maxlength="2" oninput="this.value=this.value.replace(/[^0-9]/g,'');"></td>
                                        <td><br><input type="text"  id="pannumber" name="pannumber"  value="${pannumber}"  autocomplete="off" class="form-control" style="text-align:center;" placeholder="PAN Number" maxlength="10"  onkeyup="javascript:ConvtPan(this.id, this.value);"></td>
										<td><br><input type="text"  id="digit3" name="digit3" value="${digit3}" autocomplete="off"  class="form-control" style="text-align:center;" placeholder="1/Z/Seq" maxlength="3"></td>
                                    </tr>
									<tr>
                                      
                                         <td colspan="2"><input type="text" onkeyup="LimtCharacters(this,32,'lblcount');"  id="address1" name="address1" value="${address1}"   autocomplete="off" class="form-control" placeholder="ADDRESS 1" maxlength="32"> charecter left:<label id="lblcount">32</label></td>
                                         <td colspan="2"><input type="text" onkeyup="LimtCharacters1(this,32,'lblcount1');"  id="address2" name="address2" value="${address2}"  autocomplete="off" class="form-control"  placeholder="ADDRESS 2" maxlength="32">charecter left:<label id="lblcount1">32</label></td>
                                         <td colspan="2"><input type="text" onkeyup="LimtCharacters2(this,32,'lblcount2');"  id="address3" name="address3" value="${address3}"  autocomplete="off" class="form-control"  placeholder="ADDRESS 3" maxlength="32">charecter left:<label id="lblcount2">32</label></td>
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
	                                            
	                                            <s:if test="${row[0] ne contryid}">
	                                             <option value="${row[0]}">${row[1]}</option>
	                                            </s:if>
                                           
                                            </s:forEach>
                                            
                                        </select>
                                            
                                            </td>
                                            
                                             <td colspan="2" ><select  id="stateid" name="stateid"  class="selectpicker" data-live-search="true" onchange="CityListAjax(this.value)">
                                         	<s:forEach var ="row" items="${getCSCityList1}">
                                         	
                                         	 <s:if test="${row[0] eq stateid}">
                                         	  <option value="${row[0]}" selected >${row[1]}</option>
                                         	 </s:if>
                                         	
	                                          <s:if test="${row[0] ne stateid}">
	                                         	  <option value="${row[0]}">${row[1]}</option>
	                                          </s:if>
                                         	</s:forEach>
                                         
                                         
											
                                            </select></td>
                                    
                                            <td colspan="2"><select  id="cityid" name="cityid"  class="selectpicker" data-live-search="true" >
                                           <s:forEach var ="row" items="${getCSCityList2}">
                                           
	                                         	 <s:if test="${row[0] eq cityid}">
	                                         	  <option value="${row[0]}" selected >${row[1]}</option>
	                                         	 </s:if>
	                                         	 
	                                         	  <s:if test="${row[0] ne cityid}">
	                                         	  		<option value="${row[0]}">${row[1]}</option>
	                                          	  </s:if>
                                           
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
                     		  		
                     		  		<c:choose>
                     		  		
                     		  		<s:when test="${gstinid!=null}">
                     		  		
                     		  		<s:if test="${active eq  'Y'}">
                     		  			<td colspan="6"><input type="checkbox" name="active" id="active" checked  value=""> Active<br></td>
                     		  		</s:if>
                     		  		
                     		  		<s:if test="${active eq  'N'}">
                     		  			<td colspan="6"><input type="checkbox" name="active" id="active"  value=""> Active<br></td>
                     		  		</s:if>
                     		  		
                     		  		</s:when>
                     		  		
                     		  		<s:otherwise>
                     		  		
              									<td colspan="6"><input type="checkbox" name="active" id="active" checked  value=""> Active<br></td>
              									
                     		  		</s:otherwise>
                     		  		
                     		  		</c:choose>
                     		  		
                     		  		
                     		  		<%-- 
                     		  			<s:if test="${active!=null}">
                     		  			<td colspan="6"><input type="checkbox" name="active" id="active" checked  value=""> Active<br></td>
                     		  			</s:if>
                     		  			
                     		  			<s:if test="${active==null}">
                     		  			<td colspan="6"><input type="checkbox" name="active" id="active" value=""> Active<br></td>
                     		  			</s:if> --%>
                     		  			
                     		  			
                     		  			
                     		  			
<!--                      		  			<td colspan="6"><input type="checkbox" name="active" id="active" value=""> Active<br>		</td>
 -->                     		  			
                     		  		
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
        
    
