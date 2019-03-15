package dao.approval;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("DraftDao")
public class DraftDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectDraftList() {
		
		return slm.getDraftList();
	}

}
