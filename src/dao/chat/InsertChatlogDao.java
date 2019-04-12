package dao.chat;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;

@Repository("InsertChatlogDao")
public class InsertChatlogDao {
	
	@Autowired
	private insertListMapper ilm;
	
	public void insertChatLog(Map<String, String> log) {
		
		ilm.setChatlog(log);

	}
	
}
