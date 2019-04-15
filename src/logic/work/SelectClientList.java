package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.ClientListDao;

@Service("SelectClientList")
public class SelectClientList {
	
	@Autowired
	private ClientListDao cld;
	
	public List<Map<String,String>> CallClientListDao(String clientName){	
		
		return cld.selectClientList(clientName); 
	}

}
