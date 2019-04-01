package logic.attend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendManagerTDao;

@Service("DeleteAttendData")
public class DeleteAttendData {
	@Autowired
	private AttendManagerTDao amtd;

//Delete Attend Data
	public int callDeleteAttendDataDao(Integer attend_no) {
		return amtd.deleteAttendData(attend_no);
	}
}
