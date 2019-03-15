package dao.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("AttendAddDao")
public class AttendAddDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> insertAttendAddList(HashMap<String, Integer> attendplus) {
		
		ilm.setAttendAddList(attendplus);
		
		return slm.getAttendAddList();
		
	}
}
