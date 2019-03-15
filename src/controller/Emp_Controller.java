package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.emp.EmpLogic;
import logic.pay.SelectPersonalPayList;
import vo.empVO;

@Controller
@RequestMapping("/emp")
public class Emp_Controller {
	@Autowired
	private EmpLogic el;

	@RequestMapping("/read")
	public String readEmp(Model model) {
		model.addAttribute("list", el.callEmpListDao());
		return "emp/emp_mainpage";
	}

	
	@RequestMapping("/add")
	public String addEmp(Model model
			 ,@RequestParam HashMap<String, Integer> empPlus) {
		model.addAttribute("list", el.empAddDao(empPlus));
		return "emp/emp_mainpage";
	}
	
	@RequestMapping("/view")
	public String viewEmp(Model model, @RequestParam(value="empno", defaultValue="0") String empno) {
		model.addAttribute("list", el.empViewDao(empno));
		return "emp/emp_view";
	}
	
	@RequestMapping("/update")
	public String updEmp(Model model, @RequestParam HashMap<String,String> empUpd) {
		model.addAttribute("list", el.empUpdDao(empUpd));	
		return "emp/emp_mainpage";
	}	
	
	@RequestMapping("/delete")
	public String delEmp(Model model, @RequestParam(value="empno", defaultValue="0") String empno) {
		model.addAttribute("list", el.empDelDao(empno));	
		return "emp/emp_mainpage";

	}

}