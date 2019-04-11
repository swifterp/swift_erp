package logic.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.UnderyearDao;

@Service("InsertUnderyearList")
public class InsertUnderyearList {
	
	@Autowired
	private UnderyearDao ud;
	
	public List<Map<String, String>> callUnderyearDao(HashMap<String, Integer> percentage) {
		
		return ud.insertUnderyearList(percentage);
		
	}
	
	public List<Map<String, String>> callUnderyearDao() {
		
		return ud.selectUnderyearList();
		
	}
	
}
