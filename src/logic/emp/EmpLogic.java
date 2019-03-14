package logic.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import controller.Emp_Controller;
import dao.emp.EmpDao;

@Service("EmpLogic")
public class EmpLogic {
	@Autowired
	private EmpDao ed;
	
	public List<Map<String, String>> callEmpListDao() {
		return ed.selectEmpList();
	}
	
	public void empAddDao(List<Map<String,String>> empList) {
		ed.empAdd(empList);
	}
}
