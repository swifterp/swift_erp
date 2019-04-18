package logic.pay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.TotalCalcDao;

@Service("InsertTotalCalcList")
public class InsertTotalCalcList {
	
	@Autowired
	private TotalCalcDao tcd;
	
	public List<Map<String, String>> callTotalCalcDao(String report) {
		
		List<HashMap<String, String>> confirmed = tcd.selectTotalCalcList_confirmed(report);
		List<Map<String, String>> payinfo = tcd.selectTotalCalcList_payinfo();
		
		Integer total = 0;
		
		List<Map<String, String>> personal_data = new ArrayList<Map<String, String>>();
		
		for(int i=0;i<confirmed.size();i++) {
			
			for(int j=0;j<payinfo.size();j++) {
				
				if(String.valueOf(confirmed.get(i).get("EMPNO")).equals(String.valueOf(payinfo.get(j).get("EMPNO")))) {

					if(String.valueOf(confirmed.get(i).get("ALLOWANCE_NO")).equals(String.valueOf(payinfo.get(j).get("ALLOWANCE_NO")))) {

						if(payinfo.get(j).get("ALLOWANCE_DIVISION").equals("일급")) {
							
							Map<String, String> tmp = new HashMap<String, String>();
							
							tmp.put("EMPNO", String.valueOf(payinfo.get(j).get("EMPNO")));
							tmp.put("ALLOWANCE_NO", String.valueOf(payinfo.get(j).get("ALLOWANCE_NO")));
							tmp.put("ALLOWANCE_NAME", String.valueOf(payinfo.get(j).get("ALLOWANCE_NAME")));
							tmp.put("ALLOWANCE_DIVISION", payinfo.get(j).get("ALLOWANCE_DIVISION"));
							
							tmp.put("PAYINFO_PRICE", String.valueOf(Integer.parseInt(String.valueOf(confirmed.get(i).get("DAILYWORK_TIME"))) * Integer.parseInt(String.valueOf(payinfo.get(j).get("PAYINFO_PRICE")))));
							
							personal_data.add(tmp);
							
							total = total + (Integer.parseInt(String.valueOf(confirmed.get(i).get("DAILYWORK_TIME"))) * Integer.parseInt(String.valueOf(payinfo.get(j).get("PAYINFO_PRICE"))));
							
						}
						
					}
					
				}
				
			}
			/*
			if(payinfo.size() > i) {
				if(payinfo.get(i).get("ALLOWANCE_DIVISION").equals("월정액")) {

					Map<String, String> tmp = new HashMap<String, String>();
					
					tmp.put("EMPNO", String.valueOf(payinfo.get(i).get("EMPNO")));
					tmp.put("ALLOWANCE_NO", String.valueOf(payinfo.get(i).get("ALLOWANCE_NO")));
					tmp.put("ALLOWANCE_NAME", String.valueOf(payinfo.get(i).get("ALLOWANCE_NAME")));
					tmp.put("ALLOWANCE_DIVISION", payinfo.get(i).get("ALLOWANCE_DIVISION"));
					
					tmp.put("PAYINFO_PRICE", String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));
					
					personal_data.add(tmp);
					
					total += Integer.parseInt(String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));

				}
			}
			*/
		}
		for(int i=0;i<payinfo.size();i++) {
			if(payinfo.get(i).get("ALLOWANCE_DIVISION").equals("월정액")) {
	
				Map<String, String> tmp = new HashMap<String, String>();
				
				tmp.put("EMPNO", String.valueOf(payinfo.get(i).get("EMPNO")));
				tmp.put("ALLOWANCE_NO", String.valueOf(payinfo.get(i).get("ALLOWANCE_NO")));
				tmp.put("ALLOWANCE_NAME", String.valueOf(payinfo.get(i).get("ALLOWANCE_NAME")));
				tmp.put("ALLOWANCE_DIVISION", payinfo.get(i).get("ALLOWANCE_DIVISION"));
				
				tmp.put("PAYINFO_PRICE", String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));
				
				personal_data.add(tmp);
				
				total += Integer.parseInt(String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));
	
			}
		}
		
		//if(confirmed.size() != 0) {
			for(int i=0;i<personal_data.size();i++) {
				personal_data.get(i).put("REPORT", report);
			}
			
			tcd.mergePersonalPayList(personal_data);
		//}

		//if(confirmed.size() != 0) {
			List<Map<String, String>> deducinfo = tcd.selectDeductionInfo();
			
			List<Map<String, String>> personal_data_deduction = new ArrayList<Map<String, String>>();
			
			for(int i=0;i<deducinfo.size();i++) {
					
				Map<String, String> tmp = new HashMap<String, String>();
				
				tmp.put("EMPNO", String.valueOf(deducinfo.get(i).get("EMPNO")));
				tmp.put("DEDUCTION_NO", String.valueOf(deducinfo.get(i).get("DEDUCTION_NO")));
				tmp.put("DEDUCTION_NAME", String.valueOf(deducinfo.get(i).get("DEDUCTION_NAME")));
				
				tmp.put("DEDUCINFO_PRICE", String.valueOf(deducinfo.get(i).get("DEDUCINFO_PRICE")));
				
				personal_data_deduction.add(tmp);
				
				total -= Integer.parseInt(String.valueOf(deducinfo.get(i).get("DEDUCINFO_PRICE")));
	
			}
			
			for(int i=0;i<personal_data_deduction.size();i++) {
				personal_data_deduction.get(i).put("REPORT", report);
			}
			tcd.mergePersonalDeducList(personal_data_deduction);
		//}
		
		HashMap<String, String> totalNreport = new HashMap<String, String>();
		totalNreport.put("total", String.valueOf(total));
		totalNreport.put("report", report);
		
		return tcd.updateTotalCalcList_calculation(totalNreport);
		
	}
	
}
