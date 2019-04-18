package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.attend.DeleteAttendCodeT;
import logic.attend.DeleteAttendData;
import logic.attend.InsertAttendCodeT;
import logic.attend.InsertAttendData;
import logic.attend.SelectAttendCodeT;
import logic.attend.SelectAttendManagerT;
import logic.attend.UpdateAttendCodeT;
import logic.attend.UpdateAttendLow;

@Controller
@RequestMapping("service/attend")
public class Attend_Controller {
	
//////////////////////attend_manager start///////////////////////////
	@Autowired
	private SelectAttendManagerT samt;
	@Autowired
	private UpdateAttendLow ual;
	@Autowired
	private InsertAttendData iad;
	@Autowired
	private DeleteAttendData dad;

	
//View Attend Data List
	@RequestMapping("/attend_DataList")
	public String attend_DataList(Model model) {
		model.addAttribute("list", samt.callAttendManagerTDao());
		return "attend/attend_DataList";
	}
//Call Attend Data One Low
	@RequestMapping("/attend_DataListLow")
	public String attend_DataListLow(Model model, @RequestParam Integer attendno) {
		System.out.println(attendno);
		model.addAttribute("list", samt.callAttendDataLowDao(attendno));
		return "attend/attend_DataUpdate";
	}
//Update Attend Data
	@RequestMapping("/attend_DataUpdate")
	public String attend_DataUpdate(Model model, @RequestParam HashMap<String, String> attendInsert) {
		model.addAttribute("list", ual.callUpdateAttendDataDao(attendInsert));
		return "attend/attend_DataList";
	}
//Insert Attend Data
	@RequestMapping("/attend_DataInsert")
	public String attendDataInsert(Model model, @RequestParam HashMap<String, String> attendDPlus) {
		model.addAttribute("list", iad.callInsertAttendDataDao(attendDPlus));
		return "attend/attend_DataList";
	}
//Delete Attend Data
	@RequestMapping("/attend_DataDelete")
	public String attend_DataDelete(Model model, @RequestParam Integer attend_no) {
		System.out.println(attend_no);
		model.addAttribute("list", dad.callDeleteAttendDataDao(attend_no));
		return "attend/attend_DataDelete";
	}
//Call Attend Data Details
	@RequestMapping("/attend_DetailData")
	public String attend_DetailData(Model model, @RequestParam HashMap<String, String> DetailInfo) {
		model.addAttribute("list", samt.callAttendDetailListDao(DetailInfo));
		return "attend/attend_DataList";
	}
	
//////////////////////attend_manager end///////////////////////////
	
//////////////////////////attend code start/////////////////////
	@Autowired
	private SelectAttendCodeT sact;
	@Autowired
	private InsertAttendCodeT iact;
	@Autowired
	private DeleteAttendCodeT dact;
	@Autowired
	private UpdateAttendCodeT uact;
	
//View Attend Code List
	@RequestMapping("/attend_CodeList")
	public String attend_CodeList(Model model) {
		model.addAttribute("list", sact.callAttendCodeTDao());
		return "attend/attend_CodeList";
	}
	
//Call Attend Code One Low
	@RequestMapping("/attend_CodeLow")
	public String attend_CodeLow(Model model, @RequestParam Integer attend_code) {
		model.addAttribute("list", sact.callAttendCodeLowDao(attend_code));
		return "attend/attend_CodeUpdate";
	}

//Insert Attend Code
	@RequestMapping("/attend_CodeInsert")
	public String attend_CodeInsert(Model model, @RequestParam HashMap<String, String> attendCPlus) {
		model.addAttribute("list", iact.callInsertAttendCodeDao(attendCPlus));
		return "attend/attend_CodeList";
	}
	
//Delete Attend Code
	@RequestMapping("/attend_CodeDelete")
	public String attend_CodeDelete(Model model, @RequestParam Integer attend_code) {
		model.addAttribute("list", dact.callDeleteAttendCodeDao(attend_code));
		return "attend/attend_CodeDelete";
	}
	
//Update Attend Code
	@RequestMapping("/attend_CodeUpdate")
	public String attend_CodeUpdate(Model model,  @RequestParam HashMap<String, String> attendCInsert) {
		System.out.println(attendCInsert);
		model.addAttribute("list", uact.callUpdateAttendCodeDao(attendCInsert));
		return "attend/attend_CodeList";
	}
//Call Attend Code Details	
	@RequestMapping("/attend_DetailCode")
	public String attend_DetailCode(Model model, @RequestParam HashMap<String, String> DetailCodeInfo) {
		System.out.println(DetailCodeInfo);
		model.addAttribute("list", sact.callAttendCodeDetailListDao(DetailCodeInfo));
		return "attend/attend_CodeList";
	}
	
//////////////////////////attend code end/////////////////////
//popup attend_code search
	@RequestMapping("/pop_attendCodeRead")
	public String pop_attendcode(Model model) {
		model.addAttribute("list", sact.callAttendCodepop());	
		return "attend/pop_attendcode";
	}
///출근 기록
	@RequestMapping("/insertWorkStart")
	public String readWorkStart(Model model, @RequestParam int EMPNO) {
		System.out.println(EMPNO);
		model.addAttribute("state",iad.writeWorkStart(EMPNO));
		return "attend/attend_StartEnd";
	}
///////퇴근기록
	@RequestMapping("/insertWorkEnd")
	public String readWorkEnd(Model model, @RequestParam int EMPNO) {
		System.out.println(EMPNO);
		model.addAttribute("state",iad.writeWorkEnd(EMPNO));
		return "attend/attend_StartEnd";
	}

}
