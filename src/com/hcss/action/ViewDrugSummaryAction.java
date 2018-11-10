/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.hcss.action;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.hcss.bean.DrugsTo;

import com.hcss.delegate.UserPersonalDelegate;
import com.hcss.utill.UtilConstants;


public class ViewDrugSummaryAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int userid = (Integer) session.getAttribute("userid");
		Vector<DrugsTo> vBankTOs = null;
		try {
			vBankTOs = new UserPersonalDelegate().viewDrugSummary();
			if (vBankTOs!=null) {
				request.setAttribute("vBankTOs", vBankTOs);
				request
						.setAttribute("status",
								UtilConstants._VIEW_DRUG_SUMMARY);
				return mapping.findForward("success");
			} else {
				request.setAttribute("status",
						UtilConstants._VIEW_BANK_DETAILS_FAIL);
				return mapping.findForward("failure");
			}
		} catch (Exception ce) {
			System.out.println(ce);
			request.setAttribute("status", ce.getMessage());
			return mapping.findForward("failure");
		}
	}
}