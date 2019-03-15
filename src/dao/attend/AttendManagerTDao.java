package dao.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("AttendManagerTDao")
public class AttendManagerTDao {
	
	@Autowired
	private selectListMapper slm;

	@Autowired
	private updateListMapper ulm;
	
	//Attend Manager 페이지에서 테이블 전체 출력
	public List<Map<String, String>> selectAttendManagerList(){
		
		return slm.getAttendManagerList();
	}
	
	//Attend Manager에서 Attend_no 값 받아서 Attend Update에서 조회하고 싶을때 
	public List<Map<String, String>> selectAttendManagerLow(Integer attendno){
		
		return slm.getAttendLow(attendno);
	}
	
	//근태기록 수정후 근태리스트페이지로 반환
	public List<Map<String, String>> updateAttendManagerLowup(HashMap<String, String> attendInsert){
		//System.out.println(attendInsert);
		ulm.resetAttendList(attendInsert);
		return slm.getAttendManagerList();
	}
	
}
