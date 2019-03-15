package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.pay.DeleteAllowanceItem;
import logic.pay.InsertDailyworkList;
import logic.pay.InsertUnderyearList;
import logic.pay.SelectAllowanceItem;
import logic.pay.SelectDailyworkList;
import logic.pay.SelectDeductionItem;
import logic.pay.SelectMonthlyempList;
import logic.pay.SelectPersonalPayList;
import logic.pay.SelectSalaryCalcList;
import logic.pay.SelectSpecsList;

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
	private DeleteAllowanceItem dai;
	
	@RequestMapping("/deleteAllowance")
	public String pay_deleteAllowance(Model model, @RequestParam(value="allowance_no", defaultValue="0") Integer allowance_no) {
				
		model.addAttribute("yesoryes", dai.callDeleteAllowanceDao(allowance_no));
		
		return "pay/pay_deleteAllowance";
		
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

		model.addAttribute("list", spl.callPersonalPayDao(report));
		
		return "pay/pay_personalPayList";

	}
	
	@Autowired
	private SelectSpecsList sspl;
	
	@RequestMapping("/specs")
	public String pay_Specs(Model model, @RequestParam(value="empno", defaultValue="0") Integer empno) {

		model.addAttribute("list", sspl.callSpecsDao(empno));
		
		return "pay/pay_specsList";
		
	}
	
	@Autowired
	private InsertUnderyearList iul;
	
	@RequestMapping("/underyear")
	public String pay_underyear(Model model, @RequestParam HashMap<String, Integer> percentage) {
		
		model.addAttribute("list", iul.callUnderyearDao(percentage));
		
		return "pay/pay_underyearList";
		
	}

	

	
	
	
	@Autowired
	private SelectMonthlyempList sml;
	
	@RequestMapping("/monthlyemp")
	public String pay_monthlyemp(Model model, @RequestParam(value="year", defaultValue="error") String year
											, @RequestParam(value="month", defaultValue="error") String month) {
		
		model.addAttribute("list", sml.callMonthlyempDao(year, month));
		
		return "pay/pay_monthlyempList";
		
	}
	
	@Autowired
	private SelectDailyworkList sdl;
	
	@RequestMapping("/dailyworkList")
	public String pay_Dailywork(Model model, @RequestParam(value="year", defaultValue="error") String year
											, @RequestParam(value="month", defaultValue="error") String month
											, @RequestParam(value="day", defaultValue="error") String day) {
		
		model.addAttribute("list", sdl.callDailyworkListDao(year, month, day));
		
		return "pay/pay_dailyworkList";
		
	}
	
	@Autowired
	private InsertDailyworkList idl;
	
	@RequestMapping("/dailyworkInsert")
	public String pay_Dailywork(Model model, @RequestParam(value="year", defaultValue="error") String year
											, @RequestParam(value="month", defaultValue="error") String month
											, @RequestParam(value="day", defaultValue="error") String day
											, @RequestParam(value="empno", defaultValue="error") String empno
											, @RequestParam(value="night", defaultValue="error") String night
											, @RequestParam(value="weekend", defaultValue="error") String weekend
											, @RequestParam(value="annualAllowance", defaultValue="error") String annualAllowance) {
		
		model.addAttribute("list", idl.callDailyworkInsertDao(year, month, day, empno, night, weekend, annualAllowance));
		
		return "pay/pay_dailyworkList";
		
	}

}