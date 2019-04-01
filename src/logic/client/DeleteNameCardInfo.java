package logic.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.client.DeleteNameCardInfoDao;


@Service("/DeleteNameCardInfo")
public class DeleteNameCardInfo {
	
	@Autowired
	private DeleteNameCardInfoDao dnid;
	
	public List<Map<String,String>> deleteNameCardInfo(Integer NAMECARD_CODE){
		
		return dnid.callDeleteNameCardInfo(NAMECARD_CODE);
	}

}
