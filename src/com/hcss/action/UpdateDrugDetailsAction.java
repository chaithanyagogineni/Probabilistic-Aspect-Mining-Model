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

import com.hcss.bean.DrugsTo;

import com.hcss.delegate.UserPersonalDelegate;
import com.hcss.utill.UtilConstants;


public class UpdateDrugDetailsAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		boolean flag = false;
		DrugsTo bankTO = (DrugsTo) form;
		try {
			flag = new UserPersonalDelegate().updateDrugDetails(bankTO);
			if (flag) {
				request.setAttribute("status",
						UtilConstants._UPDATE_EDUCATION_DETAILS);
				return mapping.findForward("success");
			} else {
				request.setAttribute("status",
						UtilConstants._UPDATE_EDUCATION_DETAILS_FAIL);
				return mapping.findForward("failure");
			}
		} catch (Exception e) {
			System.out.println(e);
			request.setAttribute("status", e.getMessage());
			return mapping.findForward("failure");
		}
	}
}