package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DeleteDeductionDao;

@Service("DeleteDeductionItem")
public class DeleteDeductionItem {
	
	@Autowired
	private DeleteDeductionDao ddd;
	
	public List<Map<String, String>> callDeleteDeductionDao(Integer deduction_no) {
		
		return ddd.deleteDeductionList(deduction_no);
		
	}
	
}
