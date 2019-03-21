package logic.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.pay.DeleteAllowanceDao;

@Service("DeleteAllowanceItem")
public class DeleteAllowanceItem {
	
	@Autowired
	private DeleteAllowanceDao dad;
	
	public Integer callDeleteAllowanceDao(Integer allowance_no) {

		return dad.deleteAllowanceList(allowance_no);
		
	}
	
}
