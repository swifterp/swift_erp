package dao.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import controller.Emp_Controller;
import resources.mapper.deleteListMapper;
import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("EmpDao")
public class EmpDao {
	@Autowired
	private selectListMapper slm;

	public List<Map<String, String>> selectEmpList() {
		return slm.getEmpList();
	}

	public List<Map<String, String>> empView(String emp_number) {
		return slm.getEmpView(emp_number);
	}
	
	public List<Map<String, String>> selectDeptList() {
		return slm.getDeptList();
	}

	@Autowired
	private insertListMapper ilm;
	public List<Map<String, String>> empAdd(HashMap<String, Integer> empPlus) {
		ilm.empAdd(empPlus);
		return slm.getEmpList();
	}

	@Autowired
	private updateListMapper ulm;
	public List<Map<String, String>> empUpd(HashMap<String, String> empUpd) {
		ulm.getEmpUpd(empUpd);
		return slm.getEmpList();
	}
	

	@Autowired
	private deleteListMapper dlm;
	public List<Map<String, String>> empDel(String emp_number) {
		return dlm.getEmpDel(emp_number);
	}
}
