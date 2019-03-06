package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/approval")
public class Approval_Controller {
	
	@RequestMapping("/confirm")
	public String readEmp(Model model, @RequestParam(value = "req") String test) {
		
		model.addAttribute("res", test);
		
		return "approval/approval_mainpage";
	}

}