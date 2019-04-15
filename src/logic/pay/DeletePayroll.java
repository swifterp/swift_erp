package logic.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DeletePayrollDao;

@Service("DeletePayroll")
public class DeletePayroll {
	
	@Autowired
	private DeletePayrollDao dpd;
	
	public List<Map<String, String>> callDeletePayrollDao(String report) {
		
		// 1. personalpaylist���� report�� ��ġ�ϴ� �� �����
		// 2. salarycalclist���� report�� ��ġ�ϴ� �� �����
		
		return dpd.deletePayrollList(report);
		
	}
	
}
