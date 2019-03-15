package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendAddDao;

@Service ("InsertAttendData")
public class InsertAttendData {
	
	@Autowired
	private AttendAddDao aad;
	
	public List<Map<String, String>> callAttendAddDao(HashMap<String, Integer> attendplus) {
		
		return aad.insertAttendAddList(attendplus);
		
	}
	
}
