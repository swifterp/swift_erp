package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("ClientListDao")
public class ClientDao {
	
	@Autowired
	private selectListMapper slm;

//Client POP-UP Call
	public List<Map<String, String>> select_pop_client(){
		return slm.get_pop_client();
	}

}
