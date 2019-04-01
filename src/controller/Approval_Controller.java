package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.approval.SelectApprovalPath;
import logic.approval.SelectCommonStyle;
import logic.approval.SelectDraft;
import logic.approval.SelectDraftDetail;
import logic.approval.SelectMyApproval;
@Controller
@RequestMapping("/approval")
public class Approval_Controller {
	
	@Autowired
	private SelectDraft sd;
	
	@RequestMapping("/selectDraft")
	public String readDraft(Model model) {
		
		model.addAttribute("list", sd.callDraftDao());
		
		return "approval/approval_draft";
	}
	
	@Autowired
	private SelectDraftDetail sdd;
	
	@RequestMapping("/selectDraftDetail")
	public String readDraftDetail(Model model, @RequestParam Integer draft_num) {
		model.addAttribute("list",sdd.callDraftDetailDao(draft_num));
		return "approval/approval_draftdetail";
		
	}
	@Autowired
	private SelectApprovalPath sap;
	@RequestMapping("/selectApprovalPath")
	public String readCommonStyle(Model model) {
		
		model.addAttribute("list", sap.callApprovalPathDao());
		
		return "approval/approval_path";
	}

	@Autowired
	private SelectCommonStyle scs;
	
	
	@RequestMapping("/selectCommon")
	public String readApprovalPath(Model model) {
		
		model.addAttribute("list", scs.callCommonStyleDao());
		
		return "approval/approval_common";
	}
	
	@Autowired
	private SelectMyApproval sma;
	
	@RequestMapping("/selectMyApproval")
	public String readMyApproval(Model model) {
		
		model.addAttribute("list", sma.callMyApproval());
		
		return "approval/approval_myApproval";
	}

}