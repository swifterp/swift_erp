package logic.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	public List<Map<String, String>> empViewDao(Integer emp_number, Integer empno) {		
		return ed.empView(emp_number, empno);	
	}

	public List<Map<String, String>> empUpdDao(HashMap<String, String> empUpd) {		
		return ed.empUpd(empUpd);	
	}
	
	public int empDelDao(Integer emp_number, Integer empno) {		
		return ed.empDel(emp_number, empno);	
	}
	
	public List<Map<String, String>> empNumListDao() {		
		return ed.empNumList();	
	}

	public List<Map<String, String>> callAppointListDao() {
		return ed.selectAppointList();	
	}
	
	public List<Map<String, String>> callDeptListDao() {		
		return ed.selectDeptList();	
	}
	
	public List<Map<String, String>> callDeptViewDao(Integer deptno) {		
		return ed.deptView(deptno);	
	}

	public List<Map<String, String>> deptAddDao(HashMap<String, String> deptPlus) {		
		return ed.deptAdd(deptPlus);
	}
	
	public List<Map<String, String>> deptUpdDao(HashMap<String, String> deptUpd) {		
		return ed.deptUpd(deptUpd);
	}
	
	public int deptDelDao(Integer deptno) {		
		return ed.deptDel(deptno);
	}
	
	public List<Map<String, String>> empInfoSearch(String empInfo){
		return ed.selectEmpData(empInfo);
	}

	public List<Map<String, Integer>> empNumCheck(Integer emp_number) {
		return ed.empNumCheck(emp_number);
	}
	
	public List<Map<String, String>> callRankListDao() {		
		return ed.selectRankList();	
	}
	
	public List<Map<String, String>> callDutyListDao() {		
		return ed.selectDutyList();	
	}
	
	public List<Map<String, String>> callBankListDao() {		
		return ed.selectBankList();	
	}

	public List<Map<String, String>> appointAddDao(HashMap<String, String> appointPlus) {
		ed.appointAdd(appointPlus);
		return ed.selectAppointList();	
	}

	public List<Map<String, String>> appointUpdDao(HashMap<String, String> appointUpd) {
		ed.appointUpd(appointUpd);
		return ed.selectAppointList();	
	}

	public List<Map<String, String>> appointDelDao(Integer emp_appoint_no) {
		ed.appointDel(emp_appoint_no);
		return ed.selectAppointList();	
	}

	public  List<Map<String, String>> appointViewDao(Integer emp_appoint_no) {
		ed.appointView(emp_appoint_no);
		return ed.selectAppointList();
	}

	
}