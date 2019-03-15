package logic.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.approval.DraftDetailDao;

@Service("SelectDraftDetail")
public class SelectDraftDetail {
	
	@Autowired
	private DraftDetailDao ddd;

	public List<Map<String,String>> callDraftDetailDao(Integer draft_num) {
		// TODO Auto-generated method stub
		return ddd.selectDraftDetailList(draft_num);
	}
	
	

}
