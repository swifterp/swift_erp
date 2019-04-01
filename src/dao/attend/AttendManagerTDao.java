package dao.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import resources.mapper.deleteListMapper;
import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("AttendManagerTDao")
public class AttendManagerTDao {
	@Autowired
	private selectListMapper slm;
	@Autowired
	private updateListMapper ulm;
	@Autowired
	private deleteListMapper dlm;
	@Autowired
	private insertListMapper ilm;
	
//View Attend Data List
	public List<Map<String, String>> selectAttendManagerList(){
		return slm.getAttendDataList();
	}
//Call Attend Data One Low
	public List<Map<String, String>> selectAttendDataLow(Integer attendno){
		return slm.getAttendLow(attendno);
	}
//Update Attend Data
	public List<Map<String, String>> updateAttendData(HashMap<String, String> attendInsert){
		ulm.resetAttendList(attendInsert);
		return slm.getAttendDataList();
	}
//Insert Attend Data
	public List<Map<String, String>> insertAttendData(HashMap<String, String> attenDPlus) {
		ilm.InsertAttendData(attenDPlus);
		return slm.getAttendDataList();
	}
//Delete Attend Data
	public int deleteAttendData(Integer attend_no){
		return dlm.setAttendDeleteData(attend_no);
	}
//Call Attend Data Details
	public List<Map<String, String>> selectAttendDetailList(HashMap<String, String> DetailInfo){
		return slm.getAttendDetailList(DetailInfo);
	}
	
}
