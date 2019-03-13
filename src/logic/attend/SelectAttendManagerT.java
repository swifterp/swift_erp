package logic.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendManagerTDao;

@Service("SelectAttendManagerT")
public class SelectAttendManagerT {
	
	@Autowired
	private AttendManagerTDao amt;
	
	public List<Map<String, String>> callAttendManagerTDao(){
		
		return amt.selectAttendManagerList();
	
	}
	
}
