<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html> 
	<head>
		<title>loginFrame</title>
	</head>
	<body>
	<table background="image/1.jpg" align="center" width="100%" style="height: 100% ;"><tr><td>
	<div style="width:100%;height:100%;">
	<br><br><br><br><br><br><br><br>
	 <center><h1><font size="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 基于Web的教学管理系统</font></h1></center>
	 <br> <br> <br> <br><br><br>
		<table align="right">
		
		<html:form action="/login" method="post">   
		    <tr><td>&nbsp;&nbsp;用户名: <html:text property="id"/><html:errors property="id"/></td>
		        <td>&nbsp;&nbsp;密码: <html:password property="password"/><html:errors property="password"/>&nbsp;&nbsp;</td>
		    </tr>
		    <tr><td>&nbsp;&nbsp;&nbsp;
			       <input type="radio" name="type" value="student">学生
			       <input type="radio" name="type" value="teacher">教师
			       <input type="radio" name="type" value="manager">管理员
			    </td>		
			    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="submit" value="登陆"/>&nbsp;&nbsp;<input type="reset" value="取消"/>
			    </td>
			</tr>       
		</html:form>
	    </table>
	    <br><br><br><br><br><br><hr>
	    <table align="center">
	         <tr><td align="center" colspan="2">
			         版权所有 北京科技大学<br> 17级 陆兵<br><br>
			         联系人:<font color="blue">lubing</font>|
                    QQ:<font color="blue">407865829</font>|
                       邮箱:<font color="blue">407865829@qq.com</font>
                 </td>
             </tr>
        </table> 
        </div></td></tr></table>              
	</body>
</html>

