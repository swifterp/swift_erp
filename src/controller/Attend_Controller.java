package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.attend.DeleteAttendData;
import logic.attend.InsertAttendData;
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
	
	@Autowired
	private InsertAttendData iad;
	
	@RequestMapping("/attendpass")
	public String attend_pass(Model model, @RequestParam HashMap<String, Integer> attendplus) {

		model.addAttribute("list", iad.callAttendAddDao(attendplus));
		
		return "attend/attend_attendpass";
		
	}
	
	@Autowired
	private DeleteAttendData dad;
	@RequestMapping("/attenddelete")
	public String attend_delete(Model model, @RequestParam Integer attend_no) {
		System.out.println(attend_no);
		model.addAttribute("list", dad.callAttendDeleteDao(attend_no));
		return "attend/attend_attenddelete";
	}
	
}
