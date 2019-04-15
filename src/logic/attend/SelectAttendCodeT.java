package logic.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendCodeTDao;

@Service("SelectAttendCodeT")
public class SelectAttendCodeT {
	@Autowired
	private AttendCodeTDao actd;

//View Attend Code List
	public List<Map<String, String>> callAttendCodeTDao() {	
		return actd.selectAttendCodeList();
	}
//Call Attend Code One Low
	public List<Map<String, String>> callAttendCodeLowDao(Integer attend_code){
		return actd.selectAttendCodeLow(attend_code);
	}
//Call Attend Code Details
	public List<Map<String, String>> callAttendCodeDetailListDao(HashMap<String, String> DetailCodeInfo){
		return actd.selectAttendCodeDetailList(DetailCodeInfo);
	}
}
