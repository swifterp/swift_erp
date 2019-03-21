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
	public String viewEmp(Model model, @RequestParam(value="emp_number", defaultValue="0") Integer emp_number) {
		model.addAttribute("list", el.empViewDao(emp_number));
		return "emp/emp_view";
	}
	
	@RequestMapping("/update")
	public String updEmp(Model model, @RequestParam HashMap<String,String> empUpd) {
		model.addAttribute("list", el.empUpdDao(empUpd));	
		return "emp/emp_mainpage";
	}	
	
	@RequestMapping("/delete")
	public String delEmp(Model model, @RequestParam(value="emp_number", defaultValue="0") Integer emp_number) {
		model.addAttribute("list", el.empDelDao(emp_number));	
		return "emp/emp_mainpage";

	}
	
	@RequestMapping("/deptRead")
	public String readDept(Model model) {
		model.addAttribute("list", el.callDeptListDao());	
		return "emp/emp_deptList";
	}
	
	@RequestMapping("/deptView")
	public String viewDept(Model model, @RequestParam(value="deptno", defaultValue="0") Integer deptno) {
		model.addAttribute("list", el.callDeptViewDao(deptno));	
		return "emp/emp_deptUpd";
	}
	
	@RequestMapping("/deptAdd")
	public String addDept(Model model, @RequestParam HashMap<String,String> deptPlus) {
		model.addAttribute("list", el.deptAddDao(deptPlus));	
		return "emp/emp_deptList";
	}
	
	@RequestMapping("/deptUpd")
	public String updDept(Model model, @RequestParam HashMap<String,String> deptUpd) {
		model.addAttribute("list", el.deptUpdDao(deptUpd));	
		return "emp/emp_deptList";
	}
	
	@RequestMapping("/deptDel")
	public String delDept(Model model, @RequestParam(value="deptno", defaultValue="0") Integer deptno) {
		model.addAttribute("list", el.callDeptListDao());	
		return "emp/emp_deptList";
	}
	
	@RequestMapping("/empNumRead")
	public String readEmpNum(Model model) {
		model.addAttribute("list", el.empNumListDao());	
		return "emp/emp_empNumUpd";
	}
	
	@RequestMapping("/empNumUpd")
	public String updEmpNum(Model model, @RequestParam(value="emp_number", defaultValue="0") Integer emp_number) {
		model.addAttribute("list", el.empNumUpdDao(emp_number));	
		return "emp/emp_empNumUpd";
	}
	
	

}