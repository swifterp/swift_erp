package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendManagerTDao;

@Service("UpdateAttendLow")
public class UpdateAttendLow {
	
	@Autowired
	private AttendManagerTDao amt;

	//Attend Manager에서 Attend_no 값 받아서 Attend Update에서 조회하고 싶을때 
	public List<Map<String, String>> callAttendManagerLowup(HashMap<String, String> attendInsert){
		//System.out.println(attendInsert);
		return amt.updateAttendManagerLowup(attendInsert);
	}
	
}
