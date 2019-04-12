package dao.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("PersonalCalcDao")
public class PersonalCalcDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private MergeListMapper mlm;
	
	public List<HashMap<String, String>> selectPersonalCalcList_confirmed(String report, String empno) {
				
		return slm.getPersonalDailyworkConfirmList(report, empno);
	}
	
	public List<Map<String, String>> selectPersonalCalcList_payinfo(String empno) {

		return slm.getPersonalPersonalPayInfoList(empno);
	}
	
	public List<Map<String, String>> updateTotalCalcList_calculation(HashMap<String, String> totalNreport) {
		
		ulm.resetTotalCalcList(totalNreport);

		return slm.getSalaryCalcList();
	}
	
	public void mergePersonalPayList(List<Map<String, String>> personal_data) {
		
		for(int i=0;i<personal_data.size();i++) {
			mlm.resetPersonalPayList(personal_data.get(i));
		}
		
	}
	
	public List<Map<String, String>> selectSalaryCalcTotal(String report) {
		
		return slm.getIndividualSalaryCalcList(report);
	}
	
}