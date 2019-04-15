package dao.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;

@Repository("ClientInfoDao")
public class ClientInfoDao {
	
	@Autowired
	private selectListMapper slm;
	
	public List<Map<String,String>> selectClientInfo(){
		
		return slm.getClientInfoList();
	}

	public Map<String, String> selectClientInfoDetail(int CLIENT_CODE) {
		// TODO Auto-generated method stub
		return slm.getClientInfoDetail(CLIENT_CODE);
	}


}
