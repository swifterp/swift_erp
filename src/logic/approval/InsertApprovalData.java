package logic.approval;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.CommonStyleDao;

@Service("InsertApprovalData")
public class InsertApprovalData {
	@Autowired
	private CommonStyleDao csd;
//Insert Approval Data
	public List<Map<String, String>> callInsertApprovalData(HashMap<String, String> approval_info){
		System.out.println("로직통과 : " +approval_info);
		return csd.insertApprovalData(approval_info);
	}

}
