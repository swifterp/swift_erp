package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.ClientDao;

@Service("SelectClientList")
public class SelectClientList {
	
	@Autowired
	private ClientDao cd;

//Client POP-UP Call
	public List<Map<String, String>> call_pop_client(){
		return cd.select_pop_client();
	}

}
