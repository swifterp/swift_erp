package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DailyworkInsertDao;

@Service("InsertDailyworkList")
public class InsertDailyworkList {
	
	@Autowired
	private DailyworkInsertDao dwid;
	
	public List<Map<String, String>> callDailyworkInsertDao(String year, String month, String day, String empno, String night, String weekend, String annualAllowance) {
		
		String selectedDate = "";
		
		if(Integer.parseInt(month) > 9) {
			selectedDate = year + "/" + month;
		} else {
			selectedDate = year + "/0" + month;
		}
		
		if(Integer.parseInt(day) > 9) {
			selectedDate = selectedDate + "/" + day;
		} else {
			selectedDate = selectedDate + "/0" + day;
		}
		
		return dwid.selectDailyworkList(selectedDate, empno, night, weekend, annualAllowance);
		
	}
	
}
