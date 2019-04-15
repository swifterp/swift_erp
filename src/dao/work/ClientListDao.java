package dao.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("ClientListDao")
public class ClientListDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectClientList(String clientName){
		
		return slm.getClientList(clientName);
	}

}
