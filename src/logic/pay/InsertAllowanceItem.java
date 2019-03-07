package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.AllowanceItemDao;

@Service("InsertAllowanceItem")
public class InsertAllowanceItem {
	
	@Autowired
	private AllowanceItemDao aid;
	
	public List<Map<String, String>> callAllowanceItemDao() {
		
		return aid.selectAllowanceList();
		
	}
	
}
