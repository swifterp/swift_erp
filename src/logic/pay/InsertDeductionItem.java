package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.InsertDeductionDao;

@Service("InsertDeductionItem")
public class InsertDeductionItem {
	
	@Autowired
	private InsertDeductionDao idd;
	
	public List<Map<String, String>> callInsertDeductionDao(String name) {
		
		return idd.insertDeductionList(name);
		
	}
	
}
