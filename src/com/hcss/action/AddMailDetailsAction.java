/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.hcss.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.hcss.bean.MailsTO;
import com.hcss.delegate.UserPersonalDelegate;
import com.hcss.utill.UtilConstants;

/** 
 * MyEclipse Struts
 * Creation date: 09-01-2012
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="failure" path="/AddMailDetails.jsp"
 * @struts.action-forward name="success" path="/AddMailDetails.jsp"
 */
public class AddMailDetailsAction extends Action {
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
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		boolean flag = false;
		MailsTO mailsTO = (MailsTO) form;
		try {
			flag = new UserPersonalDelegate().addMailsDetails(mailsTO);
			if (flag) {
				request.setAttribute("status",
						UtilConstants._ADD_MAILS_DETAILS);
				return mapping.findForward("success");
			} else {
				request.setAttribute("status",
						UtilConstants._ADD_MAILS_DETAILS_FAIL);
				return mapping.findForward("failure");
			}
		} catch (Exception e) {
			request.setAttribute("status", e.getMessage());
			return mapping.findForward("failure");
		}
	}
}