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
	 * String> approval_info){ System.out.println("������� : " +approval_info); return
	 * csd.insertApprovalData(approval_info); }
	 */
	public List<Map<String, String>> callInsertApprovalData(HashMap<String, String> approval_info){
		System.out.println("������� : " +approval_info);
		return csd.insertApprovalData(approval_info);
	}
	
	@Autowired
	private DraftDao DD;
	public List<Map<String, String>> callInsertApprovalData(String empno,
			String style_code,
			List<HashMap<String,Integer>> reference_list, 
			String draft_data,
			String draft_no) {
		System.out.println("approval ���� �ܰ� ����");
	
		DD.insertApprovalWrite(empno,style_code,draft_data,draft_no);
		
		
		System.out.println("������� �ٿ� ���� �� ���� �ٿ� ���� ��");
		
		return apd.insertApprovalPathData(reference_list);
	}
	public void UpdateDraft(int draft_code,int state, int empno) {
		// TODO Auto-generated method stub
		String statement=null;
		if(state==0)
			statement="�ݷ�";
		else if(state==1)
			statement="����";
		
		HashMap<String,String> updateState = new HashMap<String,String>();
		updateState.put("draft_code",String.valueOf(draft_code));
		updateState.put("state",statement);
		updateState.put("empno",String.valueOf(empno));
		
		System.out.println("�ڵ�:"+updateState.get("draft_code"));
		System.out.println("�����ڵ�: "+state);
		System.out.println("����:"+updateState.get("state"));
		System.out.println("�����ȣ:"+updateState.get("empno"));

		
		DD.updateDraftState(updateState);
	}

}
