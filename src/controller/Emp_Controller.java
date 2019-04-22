package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import logic.emp.EmpLogic;
import logic.pay.PersonalpayinfoList;
import logic.pay.SelectAllowanceItem;
import logic.pay.SelectDeductionItem;

@Controller
@RequestMapping("service/emp")
public class Emp_Controller {
	@Autowired
	private EmpLogic el;

	@RequestMapping("/read")
	public String readEmp(Model model, @RequestParam(value="classify", defaultValue="nochat") String classify
									 , @RequestParam(value="empno", defaultValue="0") String empno) {
		
		if(classify.equals("nochat")) {
			model.addAttribute("list", el.callEmpListDao());
			return "emp/emp_mainpage";
		} else if(classify.equals("search")) {
			List<Map<String, String>> tmp = el.callSearchEmpDao(empno);
			model.addAttribute("list", tmp);
			return "chat/chat_emplist";
		} else {
			model.addAttribute("list", el.callEmpListDao());
			return "chat/chat_emplist";
		}
	}
	
	@RequestMapping("/retiredemp")
	public String retiredEmp(Model model) {
		
		model.addAttribute("list", el.callRetiredEmpListDao());

		return "emp/emp_retiredEmp";
		
	}
	
	@RequestMapping("/add")
	public String addEmp(Model model
			 ,@RequestParam HashMap<String, String> empPlus) {
		model.addAttribute("list", el.empAddDao(empPlus));
		return "emp/emp_mainpage";
	}
	
	@Autowired
	private PersonalpayinfoList ppil;
	
	@Autowired
	private SelectAllowanceItem sai;
	@Autowired
	private SelectDeductionItem sdi;
	
	@RequestMapping("/view")
	public String viewEmp(Model model, @RequestParam(value="emp_number", defaultValue="0") Integer emp_number) {
		
		List<Map<String, String>> tmp1 = ppil.callpayinfoDao(emp_number);
		List<Map<String, String>> tmp2 = ppil.calldeducinfoDao(emp_number);
		
		model.addAttribute("allow", sai.callAllowanceItemDao(2));
		model.addAttribute("deduc", sdi.callDeductionItemDao());
		
		model.addAttribute("allow_value", tmp1);
		model.addAttribute("deduc_value", tmp2);
		
		model.addAttribute("list", el.empViewDao(emp_number));
		return "emp/emp_empView";
	}
	
	@RequestMapping("/update")
	public String updEmp(Model model, @RequestParam HashMap<String,String> empUpd) {
		model.addAttribute("list", el.empUpdDao(empUpd));
		return "emp/emp_mainpage";
	}	
	
	@RequestMapping("/delete")
	public String delEmp(Model model, @RequestParam(value="emp_number", defaultValue="0") Integer emp_number) {
		model.addAttribute("list", el.empDelDao(emp_number));	
		return "emp/emp_empDelete";

	}
	
	@RequestMapping("/appointRead")
	public String readAppoint(Model model) {
		model.addAttribute("list", el.callAppointListDao());	
		return "emp/emp_appointList";
	}
	
	@RequestMapping("/appointView")
	public String viewAppoint(Model model, @RequestParam(value="emp_appoint_no", defaultValue="0") Integer emp_appoint_no) {
		model.addAttribute("list", el.appointViewDao(emp_appoint_no));	
		return "emp/emp_appointView";
	}
	
	@RequestMapping("/appointAdd")
	public String addAppoint(Model model, @RequestParam HashMap<String, String> appointPlus) {
		model.addAttribute("list", el.appointAddDao(appointPlus));	
		return "emp/emp_appointList";
	}
	
	@RequestMapping("/appointUpd")
	public String updAppoint(Model model, @RequestParam HashMap<String, String> appointUpd) {
		model.addAttribute("list", el.appointUpdDao(appointUpd));	
		return "emp/emp_appointList";
	}
	
	@RequestMapping("/appointDel")
	public String delAppoint(Model model, @RequestParam(value="emp_appoint_no", defaultValue="0") Integer emp_appoint_no) {
		model.addAttribute("list", el.appointDelDao(emp_appoint_no));	
		return "emp/emp_appointList";
	}

	@RequestMapping("/empNumRead")
	public String readEmpNum(Model model) {
		model.addAttribute("list", el.empNumListDao());	
		return "emp/emp_empNumUpd";
	}
	
	@RequestMapping("/empSearchNumName")
	public String selectEmpInfoSearch(Model model, @RequestParam String empinfo) {
		model.addAttribute("list", el.empInfoSearch(empinfo));
		return "emp/emp_mainpage";
	}
	
	@RequestMapping("/retiredempSearchNumName")
	public String selectretiredEmpInfoSearch(Model model, @RequestParam String empinfo) {
		model.addAttribute("list", el.retiredempInfoSearch(empinfo));
		return "emp/emp_retiredEmp";
	}
	
	@RequestMapping("/pop_deptRead")
	public String pop_readDept(Model model) {
		System.out.println("Test");
		model.addAttribute("list", el.callEmpDeptListDao());	
		return "emp/pop_dept";
	}
	
	@RequestMapping("/pop_rankRead")
	public String pop_readRank(Model model) {
		model.addAttribute("list", el.callRankListDao());	
		return "emp/pop_rank";
	}
	
	@RequestMapping("/pop_dutyRead")
	public String pop_readDuty(Model model) {
		model.addAttribute("list", el.callDutyListDao());	
		return "emp/pop_duty";
	}
	
	@RequestMapping("/pop_bankRead")
	public String pop_readBank(Model model) {
		model.addAttribute("list", el.callBankListDao());	
		return "emp/pop_bank";
	}
	
	@RequestMapping("/pop_empRead")
	public String pop_readEmp(Model model) {
		model.addAttribute("list", el.callEmpListDao());	
		return "emp/pop_emp";
	}

	@RequestMapping("/deptAdd")
	public String addDept(Model model, @RequestParam HashMap<String,String> deptPlus) {
		model.addAttribute("list", el.deptAddDao(deptPlus));	
		return "emp/emp_etcCodeAdd";
	}
	
	@RequestMapping("/deptUpd")
	public String updDept(Model model, @RequestParam HashMap<String,String> deptUpd) {
		model.addAttribute("list", el.deptUpdDao(deptUpd));	
		return "emp/emp_etcCodeAdd";
	}
	@RequestMapping("/rankUpd")
	public String updRank(Model model, @RequestParam HashMap<String,String> rankUpd) {
		model.addAttribute("list", el.rankUpdDao(rankUpd));	
		return "emp/emp_etcCodeAdd";
	}
	@RequestMapping("/dutyUpd")
	public String updDuty(Model model, @RequestParam HashMap<String,String> dutyUpd) {
		model.addAttribute("list", el.dutyUpdDao(dutyUpd));	
		return "emp/emp_etcCodeAdd";
	}
	@RequestMapping("/bankUpd")
	public String updBank(Model model, @RequestParam HashMap<String,String> bankUpd) {
		model.addAttribute("list", el.bankUpdDao(bankUpd));	
		return "emp/emp_etcCodeAdd";
	}
	
    @ResponseBody
    @RequestMapping(value = "/checkEmpNum", method = RequestMethod.POST)
    public String checkEmpNum(HttpServletRequest request, Model model) {
        String emp_number = request.getParameter("emp_number");
        int rowcount = el.checkEmpNum(emp_number);
        return String.valueOf(rowcount);
    }

	
    @ResponseBody
    @RequestMapping(value = "/checkDeptNum", method = RequestMethod.POST)
    public String checkDeptNum(HttpServletRequest request, Model model) {
    	String dept_no = request.getParameter("dept_no");
        int rowcount = el.checkDeptNum(dept_no);
        return String.valueOf(rowcount);
    }
	
    @ResponseBody
    @RequestMapping(value = "/checkRankNum", method = RequestMethod.POST)
    public String checkRankNum(HttpServletRequest request, Model model) {
    	String rank_no = request.getParameter("rank_no");
    	int rowcount = el.checkRankNum(rank_no);
        return String.valueOf(rowcount);
    }
	
    @ResponseBody
    @RequestMapping(value = "/checkDutyNum", method = RequestMethod.POST)
    public String checkDutyNum(HttpServletRequest request, Model model){
    	String duty_no = request.getParameter("duty_no");
    	int rowcount = el.checkDutyNum(duty_no);
        return String.valueOf(rowcount);
    }
	
    @ResponseBody
    @RequestMapping(value = "/checkBankNum", method = RequestMethod.POST)
    public String checkBankNum(HttpServletRequest request, Model model) {
    	String bank_no = request.getParameter("bank_no");
        int rowcount = el.checkBankNum(bank_no);
        return String.valueOf(rowcount);
    }
    
	@RequestMapping("/rankAdd")
	public String addRank(Model model, @RequestParam HashMap<String,String> rankPlus) {
		model.addAttribute("list", el.rankAddDao(rankPlus));	
		return "emp/emp_etcCodeAdd";
	}
    
	@RequestMapping("/dutyAdd")
	public String addDuty(Model model, @RequestParam HashMap<String,String> dutyPlus) {
		model.addAttribute("list", el.dutyAddDao(dutyPlus));	
		return "emp/emp_etcCodeAdd";
	}
    
	@RequestMapping("/bankAdd")
	public String addBank(Model model, @RequestParam HashMap<String,String> bankPlus) {
		model.addAttribute("list", el.bankAddDao(bankPlus));	
		return "emp/emp_etcCodeAdd";
	}
	
	@RequestMapping("/listView")
	public String empPrintList(Model model, @RequestParam HashMap<String,String> empInfo) {
		model.addAttribute("list", el.getEmpPrintList(empInfo));	
		return "emp/emp_listView";
	}


	@RequestMapping("/canvasjschart")
	public String springMVC(ModelMap modelMap) {
		List<List<Map<Object, Object>>> canvasjsDataList = el.getCanvasjsChartData();
		List<List<Map<Object, Object>>> canvasjsDataList2 = el.getCanvasjsChartData2();
		modelMap.addAttribute("dataPointsList", canvasjsDataList);
		modelMap.addAttribute("dataPointsList2", canvasjsDataList2);
		return "emp/emp_chart";
	}


}