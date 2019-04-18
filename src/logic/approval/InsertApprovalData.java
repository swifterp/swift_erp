package logic.approval;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.ApprovalPathDao;
import dao.approval.CommonStyleDao;
import dao.approval.DraftDao;

@Service("InsertApprovalData")
public class InsertApprovalData {
	@Autowired
	private CommonStyleDao csd;
	
	@Autowired
	private ApprovalPathDao apd;
//Insert Approval Data
	/*
	 * public List<Map<String, String>> callInsertApprovalData(HashMap<String,
	 * String> approval_info){ System.out.println("로직통과 : " +approval_info); return
	 * csd.insertApprovalData(approval_info); }
	 */
	public List<Map<String, String>> callInsertApprovalData(HashMap<String, String> approval_info){
		System.out.println("로직통과 : " +approval_info);
		return csd.insertApprovalData(approval_info);
	}
	
	@Autowired
	private DraftDao DD;
	public List<Map<String, String>> callInsertApprovalData(String empno,
			String style_code,
			List<HashMap<String,Integer>> reference_list, 
			String draft_data,
			String draft_no) {
		System.out.println("approval 로직 단계 진입");
	
		DD.insertApprovalWrite(empno,style_code,draft_data,draft_no);
		
		
		System.out.println("결재라인 다오 종료 후 서류 다오 진입 전");
		
		return apd.insertApprovalPathData(reference_list);
	}
	public void UpdateDraft(int draft_code,int state, int empno) {
		// TODO Auto-generated method stub
		String statement=null;
		if(state==0)
			statement="반려";
		else if(state==1)
			statement="승인";
		
		HashMap<String,String> updateState = new HashMap<String,String>();
		updateState.put("draft_code",String.valueOf(draft_code));
		updateState.put("state",statement);
		updateState.put("empno",String.valueOf(empno));
		
		System.out.println("코드:"+updateState.get("draft_code"));
		System.out.println("상태코드: "+state);
		System.out.println("상태:"+updateState.get("state"));
		System.out.println("사원번호:"+updateState.get("empno"));

		
		DD.updateDraftState(updateState);
	}

}
