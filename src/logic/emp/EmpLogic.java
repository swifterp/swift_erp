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
import resources.mapper.updateListMapper;

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
	
	public List<Map<String, String>> empViewDao(Integer emp_number) {		
		return ed.empView(emp_number);	
	}

	public List<Map<String, String>> empUpdDao(HashMap<String, String> empUpd) {		
		return ed.empUpd(empUpd);	
	}
	
	public int empDelDao(Integer emp_number) {		
		return ed.empDel(emp_number);	
	}
	
	public List<Map<String, String>> empNumListDao() {		
		return ed.empNumList();	
	}

	public List<Map<String, String>> callAppointListDao() {
		return ed.selectAppointList();	
	}
	
	public List<Map<String, String>> callEmpDeptListDao() {		
		return ed.selectEmpDeptList();	
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

	public List<Map<String, String>> appointViewDao(Integer emp_appoint_no) {
		return ed.appointView(emp_appoint_no);
	}

	public int checkEmpNum(String emp_number) {
		return ed.checkEmpNum(emp_number);
	}

	public int rankAddDao(HashMap<String, String> rankPlus) {
		return ed.rankAdd(rankPlus);		
	}

	public int dutyAddDao(HashMap<String, String> dutyPlus) {
		return ed.dutyAdd(dutyPlus);	
	}

	public int bankAddDao(HashMap<String, String> bankPlus) {
		return ed.bankAdd(bankPlus);	
	}
}