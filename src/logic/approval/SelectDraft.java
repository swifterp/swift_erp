package logic.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.DraftDao;

@Service("SelectDraft")
public class SelectDraft {
	
	@Autowired
	private DraftDao DD;
	
	public List<Map<String, String>> callDraftDao() {
		
		return DD.selectDraftList();
	}

	public List<Map<String, String>> callDraftDao(int draft_code) {
		// TODO Auto-generated method stub
		return DD.selectDraftList(draft_code);
	}

}
