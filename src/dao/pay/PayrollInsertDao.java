package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("PayrollInsertDao")
public class PayrollInsertDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired
	private selectListMapper slm;

	
	public List<Map<String, String>> insertPayroll(String report, String title) {
		
		ilm.setSalaryCalc(report, title);

		return slm.getSalaryCalcList();
	}
	
	public List<Map<String, String>> selectPayroll() {

		return slm.getSalaryCalcList();
	}
	
}