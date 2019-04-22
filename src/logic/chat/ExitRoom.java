package logic.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.ExitroomDao;

@Service("ExitRoom")
public class ExitRoom {
	
	@Autowired
	private ExitroomDao erd;
	
	public List<Map<String, String>> callexitroomDao(Map<String, String> exitdata) {
		
		return erd.exitroom(exitdata);
		
	}
	
}
