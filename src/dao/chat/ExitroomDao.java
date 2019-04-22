package dao.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.selectListMapper;

@Repository("ExitroomDao")
public class ExitroomDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private deleteListMapper dlm;
	
	public List<Map<String, String>> exitroom(Map<String, String> invitedata) {
		
		dlm.exitroom(invitedata.get("chatroom_code"), invitedata.get("empno"));
		
		return slm.getChatroomList(Integer.parseInt(invitedata.get("empno")));

	}
	
}
