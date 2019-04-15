package logic.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.ChatlogDao;

@Service("SelectChatlog")
public class SelectChatlog {
	
	@Autowired
	private ChatlogDao cld;
	
	public List<Map<String, String>> callChatlogDao(String chatroom_code) {
		
		return cld.selectChatlogList(chatroom_code);
		
	}
	
}