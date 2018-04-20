<%@ taglib uri="/WEB-INF/strutslib/c-1_0-rt.tld" prefix="s"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="overflow: hidden;">

<head>
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
		function page1(pageno)
		{
		document.getElementById("pageno").value=pageno;
		document.pform.action="statemaster_page123";
		document.pform.submit();
		}
		</script>
		
		
		
		
		
		
		
		<script type="text/javascript">
		
		
		
		
		
		function delete1(stateid,cityid)
		{
			alert(stateid,cityid);
			document.getElementById("stateid").value=stateid;
			document.getElementById("cityid").value=cityid;
			document.searchform.action="statemaster_delete";
			document.searchform.submit();
		}
		
		function f1(stateid,cityname,cityid){
			$("#addcityform #cityid").val(cityid);
			//document.forms["addcityform"]["cityid"].value=""+cityid;
			document.getElementById("cityid").value=cityid;
			document.getElementById("cityname").value=""+cityname;
			$("#statename").val(stateid);
			$("#statename").selectpicker('refresh');
			$("#add_record").modal('show');
		}
		
		function update(cityid,stateid){
			alert(cityid,stateid);
			document.getElementById("cityid").value;
			document.getElementById("stateid").value;
			document.addcityform.action="statemaster_update";
			document.addcityform.submit();
		}
		
		</script>
		<script type="text/javascript">
		function addcity() 
		{
			alert("INNNNNNN");
			document.addcityform.action="login_addcity";
			document.addcityform.submit();
		}
		
		</script>
		<script type="text/javascript">
		
		
		function search()
		{

		document.searchform.action="statemaster_search";
		document.searchform.submit;
		
		}
		
		function deleteall()
		{
		document.searchform.action="statemaster_deleteall";
		document.searchform.submit;
		
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
                <i id="top-search-close">×</i>
            </div>
        </li></ul></header>
         
        <section id="main">
           
            <aside id="sidebar">
                <div class="sidebar-inner c-overflow" tabindex="1" style="overflow: hidden; outline: none;">
                   

                    <!--menu start-->
			<ul class="main-menu"><li class="sub-menu active toggled" id="masters"><a href=""><i class="zmdi zmdi-collection-text"></i> Masters</a><ul><li style="background-color: rgb(238, 238, 238);" class="active" id="city"><a href="city.html">City Master</a></li></ul></li></ul>

                    <!-- menu ends-->
                </div>
            <div id="ascrail2002" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: 5; cursor: default; position: absolute; top: 0px; left: 263px; height: 434px; touch-action: none; display: none;"><div class="nicescroll-cursors" style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px; touch-action: none;"></div></div><div id="ascrail2002-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: 5; top: 429px; left: 0px; position: absolute; cursor: default; display: none;"><div class="nicescroll-cursors" style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgba(0, 0, 0, 0.5); border: 0px; background-clip: padding-box; border-radius: 0px;"></div></div></aside>
            
                       
            
            <section id="content">
                <div class="container">
                    
                    
                    <div class="clearfix" style="margin-bottom:10px;">
                        <div class="btn-demo pull-right">
                                <a href="#add_record" data-toggle="modal" title="Add Record" class="btn btn-primary waves-effect pull-right"><i class="zmdi zmdi-plus"></i></a>
                            </div>
                    </div>
                    
                    
                    
                    <div class="card animated ">
                        
                        <div class="card-body card-padding">
                        	
                        <div class="table-responsive clearfix ">
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<form name="searchform" method="post">
						<input type="hidden" name="cityid" id="cityid" value="${row[4]}">
						<div class="row">
								<div class="col-sm-12">
										<div class="row">
										<div class="col-sm-3">
											<input type="text" class="form-control input-sm"  placeholder="Search here..."  onkeypress="return alphaNumeric(event)" onkeyup="return ChangeUpperCase(this)" name="statename" />	
										</div>	
								 		<div class="col-sm-2">
											<div class="form-group fg-line">
												<select class="selectpicker bs-select-hidden" name="active">		
													<option value="Y" selected>YES</option>
													<option value="N">NO</option>
													<option value="">ALL</option>			
												</select> 
											</div>
										</div>
										
										<div class="col-sm-2">
											<div class="form-group fg-line">
												<select class="selectpicker bs-select-hidden" name="limit">		
													<option value="10" selected>10</option>
													<option value="20">20</option>
													<option value="50">50</option>			
												</select> 
											</div>
										</div>
										<div class="col-sm-1">
											<input type="submit" class="btn btn-info waves-effect" value="Search" onclick="search();">
										</div>
										
										
										<div class="col-sm-4">
											<input  type="submit" class="btn btn-danger waves-effect pull-right" value="Delete All" onclick="deleteall();">
										</div>
										
										
									</div>
								</div> 
										
								</div>
								
								
								
								
								
								
                            <table class="table table-striped table-condensed">
                                <thead>
                                    <tr>
										<th>Select</th>
                                        <th>ID</th>
                                        <th>City</th>
                                        <th>State</th>
                                        <th>Active</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <s:forEach var="row" items="${DispList}">
                                    <tr>
										<td class="select-cell"><div class="checkbox"><label><input name="stateid" id="stateid" type="checkbox" class="select-box" value="${row[0]}"><i class="input-helper"></i></label></div></td>
                                        <td>${row[4]}</td>
                                        <td>${row[1]}</td>
                                        <td>${row[2]}</td>
                                        <td>${row[3]}</td>
                                     
                                   
										<td>
											<!-- <a href="#add_record" title="Edit Record" class="btn btn-default waves-effect "><i class="zmdi zmdi-edit"></i></a>	&nbsp; -->
											<!-- <a href="#add_record" data-toggle="modal" title="Edite Record" class="btn btn-primary waves-effect pull-right"><i class="zmdi zmdi-plus"></i></a> -->
											<a href="#" data-toggle="modal"  title="Edit Record" class="btn btn-default waves-effect"  onclick="f1('${row[0]}','${row[1]}','${row[4]}');"><i class="zmdi zmdi-edit"></i></a>	&nbsp;
											<%-- <input type="submit" value="OK" onclick="delete1('${row[0]}');"> --%>
											<a href="#" title="Delete Record" class="btn btn-danger waves-effect" onclick="delete1('${row[0]}','${row[4]}');"><i class="zmdi zmdi-delete"></i></a>
										</td>
                                    </tr>
								</s:forEach>                                                                                                                                                     
									</tbody>
                            </table>
                            </form>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        </div>
						
                        </div><!-- ------------- -->
                        <form name="pform" id="pform" method="post">
                        <input type="hidden" id=pageno name="pageno" value="">
                        <div id="data-table-selection-footer" class="bootgrid-footer container-fluid">
                        <div class="row">
                        <div class="col-sm-6">
                        
                        <ul class="pagination">
                        <li class="first" aria-disabled="true">
                        <a href="#" onclick="page1(1);" class="button">
                        
                        <i class="zmdi zmdi-more-horiz"></i>
                        </a>
                        </li>
                        <li class="prev" aria-disabled="true">
                        <a href="#" class="button" onclick="page1(2)"><i class="zmdi zmdi-chevron-left"></i></a></li>
                        <li class="page-1 active" aria-disabled="false" aria-selected="true">
                        <a href="#" class="button" onclick="page1(1);">1</a>
                        <a href="#" class="button" onclick="page1(2);">2</a>
                        <a href="#" class="button" onclick="page1(3);">3</a>
                        </li>
                        <li class="next" aria-disabled="true">
                        <a href="statemaster_next" class="button"><i class="zmdi zmdi-chevron-right"></i></a></li>
                        <li class="last" aria-disabled="true">
                        <a href="#" class="button" onclick="page1(3)">
                        <i class="zmdi zmdi-more-horiz"><i></i></i></a></li></ul></div>
                        <div class="col-sm-6 infoBar"><div class="infos">Showing 1 to 5 of 5 entries ===${sessionScope.pageno1}</div>
                        </div>
                        </div>
                        </div>
                        </form>
                    </div>
                       
                       
<!-- Add Record Form start-->                    
                
<div class="modal fade" id="add_record" tabindex="-1" role="dialog" aria-hidden="true">

                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    
                                        <div class="modal-header">
                                            <h4 class="modal-title">Add City</h4>
                                        </div>
                                        <div class="modal-body">
                                        
                                        
                                        
                                        
                                        
                                                 
 <form name="addcityform" method="post" id="addcityform" rol="form"> 
 <input type="hidden" id="cityid" name="cityid" value=""> 
                               <div class="form-group fg-line">
                                    <label for="exampleInputEmail1">State</label>
                             
                                   <select class="selectpicker" data-live-search="true" name="statename" id="statename">
                                  
                                        <option selected>Select State</option>
                                        
										<s:forEach var="row" items="${DispList1}">
										<option value="${row[0]}">${row[1]}</option>
										</s:forEach>
                                        </select>
                                </div>
                                <div class="form-group fg-line">
                                    <label for="exampleInputEmail1">City</label>
                                    <input type="text" name="cityname" class="form-control input-sm" id="cityname" placeholder="Enter City" value="${row[1]}">
                                </div>
                                 <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Y" checked name="active">
                                        <i class="input-helper"></i>
                                        Active
                                    </label>
                                        </div>
                                         <div class="modal-footer">
 <a href="#" class="btn btn-info waves-effect" onclick="addcity();">save</a>
 <a href="#" class="btn btn-info waves-effect" onclick="update('${row[0]}','${row[2]}');">update</a>
		                                   <button class="btn btn-danger waves-effect"  data-dismiss="modal">Cancel</button>      
		                                  </div>                                     
                                 </form>  
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                    
                                </div>
                                
                            </div>    
                          
                                         
<!-- Add Record Form ends-->                                        
                    
                    
                         </div>  
                </div>
            </section>
            
        </section>
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