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

	public List<Map<String, String>> empView(Integer emp_number) {
		return slm.getEmpView(emp_number);
	}
	
	public List<Map<String, String>> selectDeptList() {
		return slm.getDeptList();
	}
	
	public List<Map<String, String>> empNumList() {
		slm.getEmpNumList();
		return slm.getEmpNumList();
	}

	@Autowired
	private insertListMapper ilm;
	public List<Map<String, String>> empAdd(HashMap<String, Integer> empPlus) {
		ilm.empAdd(empPlus);
		return slm.getEmpList();
	}
	
	public List<Map<String, String>> deptAdd(HashMap<String, String> deptPlus) {
		ilm.deptAdd(deptPlus);
		return slm.getDeptList();
	}

	@Autowired
	private updateListMapper ulm;
	public List<Map<String, String>> empUpd(HashMap<String, String> empUpd) {
		ulm.getEmpUpd(empUpd);
		return slm.getEmpList();
	}
	
	public List<Map<String, String>> empNumUpd(Integer emp_number) {
		ulm.getEmpNumUpd(emp_number);
		return slm.getEmpNumList();
	}

	public List<Map<String, String>> deptUpd(Integer deptno) {
		ulm.getDeptUpd(deptno);
		return slm.getEmpList();
	}
	
	@Autowired
	private deleteListMapper dlm;
	public int empDel(Integer emp_number) {
		return dlm.getEmpDel(emp_number);
	}

	
	public List<Map<String, String>> deptDel(Integer deptno) {
		dlm.getDeptDel(deptno);
		return slm.getDeptList();
	}
}
