package logic.chat;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.InsertChatlogDao;

@Service("InsertChatlog")
public class InsertChatlog {
	
	@Autowired
	private InsertChatlogDao icld;
	
	public void callInsertLogDao(Map<String, String> log) {
		
		icld.insertChatLog(log);
		
	}
	
}
