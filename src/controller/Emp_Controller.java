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
			,@ModelAttribute List<Map<String,String>> EmpList) {
		model.addAttribute("list", el.empAddDao(EmpList));
		return "emp/emp_add";
	}
}