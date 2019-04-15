package dao.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("ChatroomDao")
public class ChatroomDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectChatroomList(Integer empno) {
		
		return slm.getChatroomList(empno);

	}
	
}
