package dao.chat;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("InsertRoomDao")
public class InsertRoomDao {
	
	@Autowired
	private insertListMapper ilm;
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> insertRoom(Map<String, String> participent_list) {
		Map<String, String> temporary = new HashMap<String, String>();
		temporary.put("title", participent_list.get("title"));
		temporary.put("chatroom_code", "");
		ilm.setRoom(temporary);
		
		Set<String> tmp = participent_list.keySet();
		Iterator<String> temp = tmp.iterator();
		while(temp.hasNext()){
			String tp = temp.next();
			if(tp.equals("title")) {
			}else if(tp.equals("me")) {
				Map<String, String> tempor = new HashMap<String, String>();
				tempor.put("chatroom_code", temporary.get("chatroom_code"));
				tempor.put("participent", participent_list.get("me"));
				ilm.setParticipent(tempor);
			} else {
				Map<String, String> tempor = new HashMap<String, String>();
				tempor.put("chatroom_code", temporary.get("chatroom_code"));
				tempor.put("participent", tp);
				ilm.setParticipent(tempor);
			}
		}
		
		return slm.getChatroomList(Integer.parseInt(participent_list.get("me")));
		
	}
	
}