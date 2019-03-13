package dao.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("AttendManagerTDao")
public class AttendManagerTDao {
	
	@Autowired
	private selectListMapper slm;

	public List<Map<String, String>> selectAttendManagerList(){
		
		return slm.getAttendManagerList();
	}
	
}
