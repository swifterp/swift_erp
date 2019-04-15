package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.PayrollInsertDao;

@Service("InsertPayrollList")
public class InsertPayrollList {
	
	@Autowired
	private PayrollInsertDao pid;
	
	public List<Map<String, String>> callInsertPayrollDao(String year, String month, String title) {
		
		String report = "";
		
		boolean isExist = false;
		
		if(Integer.parseInt(month) > 9) {
			report = year + "/" + month;
		} else {
			report = year + "/0" + month;
		}
		
		List<Map<String, String>> tmp = pid.selectPayroll();
		for(int i=0;i<tmp.size();i++) {
			if(report.equals(tmp.get(i).get("SALARYCALC_REPORT"))){
				isExist = true;
			} else {
				isExist = false;
			}
		}
		
		if(!isExist) {
			return pid.insertPayroll(report, title);
		} else {
			return pid.selectPayroll();
		}
	}
	
}
