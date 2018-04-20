<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function fileupload()
{
	document.myform.action="file_uploadfile";
	document.myform.submit();
}

</script>
</head>
<body>
		<form name="myform" id="myform" method="post" enctype="multipart/form-data" >
		
		<input type="file" name="filepath" id="filepath">
		<input type="file" name="filepath" id="filepath">
		<a href="#" onclick="fileupload()">uploadFile</a>
		
		</form>
</body>
</html>