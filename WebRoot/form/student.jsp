<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html:html lang="true">
  <head>
    <html:base />  
    <title>student.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <frameset rows="60,*" cols="*" frameborder="NO" border="0" framespacing="0">
   <frame src="studentHead.jsp" name="top" scrolling="NO" noresize>
   <frameset rows="*" cols="200,*" framespacing="0" frameborder="YES" border="0"> 
       <frame src="studentFunction.jsp" name="left" scrolling="NO" noresize>
       <frame src="nothing.jsp" name="right">
   </frameset>
  </frameset>
  <body> 
  </body> 
</html:html>
 