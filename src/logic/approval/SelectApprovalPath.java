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
	
	public List<Map<String,String>> callApprovalPathDao1(int empno){
		
		return apd.selectApprovalPath1(empno);
		
	}
	public List<Map<String,String>> callApprovalPathDao2(int empno){
		
		return apd.selectApprovalPath2(empno);
		
	}
	public List<Map<String,String>> callApprovalPathDao3(int empno){
		
		return apd.selectApprovalPath3(empno);
		
	}

	public List<Map<String,String>> writeApprovalPathDao(HashMap<String, String> approval_path) {
		// TODO Auto-generated method stub
		
		apd.insertApprovalPath(approval_path);
		
		return apd.selectApprovalPath();
	}
	

	

}
