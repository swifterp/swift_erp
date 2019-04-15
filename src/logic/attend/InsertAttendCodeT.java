package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendCodeTDao;

@Service ("InsertAttendCode")
public class InsertAttendCodeT {
	@Autowired
	private AttendCodeTDao actd;

//Insert Attend Code
	public List<Map<String, String>> callInsertAttendCodeDao(HashMap<String, String> attendCPlus) {
		return actd.insertAttendCode(attendCPlus);
	}
}
