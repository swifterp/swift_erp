package dao.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("MyApprovalDao")
public class MyApprovalDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectMyApprovalList() {
		
		return slm.getMyApprovalList();
	}
	
	

}
