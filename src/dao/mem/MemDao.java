package dao.mem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;

@Repository("MemDao")
public class MemDao {
	
	@Autowired
	private insertListMapper ilm;
	public void MemAdd(HashMap<String, String> memPlus) {
		ilm.memAdd(memPlus);
	}
	
	@Autowired
	private selectListMapper slm;

    public String login(HashMap<String, String> memLogin) {
        return slm.login(memLogin);
    }

    public void logout(HttpSession session) {
    }
}
