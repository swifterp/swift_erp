package logic.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendCodeTDao;

@Service("SelectAttendCodeT")
public class SelectAttendCodeT {
	
	@Autowired
	private AttendCodeTDao actd;
	
	public List<Map<String, String>> callAttendCodeTDao() {
		
		return actd.selectAttendCodeList();
	
	}

}
