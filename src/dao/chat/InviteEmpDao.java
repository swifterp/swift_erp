package dao.chat;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.MergeListMapper;
import resources.mapper.selectListMapper;

@Repository("InviteEmpDao")
public class InviteEmpDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired
	private MergeListMapper mlm;
	
	public List<Map<String, String>> inviteEmp(Map<String, String> invitedata) {
	
		Set<String> tmp = invitedata.keySet();
		Iterator<String> temp = tmp.iterator();
		while(temp.hasNext()){
			String tp = temp.next();
			if(tp.equals("chatroom_code")) {
			} else {
				Map<String, String> tempor = new HashMap<String, String>();
				tempor.put("chatroom_code", invitedata.get("chatroom_code"));
				tempor.put("participent", tp);
				mlm.resetParticipent(tempor);
			}
		}
		
		return slm.getParticipentList(invitedata.get("chatroom_code"));

	}
	
}
