package logic.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.InsertRoomDao;

@Service("InsertRoom")
public class InsertRoom {
	
	@Autowired
	private InsertRoomDao ird;
	
	public List<Map<String, String>> callInsertRoomDao(Map<String, String> participent_list) {
		
		return ird.insertRoom(participent_list);
		
	}
	
}
