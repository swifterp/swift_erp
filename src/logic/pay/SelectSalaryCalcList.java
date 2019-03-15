package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.SalaryCalcDao;

@Service("SelectSalaryCalcList")
public class SelectSalaryCalcList {
	
	@Autowired
	private SalaryCalcDao scd;
	
	public List<Map<String, String>> callSalaryCalcDao() {
		
		return scd.selectSalaryCalcList();
		
	}
	
}
