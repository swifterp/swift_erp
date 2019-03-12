package controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.emp.EmpLogicTest;

@Controller
@RequestMapping("/emp")
public class Emp_Controller {
	
	@Autowired
	private EmpLogicTest elt;

	@RequestMapping("/read")
	public String readEmp(Model model) {
		List<Map<String, String>> list = elt.callDaoTest();

		model.addAttribute("list", list);
		
		return "emp/emp_mainpage";
	}

}