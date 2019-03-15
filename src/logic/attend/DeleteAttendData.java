package logic.attend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendDeleteDao;

@Service("DeleteAttendData")
public class DeleteAttendData {
	@Autowired
	private AttendDeleteDao add;
	public int callAttendDeleteDao(Integer attend_no) {
		return add.deleteAttendData(attend_no);
	}
}
