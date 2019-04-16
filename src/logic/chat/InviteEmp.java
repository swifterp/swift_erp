package logic.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.chat.InviteEmpDao;

@Service("InviteEmp")
public class InviteEmp {
	
	@Autowired
	private InviteEmpDao ived;
	
	public List<Map<String, String>> callInviteEmpDao(Map<String, String> invitedata) {
		
		return ived.inviteEmp(invitedata);
		
	}
	
}
