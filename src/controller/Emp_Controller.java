package controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.emp.EmpLogic;
import logic.pay.SelectAllowanceItem;
import logic.pay.SelectSalaryCalcList;

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
	public String addEmp(Model model) {
		model.addAttribute("list", el.EmpAddDao());
		return "emp/emp_add";
	}
}