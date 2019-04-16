package logic.emp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.emp.EmpDao;
import dao.pay.AllowanceItemDao;
import dao.pay.DeductionItemDao;
import dao.pay.DeletepayinfoDao;
import dao.pay.InsertpayinfoDao;

@Service("EmpLogic")
public class EmpLogic {
	
	@Autowired
	private EmpDao ed;
	
	@Autowired
	private InsertpayinfoDao ipid;
	
	@Autowired
	private DeductionItemDao did;
	
	@Autowired
	private AllowanceItemDao aid;
	
	public List<Map<String, String>> callEmpListDao() {
		return ed.selectEmpList();
	}
	
	public List<Map<String,String>> empAddDao(HashMap<String, String> empPlus) {

		String newEmpno = "";
		
		List<Map<String,String>> result = ed.empAdd(empPlus);
		
		for(int i=0;i<result.size();i++) {
			if(String.valueOf(result.get(i).get("EMP_NUMBER")).equals(empPlus.get("emp_number"))) {
				newEmpno = String.valueOf(result.get(i).get("EMPNO"));
			}
		}

		List<Map<String,String>> deductmp = did.selectDeductionList();
		List<Map<String,String>> allowtmp = aid.selectAllowanceList(2);
		
		Set<String> tmp = empPlus.keySet();
		Iterator<String> temp = tmp.iterator();
		
		while(temp.hasNext()) {
			String tempor = temp.next();
			for(int i=0;i<allowtmp.size();i++) {
				if(tempor.equals("allowance_name"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))) {
					Map<String, String> allow = new HashMap<String, String>();
					allow.put("empno", newEmpno);
					allow.put("allowance_no", String.valueOf(String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO"))));
					allow.put("allowance_name", String.valueOf(empPlus.get("allowance_name"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))));
					allow.put("allowance_division", String.valueOf(empPlus.get("allowance_division"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))));
					allow.put("payinfo_price", String.valueOf(empPlus.get("payinfo_price"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))));
					ipid.insertpayinfolist(allow);
				}
			}

			for(int i=0;i<deductmp.size();i++) {
				if(tempor.equals("deduction_name"+String.valueOf(deductmp.get(i).get("DEDUCTION_NO")))) {
					Map<String, String> deduc = new HashMap<String, String>();
					deduc.put("empno", newEmpno);
					deduc.put("deduction_no", String.valueOf(deductmp.get(i).get("DEDUCTION_NO")));
					deduc.put("deduction_name", String.valueOf(empPlus.get("deduction_name"+String.valueOf(deductmp.get(i).get("DEDUCTION_NO")))));
					deduc.put("deducinfo_price", String.valueOf(empPlus.get("deducinfo_price"+String.valueOf(deductmp.get(i).get("DEDUCTION_NO")))));
					ipid.insertdeducinfolist(deduc);
				}
			}
		}

		return result;
	}
	
	public List<Map<String, String>> empViewDao(Integer emp_number) {
	
		return ed.empView(emp_number);	
	}

	public List<Map<String, String>> empUpdDao(HashMap<String, String> empUpd) {
		
		String newEmpno = "";
		
		List<Map<String,String>> result = ed.empUpd(empUpd);
		
		for(int i=0;i<result.size();i++) {
			if(String.valueOf(result.get(i).get("EMP_NUMBER")).equals(empUpd.get("emp_number"))) {
				newEmpno = String.valueOf(result.get(i).get("EMPNO"));
			}
		}

		List<Map<String,String>> deductmp = did.selectDeductionList();
		List<Map<String,String>> allowtmp = aid.selectAllowanceList(2);
		
		Set<String> tmp = empUpd.keySet();
		Iterator<String> temp = tmp.iterator();
		
		while(temp.hasNext()) {
			String tempor = temp.next();
			for(int i=0;i<allowtmp.size();i++) {
				if(tempor.equals("allowance_name"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))) {
					Map<String, String> allow = new HashMap<String, String>();
					allow.put("empno", newEmpno);
					allow.put("allowance_no", String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")));
					allow.put("allowance_name", String.valueOf(empUpd.get("allowance_name"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))));
					allow.put("allowance_division", String.valueOf(empUpd.get("allowance_division"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))));
					allow.put("payinfo_price", String.valueOf(empUpd.get("payinfo_price"+String.valueOf(allowtmp.get(i).get("ALLOWANCE_NO")))));
					ipid.insertpayinfolist(allow);
				}
			}

			for(int i=0;i<deductmp.size();i++) {
				if(tempor.equals("deduction_name"+String.valueOf(deductmp.get(i).get("DEDUCTION_NO")))) {
					Map<String, String> deduc = new HashMap<String, String>();
					deduc.put("empno", newEmpno);
					deduc.put("deduction_no", String.valueOf(deductmp.get(i).get("DEDUCTION_NO")));
					deduc.put("deduction_name", String.valueOf(empUpd.get("deduction_name"+String.valueOf(deductmp.get(i).get("DEDUCTION_NO")))));
					deduc.put("deducinfo_price", String.valueOf(empUpd.get("deducinfo_price"+String.valueOf(deductmp.get(i).get("DEDUCTION_NO")))));
					ipid.insertdeducinfolist(deduc);
				}
			}
		}
		
		return result;	
	}
	
	@Autowired
	DeletepayinfoDao dpid;
	
	public int empDelDao(Integer emp_number) {
		
		String myEmpno = ed.selectEmpOne(emp_number);
		
		dpid.deletepayinfolist(myEmpno);
		dpid.deletededucinfolist(myEmpno);
		
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

	public List<Map<String, String>> test() {
		List<Map<String, String>> versionVO = ed.test();
        return versionVO;
	}
}