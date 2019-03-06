package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/work")
public class Work_Controller {

	@RequestMapping("/project")
	public String readEmp(Model model, @RequestParam(value = "req") String test) {
		
		model.addAttribute("res", test);
		
		return "work/work_mainpage";
	}
	
}
