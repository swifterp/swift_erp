package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.PayConfirmDao;

@Service("UpdatePayConfirmList")
public class UpdatePayConfirmList {
	
	@Autowired
	private PayConfirmDao pcd;
	
	public List<Map<String, String>> callPayConfirmDao(String report) {
		
		return pcd.updatePayConfirmList(report);
		
	}
	
}
