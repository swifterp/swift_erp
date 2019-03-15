package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.work.InsertBusinessLog;
import logic.work.SelectBusinessLog;
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
	public String readMonthWork(Model model) {
		
		model.addAttribute("list", smw.callMonthWorkDao());
		
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
	public String readWorkTime(Model model) {
		
		model.addAttribute("list", swt.callWorkTimeDao());
		
		return "work/work_worktime";
	}

	@Autowired
	private SelectWorkEtc swe;
	@RequestMapping("/selectWorkEtc")
	public String readWorkEtc(Model model) {
		
		model.addAttribute("list", swe.callWorkEtcDao());
		
		return "work/work_worketc";
	}
	
}
