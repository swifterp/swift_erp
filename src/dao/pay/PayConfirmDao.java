package dao.pay;

import java.util.Map;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("PayConfirmDao")
public class PayConfirmDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> updatePayConfirmList(String report) {
		
		ulm.resetPayConfirmList(report);
				
		return slm.getSalaryCalcList();
	}
	
	public List<Map<String, String>> updatePayConfirmCancelList(String report) {
		
		ulm.resetPayConfirmCancelList(report);
				
		return slm.getSalaryCalcList();
	}
	
}