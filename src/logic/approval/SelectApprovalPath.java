package logic.approval;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.ApprovalPathDao;

@Service("SelectApprovalPath")
public class SelectApprovalPath {
	
	@Autowired
	private ApprovalPathDao apd;
	
	public List<Map<String,String>> callApprovalPathDao(){
		
		return apd.selectApprovalPath();
		
	}

	public List<Map<String,String>> writeApprovalPathDao(HashMap<String, String> approval_path) {
		// TODO Auto-generated method stub
		
		apd.insertApprovalPath(approval_path);
		
		return apd.selectApprovalPath();
	}
	

	

}
