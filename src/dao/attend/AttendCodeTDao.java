package dao.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.deleteListMapper;
import resources.mapper.insertListMapper;
import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("AttendCodeTDao")
public class AttendCodeTDao {
	@Autowired
	private selectListMapper slm;
	@Autowired
	private insertListMapper ilm;	
	@Autowired
	private deleteListMapper dlm;
	@Autowired
	private updateListMapper ulm;
	
//View Attend Code List
	public List<Map<String, String>> selectAttendCodeList(){
		return slm.getAttendCodeList();
	}
//Insert Attend Code
	public List<Map<String, String>> insertAttendCode(HashMap<String, String> attendCPlus){
		ilm.InsertAttendCode(attendCPlus);
		return slm.getAttendCodeList();
	}
//Delete Attend Code
	public int deleteAttendCode(Integer attend_code) {
		return dlm.setDeleteAttendCode(attend_code);
	}
//Call Attend Code One Low
	public List<Map<String, String>> selectAttendCodeLow(Integer attend_code){
		return slm.getAttendCodeLow(attend_code);
	}
//Update Attend Code
	public List<Map<String, String>> updateAttendCode(HashMap<String, String> attendInsert){
		ulm.resetAttendCodeList(attendInsert);
		return slm.getAttendCodeList();
	}
//Call Attend Code Details
	public List<Map<String, String>> selectAttendCodeDetailList(HashMap<String, String> DetailCodeInfo){
		return slm.getAttendCodeDetailList(DetailCodeInfo);
	}
	
}
