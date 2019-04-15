package dao.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("UpdateNameCardInfoDao")
public class UpdateNameCardInfoDao {
	
	@Autowired
	private updateListMapper ulm;
	
	@Autowired 
	private selectListMapper slm;
	
	public List<Map<String, String>> UpdateNameCardInfo (HashMap<String,String> NAMECARD_INFO) {
	
	ulm.UpdateNameCardInfo(NAMECARD_INFO);
	
	return slm.getNameCardInfoList();
	}

}
