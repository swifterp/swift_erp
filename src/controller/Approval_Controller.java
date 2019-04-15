package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracle.webservices.internal.api.EnvelopeStyle.Style;

import logic.approval.InsertApprovalData;
import logic.approval.SelectApprovalPath;
import logic.approval.SelectCommonStyle;
import logic.approval.SelectDraft;
import logic.approval.SelectDraftDetail;
import logic.approval.SelectMyApproval;
@Controller
@RequestMapping("service/approval")
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
	public String readDraftDetail(Model model, @RequestParam Integer draft_code) {
		model.addAttribute("list",sdd.callDraftDetailDao(draft_code));
		return "approval/approval_draftdetail";
		
	}
	@Autowired
	private SelectApprovalPath sap;
	@RequestMapping("/selectApprovalPath")
	public String readApprovalPath(Model model) {
		
		model.addAttribute("list", sap.callApprovalPathDao());
		
		return "approval/approval_path";
	}
	
	@RequestMapping("/insertApprovalPath")
	public String writeApprovalPath(Model model,@RequestParam HashMap<String,String> Approval_path) {
		
		model.addAttribute("list", sap.writeApprovalPathDao(Approval_path));
		
		return "approval/approval_path";
	}

	@Autowired
	private SelectCommonStyle scs;
	
	@RequestMapping("/selectCommon")
	public String readCommonStyle(Model model) {
		
		model.addAttribute("list", scs.callCommonStyleDao());
		
		return "approval/approval_common";
	}
	
	@Autowired
	private SelectMyApproval sma;
	
	@RequestMapping("/selectMyApproval")
	public String readMyApproval(Model model) {
		int EMPNO=3;
		model.addAttribute("list", sma.callMyApproval(EMPNO));
		
		return "approval/approval_myApproval";
	}
	
	@Autowired
	private InsertApprovalData iad;
	
	@RequestMapping("/approval_save")
	public String approval_save(Model model, @RequestParam HashMap<String, String> approval_data) {
		model.addAttribute("list", iad.callInsertApprovalData(approval_data));
		return "approval/approval_common";
	}
	
	
	@RequestMapping("/approval_style")
	public String approval_style(Model model, @RequestParam int style_code) {
		model.addAttribute("list", scs.callCommonStyleDao(style_code));
		model.addAttribute("list2", style_code);

		return "approval/approval_style";
	}
	
	@RequestMapping("/approval_write")
	public String approval_write(Model model, @RequestParam HashMap<String,String> approval_write) {
		model.addAttribute("list", iad.callInsertApprovalData(approval_write));
		
		return "approval/approval_style";
		
	}
	
	
	@RequestMapping("/approval_path_dept1")
	public String approval_dept1(Model model, @RequestParam int EMPNO) {
		model.addAttribute("list", sap.callApprovalPathDao1(EMPNO));
		System.out.println(EMPNO);
		return "approval/approval_pop_dept";
		
	}

}