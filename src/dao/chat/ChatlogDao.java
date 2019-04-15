package dao.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("ChatlogDao")
public class ChatlogDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectChatlogList(String chatroom_code) {
		
		return slm.getChatlogList(chatroom_code);

	}
	
}
