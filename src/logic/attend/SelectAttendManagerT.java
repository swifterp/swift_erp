package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import dao.attend.AttendManagerTDao;

@Service("SelectAttendManagerT")
public class SelectAttendManagerT {
	@Autowired
	private AttendManagerTDao amt;
	
//View Attend Data List
	public List<Map<String, String>> callAttendManagerTDao(){		
		return amt.selectAttendManagerList();
	}
//Call Attend Data One Low
	public List<Map<String, String>> callAttendDataLowDao(Integer attendno){
		return amt.selectAttendDataLow(attendno);
	}
//Call Attend Data Details
	public List<Map<String, String>> callAttendDetailListDao(@RequestParam HashMap<String, String> DetailInfo){
		return amt.selectAttendDetailList(DetailInfo);
	}

}
