package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.AllowanceItemDao;

@Service("SelectAllowanceItem")
public class SelectAllowanceItem {
	
	@Autowired
	private AllowanceItemDao aid;
	
	public List<Map<String, String>> callAllowanceItemDao(Integer classify) {
		
		return aid.selectAllowanceList(classify);
		
	}
	
}
