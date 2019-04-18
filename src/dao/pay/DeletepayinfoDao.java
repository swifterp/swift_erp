package dao.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;

@Repository("DeletepayinfoDao")
public class DeletepayinfoDao {
	
	@Autowired
	private deleteListMapper dlm;
	
	public void deletepayinfolist(String empno) {
		
		dlm.empPayInfoDelete(empno);
		
	}
	
	public void deletededucinfolist(String empno) {
		
		dlm.empDeducInfoDelete(empno);
		
	}
	
}
