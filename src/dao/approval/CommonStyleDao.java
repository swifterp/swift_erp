package dao.approval;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("CommonStyleDao")
public class CommonStyleDao {

	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectCommonList() {
		
		return slm.getCommonList();
	}
	
	public String selectCommon(int style_code) {
		
		return slm.getCommon(style_code);
		
	}
	
	@Autowired
	private insertListMapper ilm;
	public List<Map<String, String>> insertApprovalData(HashMap<String, String> approval_data){
		ilm.InsertApprovalData(approval_data);
		return slm.getCommonList();
	}

	public List<Map<String, String>> insertApprovalWrite(String approval_write) {
		// TODO Auto-generated method stub
		ilm.InsertApprovalWrite(approval_write);
		return slm.getCommonList();
	}

}
