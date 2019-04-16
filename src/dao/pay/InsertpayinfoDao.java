package dao.pay;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;

@Repository("InsertpayinfoDao")
public class InsertpayinfoDao {
	
	@Autowired
	private MergeListMapper mlm;
	
	public void insertpayinfolist(Map<String, String> allow) {
		
		mlm.empPayInfoAdd(allow);
		
	}
	
	public void insertdeducinfolist(Map<String, String> deduc) {
		
		mlm.empDeducInfoAdd(deduc);
		
	}
	
}
