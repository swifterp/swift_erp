package logic.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.MyApprovalDao;

@Service("SelectMyApproval")
public class SelectMyApproval {
	
	@Autowired
	private MyApprovalDao mad;
	
	public List<Map<String,String>> callMyApproval(int EMPNO){
		
		return mad.selectMyApprovalList(EMPNO);
		
	}

}
