package dao.emp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
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

	public List<Map<String, String>> empView(Integer emp_number, Integer empno) {
		return slm.getEmpView(emp_number, empno);
	}
	
	public List<Map<String, String>> selectDeptList() {
		return slm.getDeptList();
	}
	
	public List<Map<String, String>> deptView(Integer deptno) {
		return slm.getDeptView(deptno);
	}
	public List<Map<String, String>> empNumList() {
		slm.getEmpNumList();
		return slm.getEmpNumList();
	}

	@Autowired
	private insertListMapper ilm;
	public void empAdd(HashMap<String, Integer> empPlus) {
		//System.out.println(empPlus);
		ilm.empAdd(empPlus);

		List<Map<String, String>> tmp = slm.getEmpList();
		
		List<Map<String, String>> lst = new ArrayList<Map<String, String>>();
		
		Integer empno = 0;
		
		for(int j=0;j<tmp.size();j++) {
			if(String.valueOf(tmp.get(j).get("EMP_NUMBER")).equals(String.valueOf(empPlus.get("emp_number")))) {
				empno = Integer.parseInt(String.valueOf(tmp.get(j).get("EMPNO")));
				break;
			}
		}
		
		for(int i=0;i<empPlus.size();i++) {

			if(!empPlus.isEmpty()) {
				if(null != empPlus.get("allowance_name"+String.valueOf(i))){
				
					Map<String, String> temp = new HashMap<String, String>();
					
					temp.put("EMPNO", String.valueOf(empno));
					temp.put("ALLOWANCE_NO", String.valueOf(i));
					temp.put("ALLOWANCE_NAME", String.valueOf(empPlus.get("allowance_name"+String.valueOf(i))));
					temp.put("PAYINFO_PRICE", String.valueOf(empPlus.get("payinfo_price"+String.valueOf(i))));
					temp.put("ALLOWANCE_DIVISION", String.valueOf(empPlus.get("allowance_division"+String.valueOf(i))));
					
					lst.add(temp);
				}
			}
			
		}
		
		for(int i=0;i<lst.size();i++) {
			ilm.empPayInfoAdd(lst.get(i));
		}
		
	}
	
	public List<Map<String, String>> deptAdd(HashMap<String, String> deptPlus) {
		ilm.deptAdd(deptPlus);
		return slm.getDeptList();
	}
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired
	private MergeListMapper mlm;
	
	public List<Map<String, String>> empUpd(HashMap<String, String> empUpd) {
		System.out.println(empUpd);
		ulm.getEmpUpd(empUpd);
		//
		List<Map<String, String>> lst = new ArrayList<Map<String, String>>();
		
		Integer empno = Integer.parseInt(empUpd.get("empno"));
				
		for(int i=0;i<empUpd.size();i++) {

			if(!empUpd.isEmpty()) {
				if(null != empUpd.get("allowance_name"+String.valueOf(i))){
				
					Map<String, String> temp = new HashMap<String, String>();
					
					temp.put("EMPNO", String.valueOf(empno));
					temp.put("ALLOWANCE_NO", String.valueOf(i));
					temp.put("ALLOWANCE_NAME", String.valueOf(empUpd.get("allowance_name"+String.valueOf(i))));
					temp.put("PAYINFO_PRICE", String.valueOf(empUpd.get("payinfo_price"+String.valueOf(i))));
					temp.put("ALLOWANCE_DIVISION", String.valueOf(empUpd.get("allowance_division"+String.valueOf(i))));
					
					lst.add(temp);
				}
			}
			
		}
		
		for(int i=0;i<lst.size();i++) {
			mlm.empPayInfoAdd(lst.get(i));
		}
		//
		
		return slm.getEmpList();
	}

	public List<Map<String, String>> deptUpd(HashMap<String, String> deptUpd) {
		ulm.getDeptUpd(deptUpd);
		return slm.getDeptList();
	}
	
	@Autowired
	private deleteListMapper dlm;
	public int empDel(Integer emp_number, Integer empno) {
		//dlm.kill
		return dlm.getEmpDel(emp_number);
	}


	public int deptDel(Integer deptno) {
		dlm.getDeptDel(deptno);
		return dlm.getDeptDel(deptno);
	}
	
	public List<Map<String, String>> selectEmpData(String empInfo){
		return slm.getEmpData(empInfo);
	}

	public List<Map<String, Integer>> empNumCheck(Integer emp_number) {
		return slm.empNumCheck(emp_number);
	}
	
	public List<Map<String, String>> selectRankList() {
		return slm.getRankList();
	}
	
	public List<Map<String, String>> selectDutyList() {
		return slm.getDutyList();
	}
	
	public List<Map<String, String>> selectBankList() {
		return slm.getBankList();
	}

	public List<Map<String, String>> selectAppointList() {
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointAdd(HashMap<String, String> appointAdd) {
		ilm.appointAdd(appointAdd);
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointUpd(HashMap<String, String> appointUpd) {
		ulm.getAppointUpd(appointUpd);
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointDel(Integer emp_appoint_no) {
		dlm.getAppointDel(emp_appoint_no);
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointView(Integer emp_appoint_no) {
		slm.getAppointView(emp_appoint_no);
		return slm.getAppointList();
	}
}
