package dao.work;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("BusinessLogDao")
public class BusinessLogDao {
	
	@Autowired
	private selectListMapper slm;
	@Autowired
	private insertListMapper ilm;
	@Autowired
	private updateListMapper ulm;
	@Autowired
	private deleteListMapper dlm;
	
//Work Business List Call
	public List<Map<String,String>> selectBusinessLog(){		
		return slm.getBusinessLogList();
	}
//Work Business List Search
	public List<Map<String, String>> selectworkDetailList(HashMap<String, String> searchData){
		return slm.getworkDetailList(searchData);
	}
//Work Business Data Insert
	public List<Map<String, String>> InsertBusinessLog (HashMap<String,String> businesslog) {
		ilm.InsertBusinessLog(businesslog);
		return slm.getBusinessLogList();
	}
//Work Business List Low Search
	public List<Map<String, String>> selectwork_DataListLow(int log_no){
		return slm.getselectwork_DataListLow(log_no);
	}
//Work Business List Low Update
	public List<Map<String, String>> UpdateBusinessLog(HashMap<String, String> businessdata){
		ulm.update_BusinessLog(businessdata);
		return slm.getBusinessLogList();
	}
//Work Business List Low Delete
	public int deletework_DataDelete(int log_no) {
		return dlm.setwork_DataDelete(log_no);
	}

}
