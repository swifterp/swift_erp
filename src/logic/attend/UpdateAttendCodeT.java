package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendCodeTDao;

@Service("UpdateAttendCodeT")
public class UpdateAttendCodeT {
	@Autowired
	private AttendCodeTDao actd;

//Update Attend Code
	public List<Map<String, String>> callUpdateAttendCodeDao(HashMap<String, String> attendCInsert){
		return actd.updateAttendCode(attendCInsert);
	}
}
