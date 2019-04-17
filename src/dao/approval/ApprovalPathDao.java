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
	
	public List<Map<String,String>> selectApprovalPath(int draft_code){
		
		return slm.getApprovalPathList(draft_code);
	}
	public List<Map<String,String>> selectApprovalPath1(int empno){
		
		return slm.getApprovalPathList1(empno);
	}
	
	
	public  List<Map<String, String>> insertApprovalPathData(List<HashMap<String,Integer>> reference_list)
	{
		System.out.println("결재라인 다오단계 포문 진입 직전, 리스트크기 : "+ reference_list.size());
		for(int i=0; i<reference_list.size(); i++) {
			System.out.println("다오단계 서류번호"+reference_list.get(i).get("draft_no"));
			System.out.println("다오단계 결제자번호"+reference_list.get(i).get("reference_list"));
			System.out.println("다오단계 패스오더"+reference_list.get(i).get("path_order"));
			ilm.putApprovalPathData(reference_list.get(i));
		}
		return slm.getDraftList();
	}

	/*
	 * public void insertApprovalPath(HashMap<String, String> approval_path) { //
	 * TODO Auto-generated method stub
	 * 
	 * ilm.putApprovalPath(approval_path); }
	 */

}
