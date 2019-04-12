package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.InsertAllowanceDao;

@Service("InsertAllowanceItem")
public class InsertAllowanceItem {
	
	@Autowired
	private InsertAllowanceDao iad;
	
	public List<Map<String, String>> callInsertAllowanceDao(String name, String division) {
		
		return iad.insertAllowanceList(name, division);
		
	}
	
}
