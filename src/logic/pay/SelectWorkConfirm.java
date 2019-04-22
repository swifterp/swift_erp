package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.WorkConfirmSelectDao;

@Service("SelectWorkConfirm")
public class SelectWorkConfirm {
	
	@Autowired
	private WorkConfirmSelectDao wcsd;
	
	public List<Map<String, String>> callTotalWorkConfirmDao(String year, String month, String day, String empno, Integer classify) {
		
		String selectedDate = "";
		
		if(classify == 1) {
			if(Integer.parseInt(month) > 9) {
				if(Integer.parseInt(day) > 9) {
					selectedDate = year + "/" + month + "/" + day;
				} else {
					selectedDate = year + "/" + month + "/0" + day;
				}
			} else {
				if(Integer.parseInt(day) > 9) {
					selectedDate = year + "/0" + month + "/" + day;
				} else {
					selectedDate = year + "/0" + month + "/0" + day;
				}
			}
		} else {
			selectedDate = year + "/" + month + "/" + day;
		}
		
		return wcsd.selectWorkConfirmList(selectedDate, empno, classify);
		
	}
	
}
