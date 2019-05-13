/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 05-15-2008
 * 
 * XDoclet definition:
 * @struts.form name="studentsQueryForm"
 */
public class StudentsQueryForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** college property */
	private String college;

	/** id property */
	private String id;

	/** inTime property */
	private String inTime;

	/** department property */
	private String department;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the college.
	 * @return String
	 */
	public String getCollege() {
		return college;
	}

	/** 
	 * Set the college.
	 * @param college The college to set
	 */
	public void setCollege(String college) {
		this.college = college;
	}

	/** 
	 * Returns the id.
	 * @return String
	 */
	public String getId() {
		return id;
	}

	/** 
	 * Set the id.
	 * @param id The id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/** 
	 * Returns the inTime.
	 * @return String
	 */
	public String getInTime() {
		return inTime;
	}

	/** 
	 * Set the inTime.
	 * @param inTime The inTime to set
	 */
	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	/** 
	 * Returns the department.
	 * @return String
	 */
	public String getDepartment() {
		return department;
	}

	/** 
	 * Set the department.
	 * @param department The department to set
	 */
	public void setDepartment(String department) {
		this.department = department;
	}
}