package dao.approval;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("DraftDao")
public class DraftDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired
	private updateListMapper ulm;
	
	public List<Map<String, String>> selectDraftList() {
		
		return slm.getDraftList();
	}
	public List<Map<String, String>> selectDraftList(int draft_code) {
		// TODO Auto-generated method stub
		return slm.getDraft(draft_code);
	}

	public void insertApprovalWrite(String empno, String style_code,String draft_data,String draft_no) {
		// TODO Auto-generated method stub
		HashMap<String,String> draft_info = new HashMap<String,String>();
		draft_info.put("empno", empno);
		draft_info.put("style_code", style_code);
		draft_info.put("draft_data",draft_data);
		draft_info.put("draft_no", draft_no);
		ilm.InsertApprovalData(draft_info);
		System.out.println("결재서류 내용 다오단계 통과");
		
	}
	public void updateDraftState(HashMap<String, String> updateState) {
		// TODO Auto-generated method stub
		ulm.UpdateDraftState(updateState);
	}

	

}
