package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.work.InsertBusinessLog;
import logic.work.SelectBusinessLog;
import logic.work.SelectClientList;
import logic.work.SelectDeptList;
import logic.work.SelectDeptStateList;
import logic.work.SelectEmpStateList;
import logic.work.SelectMonthWork;
import logic.work.SelectWorkEtc;
import logic.work.SelectWorkState;
import logic.work.SelectWorkTime;

@Controller
@RequestMapping("/work")
public class Work_Controller {

	@Autowired
	private SelectBusinessLog sbl;

	@RequestMapping("/selectBusinessLog")
	public String readBusinessLog(Model model) {
		
		model.addAttribute("list", sbl.callBusinessLogDao());
		
		return "work/work_businesslog";
	}
	
	@Autowired
	private InsertBusinessLog ibl;
	
	@RequestMapping("/insertBusinessLog")
	public String writeBusinessLog(Model model, @RequestParam HashMap<String, String> businesslog){
		
		model.addAttribute("list", ibl.writeBusinessLog(businesslog));
		
		return "work/work_businesslog";
//		return "work/work_businesslogwrite";
	}

	@Autowired
	private SelectMonthWork smw;
	
	@RequestMapping("/selectMonthWork")
	public String readMonthWork(Model model,@RequestParam String search_month) {
		
		model.addAttribute("list", smw.callMonthWorkDao(search_month));
		
		return "work/work_monthwork";
	}
	@Autowired
	private SelectWorkState sws;
	@RequestMapping("/selectWorkState")
	public String readWorkState(Model model) {
		
		model.addAttribute("list", sws.callWorkStateDao());
		
		return "work/work_workstate";
	}

	
	@Autowired
	private SelectWorkTime swt;
	@RequestMapping("/selectWorkTime")
	public String readWorkTime(Model model, @RequestParam String search_day) {
		
		model.addAttribute("list", swt.callWorkTimeDao(search_day));
		
		return "work/work_worktime";
	}

	@Autowired
	private SelectWorkEtc swe;
	@RequestMapping("/selectWorkEtc")
	public String readWorkEtc(Model model) {
		
		model.addAttribute("list", swe.callWorkEtcDao());
		
		return "work/work_worketc";
	}
	
	@Autowired
	private SelectClientList scl;
	@RequestMapping("/selectClientList")
	public String readClientList(Model model, @RequestParam String clientName) {
		
		model.addAttribute("list",scl.CallClientListDao(clientName));
	
		return "work/work_businesslog";
	}
	@Autowired
	private SelectDeptList sdl;
	@RequestMapping("/selectDeptList")
	public String readDeptList(Model model, @RequestParam String deptName) {
		
		model.addAttribute("list",sdl.CallDeptListDao(deptName));
		
		return "work/work_businesslog";
	}
	
	@Autowired
	private SelectDeptStateList sds;
	@RequestMapping("/selectDeptStateList")
	public String readDeptStateList(Model model, @RequestParam String DEPT_NAME) {
		
		model.addAttribute("list",sds.callDeptStateDao(DEPT_NAME));
		
		return "work/work_workdeptstate";
	}
	
	@Autowired
	private SelectEmpStateList ses;
	@RequestMapping("/selectEmpStateList")
	public String readEmpStateList(Model model, @RequestParam String EMP_NAME) {
		
		model.addAttribute("list",ses.callEmpStateDao(EMP_NAME));
		
		return "work/work_workempstate";
	}
	
	
}
