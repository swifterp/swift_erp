package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.pay.InsertAllowanceItem;

@Controller
@RequestMapping("/pay")
public class Pay_Controller {

	@Autowired
	private InsertAllowanceItem iai;
	
	@RequestMapping("/allowance")
	public String pay_Allowance(Model model) {
				
		model.addAttribute("list", iai.callAllowanceItemDao());
		
		return "pay/pay_allowanceItem";
		
	}
	
}