package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.attend.SelectAttendCodeT;
import logic.attend.SelectAttendManagerT;
import logic.attend.SelectHolidayCodeT;

@Controller
@RequestMapping("/attend")
public class Attend_Controller {
	
	@Autowired
	private SelectAttendManagerT samt;
	
	@RequestMapping("/attend_manager")
	public String attend_manager(Model model) {
		
		model.addAttribute("list", samt.callAttendManagerTDao());
		
		return "attend/attend_attendmanager";
	}
	
	@Autowired
	private SelectAttendCodeT sact;
	
	@RequestMapping("/attend_code")
	public String attend_code(Model model) {
		
		model.addAttribute("list", sact.callAttendCodeTDao());
		
		return "attend/attend_attendcode";
	}

	@Autowired
	private SelectHolidayCodeT shct;
	
	@RequestMapping("/holiday_code")
	public String holiday_code(Model model) {
		
		model.addAttribute("list", shct.callHolidayCodeDao());
		
		return "attend/attend_holidaycode";
	}
	
}
