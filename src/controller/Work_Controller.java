package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.work.SelectBusinessLog;
import logic.work.SelectMonthWork;

@Controller
@RequestMapping("/work")
public class Work_Controller {

	@Autowired
	private SelectBusinessLog sbl;
	
	@Autowired
	private SelectMonthWork smw;
	
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
	
}
