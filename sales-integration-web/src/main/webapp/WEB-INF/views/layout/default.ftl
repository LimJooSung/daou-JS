
<#assign tiles=JspTaglibs["http://tiles.apache.org/tags-tiles"]>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
		
	<@tiles.insertAttribute name="header" />
	<div>
		<@tiles.insertAttribute name="home" />
	</div>
	<@tiles.insertAttribute name="footer" />

</body>
</html>