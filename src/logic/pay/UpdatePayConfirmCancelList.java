package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.PayConfirmDao;

@Service("UpdatePayConfirmCancelList")
public class UpdatePayConfirmCancelList {
	
	@Autowired
	private PayConfirmDao pcd;
	
	public List<Map<String, String>> callPayConfirmCancelDao(String report) {
		
		return pcd.updatePayConfirmCancelList(report);
		
	}
	
}
