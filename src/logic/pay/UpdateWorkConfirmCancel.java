package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.WorkConfirmDao;
import dao.pay.WorkConfirmSelectDao;

@Service("UpdateWorkConfirmCancel")
public class UpdateWorkConfirmCancel {
	
	@Autowired
	private WorkConfirmDao wcd;
	
	@Autowired
	private WorkConfirmSelectDao wcsd;
	
	public List<Map<String, String>> callWorkConfirmCancelDao(String empno, String selectedDate) {
		
		wcd.updateWorkConfirmCancel(empno, selectedDate);
		
		return wcsd.selectWorkConfirmList(selectedDate, empno, 2);
		
	}
	
}
