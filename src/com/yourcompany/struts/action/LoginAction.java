/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.jspdev.biyesheji.Student;
import com.jspdev.biyesheji.Teacher;
import com.yourcompany.struts.form.LoginForm;

/** 
 * MyEclipse Struts
 * Creation date: 03-03-2008
 * 
 * XDoclet definition:
 * @struts.action path="/login" name="loginForm" input="/login.jsp" scope="request" validate="true"
 * @struts.action-forward name="success" path="/form/loginSuccess.jsp"
 * @struts.action-forward name="failure" path="/login.jsp"
 */
public class LoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 * @throws Exception 
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		LoginForm loginForm = (LoginForm) form;// TODO Auto-generated method stub
		Student student=new Student();
		Teacher teacher=new Teacher();
		HttpSession session=request.getSession();
		String type=loginForm.getType();
		if(type.equals("student")&&student.isStudent(loginForm)){
	        student=Student.getStudent(loginForm.getId());
	        session.setAttribute("isLogin",new String("true"));
			session.setAttribute("student",student);
	 	    return (mapping.findForward("student"));
	 	}		
		else if(type.equals("teacher")&&teacher.isTeacher(loginForm)){
			teacher=Teacher.getTeacher(loginForm.getId());
			session.setAttribute("isLogin",new String("true"));
			session.setAttribute("teacher",teacher);
			return (mapping.findForward("teacher"));
		}
		else if(type.equals("manager")&&loginForm.getId().equals("yesqcy")&&loginForm.getPassword().equals("baisse183")){
			session.setAttribute("isLogin",new String("true"));
			return (mapping.findForward("manager"));
		}
		else{
			session.setAttribute("isLogin", new String("false"));
			return (mapping.findForward("loginFailure"));
		}
			
	}
}