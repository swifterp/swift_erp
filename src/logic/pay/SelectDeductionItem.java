package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DeductionItemDao;

@Service("SelectDeductionItem")
public class SelectDeductionItem {
	
	@Autowired
	private DeductionItemDao did;
	public List<Map<String, String>> callDeductionItemDao() {		
		return did.selectDeductionList();
		
	}
	
}
