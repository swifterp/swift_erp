package dao.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("AttendAddDao")
public class AttendAddDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> insertAttendAddData(String report) {
		
		return slm.
		
	}
}
