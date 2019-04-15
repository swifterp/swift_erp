package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DailyworkDao;

@Service("SelectDailyworkList")
public class SelectDailyworkList {
	
	@Autowired
	private DailyworkDao dwd;
	
	public List<Map<String, String>> callDailyworkListDao(String year, String month, String day) {
		
		String selectedDate = year + "/" + month + "/" + day;
		
		return dwd.selectDailyworkList(selectedDate);
		
	}
	
}
