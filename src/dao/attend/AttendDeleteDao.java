package dao.attend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;

@Repository("AttendDeleteDao")
public class AttendDeleteDao {
	@Autowired
	private deleteListMapper dlm;

	public int deleteAttendData(Integer attend_no){
		return dlm.setAttendDeleteData(attend_no);
	}
}
