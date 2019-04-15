package logic.pay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.PersonalCalcDao;

@Service("InsertPersonalCalcList")
public class InsertPersonalCalcList {
	
	@Autowired
	private PersonalCalcDao pcd;
	
	@Autowired
	private InsertTotalCalcList itcl;
	
	public List<Map<String, String>> callPersonalCalcDao(String report, String empno) {
		
		List<HashMap<String, String>> confirmed = pcd.selectPersonalCalcList_confirmed(report, empno);
		List<Map<String, String>> payinfo = pcd.selectPersonalCalcList_payinfo(empno);
		
		//System.out.println(confirmed);
		//System.out.println(payinfo);
		
		Integer total = 0;
		
		List<Map<String, String>> personal_data = new ArrayList<Map<String, String>>();
				
		for(int i=0;i<confirmed.size();i++) {
			
			for(int j=0;j<payinfo.size();j++) {
				
				if(confirmed.get(i).get("EMPNO").equals(payinfo.get(j).get("EMPNO"))) {
					
					//System.out.println("empno : "+confirmed.get(i).get("EMPNO") + " / " +payinfo.get(j).get("EMPNO"));
					
					if(String.valueOf(confirmed.get(i).get("ALLOWANCE_NO")).equals(String.valueOf(payinfo.get(j).get("ALLOWANCE_NO")))) {
						
						//System.out.println("     allowance_no : "+String.valueOf(confirmed.get(i).get("ALLOWANCE_NO")) + " / " + String.valueOf(payinfo.get(j).get("ALLOWANCE_NO")));
						
						if(payinfo.get(j).get("ALLOWANCE_DIVISION").equals("일급")) {
							
							//System.out.println("          allowance_division : "+payinfo.get(j).get("ALLOWANCE_DIVISION"));
							
							Map<String, String> tmp = new HashMap<String, String>();
							
							tmp.put("EMPNO", payinfo.get(j).get("EMPNO"));
							tmp.put("ALLOWANCE_NO", String.valueOf(payinfo.get(j).get("ALLOWANCE_NO")));
							tmp.put("ALLOWANCE_NAME", String.valueOf(payinfo.get(j).get("ALLOWANCE_NAME")));
							tmp.put("ALLOWANCE_DIVISION", payinfo.get(j).get("ALLOWANCE_DIVISION"));
							
							tmp.put("PAYINFO_PRICE", String.valueOf(Integer.parseInt(String.valueOf(confirmed.get(i).get("DAILYWORK_TIME"))) * Integer.parseInt(String.valueOf(payinfo.get(j).get("PAYINFO_PRICE")))));
							
							personal_data.add(tmp);
							
							total = total + (Integer.parseInt(String.valueOf(confirmed.get(i).get("DAILYWORK_TIME"))) * Integer.parseInt(String.valueOf(payinfo.get(j).get("PAYINFO_PRICE"))));
							
							//System.out.println("          total : " + total + " <- " + String.valueOf(confirmed.get(i).get("DAILYWORK_TIME")) + " * " + String.valueOf(payinfo.get(j).get("PAYINFO_PRICE")));
							
							//System.out.println("          personal_data : " + personal_data.get(j));
							
						}
						
					}
					
				}
				
			}
			if(payinfo.size() > i) {
				if(payinfo.get(i).get("ALLOWANCE_DIVISION").equals("월정액")) {
					
					//System.out.println("     allowance_division : "+payinfo.get(i).get("ALLOWANCE_DIVISION"));
					
					Map<String, String> tmp = new HashMap<String, String>();
					
					tmp.put("EMPNO", payinfo.get(i).get("EMPNO"));
					tmp.put("ALLOWANCE_NO", String.valueOf(payinfo.get(i).get("ALLOWANCE_NO")));
					tmp.put("ALLOWANCE_NAME", String.valueOf(payinfo.get(i).get("ALLOWANCE_NAME")));
					tmp.put("ALLOWANCE_DIVISION", payinfo.get(i).get("ALLOWANCE_DIVISION"));
					
					tmp.put("PAYINFO_PRICE", String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));
					
					personal_data.add(tmp);
					
					total += Integer.parseInt(String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));
					
					//System.out.println("     total : " + total + " <- " + String.valueOf(payinfo.get(i).get("PAYINFO_PRICE")));
					
				}
			}
		}
		
		if(confirmed.size() != 0) {
			for(int i=0;i<personal_data.size();i++) {
				personal_data.get(i).put("REPORT", report);
				//System.out.println(personal_data.get(i));
			}
			
			pcd.mergePersonalPayList(personal_data);
		}
		
		//List<Map<String, String>> tmp = itcl.callTotalCalcDao(report);
		
		//HashMap<String, String> totalNreport = new HashMap<String, String>();
		//totalNreport.put("total", String.valueOf(total));
		//totalNreport.put("report", report);
		
		return itcl.callTotalCalcDao(report);//pcd.updateTotalCalcList_calculation(totalNreport);
		
	}
	
}
