package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@Autowired
	private SelectMonthWork smw;
	
	@Autowired
	private SelectWorkState sws;
	
	@Autowired
	private SelectWorkTime swt;
	
	@Autowired
	private SelectWorkEtc swe;
	
	@RequestMapping("/selectBusinessLog")
	public String readBusinessLog(Model model) {
		
		model.addAttribute("list", sbl.callBusinessLogDao());
		
		return "work/work_businesslog";
	}
	
	@RequestMapping("/selectMonthWork")
	public String readMonthWork(Model model) {
		
		model.addAttribute("list", smw.callMonthWorkDao());
		
		return "work/work_monthwork";
	}
	
	@RequestMapping("/selectWorkState")
	public String readWorkState(Model model) {
		
		model.addAttribute("list", sws.callWorkStateDao());
		
		return "work/work_workstate";
	}
	
	@RequestMapping("/selectWorkTime")
	public String readWorkTime(Model model) {
		
		model.addAttribute("list", swt.callWorkTimeDao());
		
		return "work/work_worktime";
	}
	
	@RequestMapping("/selectWorkEtc")
	public String readWorkEtc(Model model) {
		
		model.addAttribute("list", swe.callWorkEtcDao());
		
		return "work/work_worketc";
	}
	
}
