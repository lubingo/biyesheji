<%@ page language="java" pageEncoding="gb2312"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<jsp:useBean id="course" class="com.jspdev.biyesheji.Course" scope="session"/>
<c:set var="courses" value="<%=course.getCourses() %>"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>changeCourseInfo.jsp</title>

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
  <center><font size="6">���пγ���Ϣ</font></center><br>
    <table align="center" border="1">
      <tr>
        <td bgcolor="#ddf5cd">�γ̴���</td>
        <td bgcolor="#ddf5cd">�γ�����</td>
        <td bgcolor="#ddf5cd">�ڿ���ʦ</td>
        <td bgcolor="#ddf5cd">�γ�ѧ��</td>
        <td bgcolor="#ddf5cd">�γ�����</td>
        <td bgcolor="#ddf5cd">�Ͽ�ʱ��</td>
        <td bgcolor="#ddf5cd">�Ͽεص�</td>
        <td bgcolor="#ddf5cd">�޸Ŀγ���Ϣ</td>
      </tr>     
      <logic:iterate id="cour" name="courses" >
      <tr>
        <td><bean:write name="cour" property="id"/></td>
        <td><bean:write name="cour" property="name"/></td>
        <td><bean:write name="cour" property="teacher"/></td>
        <td><bean:write name="cour" property="credit"/></td>
        <td><bean:write name="cour" property="type"/></td>
        <td><bean:write name="cour" property="time"/></td>
        <td><bean:write name="cour" property="address"/></td>
        <td><a href="courseInfo.jsp?cno=<bean:write name="cour" property="id"/>">�޸�</a></td>        
      </tr>           
      </logic:iterate> 
    </table>
  </body>
</html:html>
