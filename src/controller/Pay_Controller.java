package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.pay.DeleteAllowanceItem;
import logic.pay.DeleteDeductionItem;
import logic.pay.DeletePayroll;
import logic.pay.InsertAllowanceItem;
import logic.pay.InsertDailyworkList;
import logic.pay.InsertDeductionItem;
import logic.pay.InsertPayrollList;
import logic.pay.InsertPersonalCalcList;
import logic.pay.InsertTotalCalcList;
import logic.pay.InsertUnderyearList;
import logic.pay.InsertWorkConfirm;
import logic.pay.SelectAllowanceItem;
import logic.pay.SelectDailyworkList;
import logic.pay.SelectDeductionItem;
import logic.pay.SelectPersonalPayList;
import logic.pay.SelectSalaryCalcList;
import logic.pay.SelectWorkConfirm;
import logic.pay.UpdatePayConfirmCancelList;
import logic.pay.UpdatePayConfirmList;
import logic.pay.UpdateWorkConfirmCancel;

@Controller
@RequestMapping("service/pay")
public class Pay_Controller {
	
	@RequestMapping("/allowNdeduc")
	public String pay_allowNdeduc(Model model) {
		
		model.addAttribute("deduc", sdi.callDeductionItemDao());
		model.addAttribute("allow", sai.callAllowanceItemDao(2));
		
		return "emp/emp_empAdd";
	}
	
	@Autowired
	private SelectAllowanceItem sai;
	
	@RequestMapping("/allowance")
	public String pay_Allowance(Model model, @RequestParam(value="classify", defaultValue="0") Integer classify) {
		
		model.addAttribute("list", sai.callAllowanceItemDao(classify));
		
		if(classify == 0) {
			return "pay/pay_allowanceItem";
		} else if(classify == 2) {
			return "emp/emp_empAdd";
		} else {
			return "pay/pay_dailyworkInsert";
		}
	}
	
	@Autowired
	private InsertAllowanceItem iai;
	
	@RequestMapping("/insertAllowance")
	public String pay_insertAllowance(Model model, @RequestParam(value="name", defaultValue="0") String name,
												   @RequestParam(value="division", defaultValue="0") String division) {
		
		model.addAttribute("list", iai.callInsertAllowanceDao(name, division));
		
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
	private InsertDeductionItem idi;
	
	@RequestMapping("/insertDeduction")
	public String pay_insertDeduction(Model model, @RequestParam(value="name", defaultValue="0") String name) {
		
		model.addAttribute("list", idi.callInsertDeductionDao(name));
		
		return "pay/pay_deductionItem";
		
	}
	
	@Autowired
	private DeleteDeductionItem ddi;
	
	@RequestMapping("/deleteDeduction")
	public String pay_deleteDeduction(Model model, @RequestParam(value="deduction_no", defaultValue="0") Integer deduction_no) {
				
		model.addAttribute("list", ddi.callDeleteDeductionDao(deduction_no));
		
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
		model.addAttribute("deduc", spl.callPersonalDeducDao(report));
		
		return "pay/pay_personalPayList";

	}
	
	@Autowired
	private InsertUnderyearList iul;
	
	@RequestMapping("/underyearSearch")
	public String pay_underyearSearch(Model model) {
		
		model.addAttribute("list", iul.callUnderyearDao());
		
		return "pay/pay_underyearSearch";
		
	}
	
	@RequestMapping("/underyear")
	public String pay_underyear(Model model, @RequestParam HashMap<String, Integer> percentage) {
		
		model.addAttribute("list", iul.callUnderyearDao(percentage));
		
		return "pay/pay_underyearSearch";
		
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
	public String pay_Dailywork(Model model, @RequestParam HashMap<String, String> datas) {
		
		model.addAttribute("list", idl.callDailyworkInsertDao(datas));
		
		return "pay/pay_dailyworkList";
		
	}
	
	@Autowired
	private InsertTotalCalcList itcl;
	
	@RequestMapping("/totalCalculation")
	public String pay_TotalCalc(Model model, @RequestParam(value="report", defaultValue="0") String report) {

		model.addAttribute("list", itcl.callTotalCalcDao(report));
		
		return "pay/pay_salaryCalcList";

	}
	
	@Autowired
	private InsertPersonalCalcList ipcl;
	
	@RequestMapping("/personalCalculation")
	public String pay_PersonalCalc(Model model, @RequestParam(value="report", defaultValue="0") String report
											  , @RequestParam(value="empno", defaultValue="0") String empno) {

		model.addAttribute("list", ipcl.callPersonalCalcDao(report, empno));
		
		return "pay/pay_salaryCalcList";

	}
	
	@Autowired
	private InsertWorkConfirm iwc;
	
	@RequestMapping("/insertworkconfirm")
	public String pay_InsertWorkConfirm(Model model, @RequestParam(value="year", defaultValue="error") String year
											 	   , @RequestParam(value="month", defaultValue="error") String month
											 	   , @RequestParam(value="day", defaultValue="error") String day
											 	   , @RequestParam(value="empno", defaultValue="0") String empno) {

		model.addAttribute("list", iwc.callWorkConfirmDao(year, month, day, empno));
		
		return "pay/pay_worknotconfirmlist";

	}
	
	@Autowired
	private SelectWorkConfirm swc;
	
	@RequestMapping("/selectworkconfirm")
	public String pay_SelectWorkConfirm(Model model, @RequestParam(value="year", defaultValue="error") String year
											 	   , @RequestParam(value="month", defaultValue="error") String month
											 	   , @RequestParam(value="day", defaultValue="error") String day
											 	   , @RequestParam(value="empno", defaultValue="0") String empno
											 	   , @RequestParam(value="classify", defaultValue="0") Integer classify) {
		
		List<Map<String, String>> tmp = swc.callTotalWorkConfirmDao(year, month, day, empno, classify);
		model.addAttribute("list", tmp);
		
		if(classify == 1) {
			return "pay/pay_worknotconfirmlist";
		} else if(classify == 2){
			return "pay/pay_workconfirmList";
		} else {
			return "pay/pay_workconfirmList";
		}

	}
	
	@Autowired
	private UpdatePayConfirmList upcl;
	
	@RequestMapping("/payConfirm")
	public String pay_PayConfirm(Model model, @RequestParam(value="report", defaultValue="0") String report) {

		model.addAttribute("list", upcl.callPayConfirmDao(report));
		
		return "pay/pay_salaryCalcList";

	}
	
	@Autowired
	private UpdatePayConfirmCancelList upccl;
	
	@RequestMapping("/payConfirmCancel")
	public String pay_PayConfirmCancel(Model model, @RequestParam(value="report", defaultValue="0") String report) {

		model.addAttribute("list", upccl.callPayConfirmCancelDao(report));
		
		return "pay/pay_salaryCalcList";

	}
	
	@Autowired
	private InsertPayrollList ipl;
	
	@RequestMapping("/insertPayroll")
	public String pay_InsertPayroll(Model model, @RequestParam(value="year", defaultValue="0") String year,
												 @RequestParam(value="month", defaultValue="0") String month,
												 @RequestParam(value="title", defaultValue="0") String title) {
		
		model.addAttribute("list", ipl.callInsertPayrollDao(year, month, title));
		
		return "pay/pay_salaryCalcList";

	}
	
	@Autowired
	private DeletePayroll dpi;
	
	@RequestMapping("/deletePayroll")
	public String pay_deletePayroll(Model model, @RequestParam(value="report", defaultValue="error") String report) {
				
		model.addAttribute("list", dpi.callDeletePayrollDao(report));
		
		return "pay/pay_salaryCalcList";
		
	}
	
	@Autowired
	private UpdateWorkConfirmCancel uwcc;
	
	@RequestMapping("/cancelworkconfirm")
	public String pay_cancelworkconfirm(Model model, @RequestParam(value="empno", defaultValue="0") String empno,
													 @RequestParam(value="selectedDate", defaultValue="0") String selectedDate) {

		model.addAttribute("list", uwcc.callWorkConfirmCancelDao(empno, selectedDate));
		
		return "pay/pay_workconfirmList";

	}

}