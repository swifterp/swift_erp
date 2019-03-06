package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/pay")
public class Pay_Controller {
	
	@RequestMapping("/allowance")
	public String pay_Main(Model model, @RequestParam(value = "req") String paytest) {
		
		model.addAttribute("res", paytest);
		
		return "pay/pay_mainpage";
		
	}
	
}