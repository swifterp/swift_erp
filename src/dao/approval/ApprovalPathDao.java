package dao.approval;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("ApprovalPathDao")
public class ApprovalPathDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private insertListMapper ilm;
	
	public List<Map<String,String>> selectApprovalPath(){
		
		return slm.getApprovalPathList();
	}
	public List<Map<String,String>> selectApprovalPath1(int empno){
		
		return slm.getApprovalPathList1(empno);
	}
	public List<Map<String,String>> selectApprovalPath2(int empno){
		
		return slm.getApprovalPathList2(empno);
	}
	public List<Map<String,String>> selectApprovalPath3(int empno){
		
		return slm.getApprovalPathList3(empno);
	}

	public void insertApprovalPath(HashMap<String, String> approval_path) {
		// TODO Auto-generated method stub
		
		ilm.putApprovalPath(approval_path);
	}

}
