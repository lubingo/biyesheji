<%@ page language="java" import="com.jspdev.biyesheji.Teacher" pageEncoding="gb2312"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<jsp:useBean id="teacher" class="com.jspdev.biyesheji.Teacher" scope="session"/>
<%teacher=(Teacher)session.getAttribute("teacher"); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>teacherFunction.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css"> 
���� <!-- 
���� a:link { text-decoration: none;} 
���� a:active { text-decoration:blink} 
���� a:hover { text-decoration:underline;}  
���� a:visited { text-decoration: none;} 
���� -��>  
���� </style>

  </head>
  
  <body bgcolor="#f1fcfe">
  <center>
    <font size="5"><br>
       <a href='viewTeaCourse.jsp?name=<%=teacher.getName() %>' target="right">�鿴ѡ�����</a><br><br>
       <a href='viewTeaInfo.jsp' target="right">������Ϣ</a><br><br>
       <a href='changePassword.jsp?teaId=<%=teacher.getId() %>' target="right">�����޸�</a><br><br>
       <a href='addGrade.jsp' target="right">ѧ���ɼ�¼��</a><br><br>
       <a href='viewNotes.jsp' target="right">�鿴����</a><br><br>
       <a href='addMessage.jsp?name=<%=teacher.getName() %>' target="right">���԰�</a><br><br>
       <a href='../login.jsp' target="_parent">�˳�ϵͳ</a><br>
    </font>
  </center>  
  </body>
</html:html>
