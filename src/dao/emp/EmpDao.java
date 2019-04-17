package dao.emp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.CanvasjsChartData;
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

	public List<Map<String, String>> empView(Integer emp_number) {
		return slm.getEmpView(emp_number);
	}
	
	public List<Map<String, String>> selectEmpDeptList() {
		return slm.getEmpDeptList();
	}
	
	
	
	public List<Map<String, String>> deptView(Integer deptno) {
		System.out.println(deptno);
		return slm.getDeptView(deptno);
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
		return slm.getEmpDeptList();
	}

	@Autowired
	private updateListMapper ulm;
	public List<Map<String, String>> empUpd(HashMap<String, String> empUpd) {
		ulm.getEmpUpd(empUpd);
		return slm.getEmpList();
	}

	public List<Map<String, String>> deptUpd(HashMap<String, String> deptUpd) {
		ulm.getDeptUpd(deptUpd);
		return slm.getEmpDeptList();
	}
	
	@Autowired
	private deleteListMapper dlm;
	public int empDel(Integer emp_number) {
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
		ulm.getDeptRankUpd(appointAdd);
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointUpd(HashMap<String, String> appointUpd) {
		ulm.getAppointUpd(appointUpd);
		ulm.getDeptRankUpd(appointUpd);
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointDel(Integer emp_appoint_no) {
		dlm.getAppointDel(emp_appoint_no);
		return slm.getAppointList();
	}

	public List<Map<String, String>> appointView(Integer emp_appoint_no) {
		return slm.getAppointView(emp_appoint_no);
	}

	public int checkEmpNum(String emp_number) {
		return slm.checkEmpNum(emp_number);
	}

	public int rankAdd(HashMap<String, String> rankPlus) {
		return ilm.getRankAdd(rankPlus);
	}

	public int dutyAdd(HashMap<String, String> dutyPlus) {
		return ilm.getDutyAdd(dutyPlus);
	}

	public int bankAdd(HashMap<String, String> bankPlus) {
		return ilm.getBankAdd(bankPlus);
	}

	public List<Map<String, String>> test() {
		slm.getEmpDeptList();
		return slm.getEmpDeptList();
	}

	
	public List<List<Map<Object, Object>>> aaa() {
		Map<Object,Object> map = null;
		List<List<Map<Object,Object>>> list = new ArrayList<List<Map<Object,Object>>>();
		List<Map<Object,Object>> dataPoints1 = new ArrayList<Map<Object,Object>>();
		
		List<Map<Object, Object>> lst = slm.canvas();
		System.out.println(lst);
		if(lst != null){
			for(int i=0;i<lst.size();i++){
				map = new HashMap<Object,Object>(); 
				map.put("label", lst.get(i).get("A")); 
				map.put("y", lst.get(i).get("B"));
				dataPoints1.add(map);
			}
		}
		list.add(dataPoints1);
		return list;
	}

}