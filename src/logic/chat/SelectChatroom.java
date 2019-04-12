package logic.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.ChatroomDao;

@Service("SelectChatroom")
public class SelectChatroom {
	
	@Autowired
	private ChatroomDao crd;
	
	public List<Map<String, String>> callChatroomDao(Integer empno) {
		
		return crd.selectChatroomList(empno);
		
	}
	
}