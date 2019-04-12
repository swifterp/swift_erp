package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.WorkConfirmInsertDao;

@Service("InsertWorkConfirm")
public class InsertWorkConfirm {
	
	@Autowired
	private WorkConfirmInsertDao wcid;
	
	public List<Map<String, String>> callWorkConfirmDao(String year, String month, String day, String empno) {
		
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
		
		return wcid.insertWorkConfirm(selectedDate, empno);
		
	}
	
}
