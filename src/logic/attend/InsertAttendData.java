package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendManagerTDao;

@Service ("InsertAttendData")
public class InsertAttendData {
	@Autowired
	private AttendManagerTDao amtd;
	
//Insert Attend Data
	public List<Map<String, String>> callInsertAttendDataDao(HashMap<String, String> attendDPlus) {
		return amtd.insertAttendData(attendDPlus);
	}
}
