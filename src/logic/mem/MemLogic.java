package logic.mem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import dao.mem.MemDao;
import resources.mapper.updateListMapper;

@Service("MemLogic")
public class MemLogic {
	@Autowired
	private MemDao md;
	
	//join
	public void memAddDao(HashMap<String, String> memPlus) {
		md.MemAdd(memPlus);
	}
	
	//login
	public List<Map<String, String>> login(HashMap<String, String> memLogin) {
		return md.login(memLogin);
	}
	
	//logout
    public void logout(HttpSession session) {
        session.invalidate();
    }

}