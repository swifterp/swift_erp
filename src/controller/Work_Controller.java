package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.work.DeleteBusinessLog;
import logic.work.InsertBusinessLog;
import logic.work.SelectBusinessLog;
import logic.work.SelectClientList;
import logic.work.SelectDeptList;
import logic.work.UpdateBusinessLog;


@Controller
@RequestMapping("service/work")
public class Work_Controller {

	@Autowired
	private SelectBusinessLog sbl;
	@Autowired
	private InsertBusinessLog ibl;
	@Autowired
	private UpdateBusinessLog ubl;
	@Autowired
	private DeleteBusinessLog dbl;
	@Autowired
	private SelectClientList scl;
	@Autowired
	private SelectDeptList sdl;

	
///////-----------안전선------------수진 추가 시작//////////////////////////

//Work Business List Call
	@RequestMapping("/selectBusinessLog")
	public String selectBusinessLog(Model model) {
		model.addAttribute("list", sbl.callBusinessLogDao());
		return "work/work_BusinessLogList";
	}
//Client POP-UP Call
	@RequestMapping("/pop_clientlist")
	public String pop_client(Model model) {
		model.addAttribute("list", scl.call_pop_client());	
		return "work/pop_clientlist";
	}

//Dept POP-UP Call
	@RequestMapping("/pop_deptlist")
	public String pop_deptlist(Model model) {
		model.addAttribute("list", sdl.call_pop_deptlist());	
		return "work/pop_deptlist";
	}
//Work Business List Search
	@RequestMapping("/workDetailList")
	public String workDetailList(Model model, @RequestParam HashMap<String, String> searchData) {
		System.out.println(searchData);
		model.addAttribute("list", sbl.callworkDetailList(searchData));
		return "work/work_BusinessLogList";
	}
//Work Business Data Insert
	@RequestMapping("/insertBusinessLog")
	public String insertBusinessLog(Model model, @RequestParam HashMap<String, String> businesslog){
		model.addAttribute("list", ibl.callinsertBusinessLog(businesslog));
		return "work/work_BusinessLogList";
	}

//Work Business List Low Search
	@RequestMapping("/work_DataListLow")
	public String work_DataListLow(Model model, @RequestParam int log_no) {
		model.addAttribute("list", sbl.callwork_DataListLow(log_no));
		return "work/work_BusinessLogUpdate";
	}
//Work Business List Low Update
	@RequestMapping("/updateBusinessLog")
	public String updateBusinessLog(Model model, @RequestParam HashMap<String, String> businessdata) {
		model.addAttribute("list", ubl.callupdateBusinessLog(businessdata));
		return "work/work_BusinessLogList";
	}
//Work Business List Low Delete
	@RequestMapping("/work_BusinessLogDelete")
	public String work_BusinessLogDelete(Model model, @RequestParam int log_no) {
		model.addAttribute("list", dbl.callwork_DataDelete(log_no));
		return "work/work_BusinessLogDelete";
	}

}
