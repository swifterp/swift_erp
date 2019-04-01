package dao.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.selectListMapper;

@Repository("DeleteNameCardInfoDao")
public class DeleteNameCardInfoDao {
	
	@Autowired
	private selectListMapper slm;
	
	@Autowired 
	private deleteListMapper dlm;
	
	public List<Map<String,String>> callDeleteNameCardInfo(Integer NAMECARD_CODE) {
		
		dlm.DeleteNameCardInfo(NAMECARD_CODE);
		
		return slm.getNameCardInfoList();
		
	}

}
