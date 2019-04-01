package logic.attend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendCodeTDao;

@Service("DeleteAttendCodeT")
public class DeleteAttendCodeT {
	@Autowired
	private AttendCodeTDao actd;
	
//Delete Attend Code
	public int callDeleteAttendCodeDao(Integer attend_code) {
		System.out.println(attend_code);
		return actd.deleteAttendCode(attend_code);
	}
}
