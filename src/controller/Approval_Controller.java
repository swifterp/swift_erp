package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@Autowired
	private InsertApprovalData iad;
	
	@RequestMapping("/selectDraft")
	public String readDraft(Model model) {
		
		model.addAttribute("list", sd.callDraftDao());
		
		return "approval/approval_draft";
	}
	
	@RequestMapping("/insertDraft")
	public void writeDraft(Model model,@RequestParam HashMap<String,String> draft) {
		model.addAttribute("list",iad.callInsertApprovalData(draft));
	}
	
	@RequestMapping("/draftSearch")
	public String searchDraft(Model model,@RequestParam int draft_code) {
		
		model.addAttribute("list",sd.callDraftDao(draft_code));
		
		return "approval/approval_draft";
	}
	
	  @RequestMapping("/approval_write") 
	  public String approval_write(Model model,
			  			@RequestParam (value="empno")String empno,
			  			@RequestParam (value="style_code")String style_code,
			  			@RequestParam (value="reference_empno") List<String> reference_empno,
					  	@RequestParam (value="draft_data")String draft_data,
					  	@RequestParam (value="draft_no") String draft_no) 
	  {
		  List<HashMap<String,Integer>> reference = new ArrayList<HashMap<String,Integer>>();
		  HashMap<String,Integer> ref;
		  System.out.println("컨트롤층 배열크기"+reference_empno.size());
		  System.out.println("컨트롤층 배열의 내용"+reference_empno);
		  for(int i=0; i<reference_empno.size(); i++) 
		  {
			  ref = new HashMap<String,Integer>();
			  System.out.println("컨트롤단계 맵에 넣기전 결제자들의 사번 : " + reference_empno.get(i));
			  ref.put("reference_list",Integer.parseInt(reference_empno.get(i)));
			  ref.put("draft_no",Integer.parseInt(draft_no));
			  ref.put("path_order",i+1);
			  System.out.println("컨트롤단계 reference_empno : "+ref.get("reference_list"));
			  System.out.println("컨트롤단계 draft_no"+ref.get("draft_no"));
			  System.out.println("컨트롤단계 path_order"+ref.get("path_order"));
			  reference.add(ref);
		  }
		  
	  model.addAttribute("list", iad.callInsertApprovalData(empno,
			  style_code,
			  reference, 
			  draft_data,
			  draft_no));
	  
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
	public String readApprovalPath(Model model, @RequestParam Integer draft_code) {
		
		model.addAttribute("list", sap.callApprovalPathDao(draft_code));
		
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
	public String readMyApproval(Model model, @RequestParam int EMPNO) {
		model.addAttribute("list", sma.callMyApproval(EMPNO));
		
		return "approval/approval_myApproval";
	}
	
	
	@RequestMapping("/approval_style")
	public String approval_style(Model model, @RequestParam int style_code) {
		model.addAttribute("style", scs.callCommonStyleDao(style_code));
		model.addAttribute("list2", style_code);

		return "approval/approval_style";
	}
	
	
	@RequestMapping("/approval_path_dept1")
	public String approval_dept1(Model model, @RequestParam(value="EMPNO") int EMPNO,
											@RequestParam(value="idValue") int idValue) {
		model.addAttribute("list", sap.callApprovalPathDao1(EMPNO));
		model.addAttribute("i",idValue);
		return "approval/approval_pop_dept";
	}
	
	@RequestMapping("/updateDraft")
	public String updateDraft(Model model,@RequestParam int draft_code){
		
		model.addAttribute("list",sdd.callDraftDetailDao(draft_code));
		return "approval/approval_state";
		
	}
	
	@RequestMapping("/updateDraftState")
	public String updateDraftState(Model model, @RequestParam (value="draft_code")int draft_code,
												@RequestParam (value="state")int state,
												@RequestParam (value="empno")int empno){
		//model.addAttribute("list",iad.UpdateDraft(draft_code, state,empno));
		iad.UpdateDraft(draft_code, state,empno);
		
		return "approval/approval_gomyapproval";
	}

}