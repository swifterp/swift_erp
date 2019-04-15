package dao.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.selectListMapper;

@Repository("DeleteClientInfoDao")
public class DeleteClientInfoDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired 
	private deleteListMapper dlm;
	
	public List<Map<String,String>> callDeleteClientInfo(Integer CLIENT_CODE) {
		
		dlm.DeleteClientInfo(CLIENT_CODE);
		
		return slm.getClientInfoList();
		
	}

}
