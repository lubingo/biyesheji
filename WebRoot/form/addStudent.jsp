<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>addStudent.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javaScript">
    function openwindow(){ 
         window.showModalDialog("../box/addSuccess.jsp",window,"status:no;scroll:no;dialogWidth:235px;dialogHeight:100px");
    }             
    
    function opensub(){
      document.form1.submit();
    }   
    </script>
  </head>
  
  <body bgcolor="#f1fcfe"><br>
    <center><font size="6">���ѧ��</font></center>
    <form action="/biyesheji/servlet/addStudentServlet" method="post">
    <table align="center" border="1">
      <tr>
         <td align="center" bgcolor="#ddf5cd">ѧ��:</td>
         <td><input type="text" name="id"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">����:</td>
         <td><input type="text" name="name"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">�Ա�:</td>
         <td><input type="text" name="sex"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">ѧԺ:</td>
         <td><input type="text" name="college"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">רҵ:</td>
         <td><input type="text" name="department"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">��ѧʱ��:</td>
         <td><input type="text" name="inTime"></td>
      </tr>
      <tr>
         <td align="center" bgcolor="#ddf5cd">��ҵʱ��:</td>
         <td><input type="text" name="outTime"></td>
      </tr>
    </table><br>
    <center><input type="submit" value="���" onclick="openwindow()">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center>
    </form>
  </body>
</html:html>
