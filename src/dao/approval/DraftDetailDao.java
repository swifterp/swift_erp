package dao.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("DraftDetailDao")
public class DraftDetailDao {
	
	@Autowired
	private selectListMapper slm;
	
	public String selectDraftDetailList(Integer draft_num) {
		
		return slm.getDraftDetailList(draft_num);
	}

}
