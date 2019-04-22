package logic.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.ParticipentDao;

@Service("SelectParticipentList")
public class SelectParticipentList {
	
	@Autowired
	private ParticipentDao pd;
	
	public List<Map<String, String>> callParticipentDao(String chatroom_code) {
		
		return pd.selectParticipentList(chatroom_code);
		
	}
	
}