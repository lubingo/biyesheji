<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>changeGrade.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#f1fcfe"><br>
     <center><font size="6">�޸�ѧ���ɼ�</font></center>
    <form action="/biyesheji/servlet/changeGradeServlet" method="post">
    <table align="center" border="1">
      <tr>
          <td align="center" bgcolor="#ddf5cd">������ѧ��:</td>
          <td><input type="text" name="sno"></td>
      </tr>
      <tr>
          <td align="center" bgcolor="#ddf5cd">������γ̺�:</td>
          <td><input type="text" name="cno"></td>
      </tr>
      <tr>
          <td align="center" bgcolor="#ddf5cd">�������³ɼ�:</td>
          <td><input type="text" name="grade"></td>
      </tr>
     </table> <br> 
     <center><input type="submit" value="�޸�" onclick="alert('�޸ĳɹ�')">&nbsp;&nbsp;&nbsp;<input type="reset" value="ȡ��"></center> 
    </form>
  </body>
</html:html>
