package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("service/welcome")
public class Welcome_Controller {

	@RequestMapping("/home")
	public String readEmp(Model model) {
		
		return "welcome/welcome";
	}
	
}
