package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.MonthlyempDao;

@Service("SelectMonthlyempList")
public class SelectMonthlyempList {
	
	@Autowired
	private MonthlyempDao med;
	
	public List<Map<String, String>> callMonthlyempDao(String year, String month) {
		
		String selectedDate = "";
		
		if(Integer.parseInt(month) > 9) {
			selectedDate = year + "/" + month;
		} else {
			selectedDate = year + "/0" + month;
		}
				
		return med.selectMonthlyempList(selectedDate);
		
	}
	
}
