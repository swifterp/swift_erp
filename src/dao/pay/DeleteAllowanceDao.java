package dao.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;

@Repository("DeleteAllowanceDao")
public class DeleteAllowanceDao {
	
	@Autowired
	private deleteListMapper dlm;
	
	public Integer deleteAllowanceList(Integer allowance_no) {
		
		return dlm.killAllowanceList(allowance_no);
	}
	
}
