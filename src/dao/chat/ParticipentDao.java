package dao.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("ParticipentDao")
public class ParticipentDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String, String>> selectParticipentList(String chatroom_code) {
		
		return slm.getParticipentList(chatroom_code);

	}
	
}
