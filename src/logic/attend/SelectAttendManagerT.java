package logic.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendManagerTDao;

@Service("SelectAttendManagerT")
public class SelectAttendManagerT {
	
	@Autowired
	private AttendManagerTDao amt;
	
	//Attend Manager 페이지에서 테이블 전체 출력
	public List<Map<String, String>> callAttendManagerTDao(){
		
		return amt.selectAttendManagerList();
	
	}
	
	//Attend Manager에서 Attend_no 값 받아서 Attend Update에서 조회하고 싶을때 
	public List<Map<String, String>> callAttendManagerLowTDao(Integer attendno){
		return amt.selectAttendManagerLow(attendno);
	}
	
}
