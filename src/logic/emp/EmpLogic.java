package logic.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import controller.Emp_Controller;
import dao.emp.EmpDao;

@Service("EmpLogic")
public class EmpLogic {
	@Autowired
	private EmpDao ed;
	
	public List<Map<String, String>> callEmpListDao() {
		return ed.selectEmpList();
	}
	
	public List<Map<String,String>> empAddDao(HashMap<String, Integer> empPlus) {
		ed.empAdd(empPlus);
		return ed.selectEmpList();
	}
	
	public List<Map<String, String>> empViewDao(String empno) {		
		return ed.empView(empno);	
	}
	
	public List<Map<String, String>> empDelDao(String empno) {		
		return ed.empDel(empno);	
	}
}