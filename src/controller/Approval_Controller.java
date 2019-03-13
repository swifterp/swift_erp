package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.approval.SelectApprovalPath;
import logic.approval.SelectCommonStyle;
import logic.approval.SelectDraft;
import logic.approval.SelectMyApproval;
import logic.pay.InsertAllowanceItem;

@Controller
@RequestMapping("/approval")
public class Approval_Controller {
	
	@Autowired
	private SelectDraft sd;
	
	@Autowired
	private SelectCommonStyle scs;
	
	@Autowired
	private SelectApprovalPath sap;
	
	@Autowired
	private SelectMyApproval sma;
	
	@RequestMapping("/selectDraft")
	public String readDraft(Model model) {
		
		model.addAttribute("list", sd.callDraftDao());
		
		return "approval/approval_draft";
	}
	
	@RequestMapping("/selectApprovalPath")
	public String readCommonStyle(Model model) {
		
		model.addAttribute("list", sap.callApprovalPathDao());
		
		return "approval/approval_path";
	}
	
	@RequestMapping("/selectCommon")
	public String readApprovalPath(Model model) {
		
		model.addAttribute("list", scs.callCommonStyleDao());
		
		return "approval/approval_common";
	}
	
	@RequestMapping("/selectMyApproval")
	public String readMyApproval(Model model) {
		
		model.addAttribute("list", sma);
		
		return "approval/approval_myApproval";
	}

}