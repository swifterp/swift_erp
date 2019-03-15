package dao.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("AttendCodeTDao")
public class AttendCodeTDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectAttendCodeList(){
		return slm.getAttendCodeList();
	}
	
}
