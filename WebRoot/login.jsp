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
	 ����Web�Ľ�ѧ����ϵͳ</font></h1></center>
	 <br> <br> <br> <br><br><br>
		<table align="right">
		
		<html:form action="/login" method="post">   
		    <tr><td>&nbsp;&nbsp;�û���: <html:text property="id"/><html:errors property="id"/></td>
		        <td>&nbsp;&nbsp;����: <html:password property="password"/><html:errors property="password"/>&nbsp;&nbsp;</td>
		    </tr>
		    <tr><td>&nbsp;&nbsp;&nbsp;
			       <input type="radio" name="type" value="student">ѧ��
			       <input type="radio" name="type" value="teacher">��ʦ
			       <input type="radio" name="type" value="manager">����Ա
			    </td>		
			    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="submit" value="��½"/>&nbsp;&nbsp;<input type="reset" value="ȡ��"/>
			    </td>
			</tr>       
		</html:form>
	    </table>
	    <br><br><br><br><br><br><hr>
	    <table align="center">
	         <tr><td align="center" colspan="2">
			         ��Ȩ���� �����Ƽ���ѧ<br> 17�� ½��<br><br>
			         ��ϵ��:<font color="blue">lubing</font>|
                    QQ:<font color="blue">407865829</font>|
                       ����:<font color="blue">407865829@qq.com</font>
                 </td>
             </tr>
        </table> 
        </div></td></tr></table>              
	</body>
</html>

