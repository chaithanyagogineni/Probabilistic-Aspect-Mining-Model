/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.hcss.action;



import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


import com.hcss.bean.ReviewTO;
import com.hcss.delegate.UserPersonalDelegate;
import com.hcss.utill.UtilConstants;


public class PostReviewDrugAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		boolean flag = false;
		ReviewTO reviewTO = (ReviewTO) form;
		reviewTO.setRdate(new Date());
        
		try {
			flag = new UserPersonalDelegate().postDrugsReview(reviewTO);
			if (flag) {
				request.setAttribute("status",
						UtilConstants._REVIEW_DRUG_DETAILS);
				return mapping.findForward("success");
			} else {
				request.setAttribute("status",
						UtilConstants._ADD_DRUG_DETAILS_FAIL);
				return mapping.findForward("failure");
			}
		} catch (Exception e) {
			request.setAttribute("status", e.getMessage());
			return mapping.findForward("failure");
		}
	}
}