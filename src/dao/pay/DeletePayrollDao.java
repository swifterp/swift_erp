package dao.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.selectListMapper;

@Repository("DeletePayrollDao")
public class DeletePayrollDao {
	
	@Autowired
	private deleteListMapper dlm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> deletePayrollList(String report) {
		
		dlm.killPersonalPayList(report);

		dlm.killSalaryCalcList(report);
		
		return slm.getSalaryCalcList();
	}
	
}
