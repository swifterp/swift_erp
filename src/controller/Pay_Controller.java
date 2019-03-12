package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.pay.SelectAllowanceItem;
import logic.pay.SelectDeductionItem;
import logic.pay.SelectPersonalPayList;
import logic.pay.SelectSalaryCalcList;

@Controller
@RequestMapping("/pay")
public class Pay_Controller {

	@Autowired
	private SelectAllowanceItem sai;
	
	@RequestMapping("/allowance")
	public String pay_Allowance(Model model) {
				
		model.addAttribute("list", sai.callAllowanceItemDao());
		
		return "pay/pay_allowanceItem";
		
	}
	
	@Autowired
	private SelectDeductionItem sdi;
	
	@RequestMapping("/deduction")
	public String pay_Deduction(Model model) {
				
		model.addAttribute("list", sdi.callDeductionItemDao());
		
		return "pay/pay_deductionItem";
		
	}
	
	@Autowired
	private SelectSalaryCalcList ssl;
	
	@RequestMapping("/payroll")
	public String pay_Payroll(Model model) {
				
		model.addAttribute("list", ssl.callSalaryCalcDao());
		
		return "pay/pay_salaryCalcList";
		
	}
	
	@Autowired
	private SelectPersonalPayList spl;
	
	@RequestMapping("/personalPay")
	public String pay_PersonalPay(Model model, @RequestParam(value="report", defaultValue="0") String report) {
		System.out.println(report);
		model.addAttribute("list", spl.callPersonalPayDao(report));
		
		return "pay/pay_personalPayList";
		
	}
	
}