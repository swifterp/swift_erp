package dao.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("TotalCalcDao")
public class TotalCalcDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private MergeListMapper mlm;
	
	public List<HashMap<String, String>> selectTotalCalcList_confirmed(String report) {
				
		return slm.getDailyworkConfirmList(report);
	}
	
	public List<Map<String, String>> selectTotalCalcList_payinfo() {

		return slm.getPersonalPayInfoList();
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
	
	public List<Map<String, String>> selectDeductionInfo() {
		
		return slm.getDeductionInfo();
	}
	
	public void mergePersonalDeducList(List<Map<String, String>> personal_data_deduction) {
		
		for(int i=0;i<personal_data_deduction.size();i++) {
			mlm.resetPersonalDeducList(personal_data_deduction.get(i));
			
		}
		
	}
	
}