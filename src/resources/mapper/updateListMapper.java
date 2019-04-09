package resources.mapper;

import java.util.HashMap;

public interface updateListMapper {
	
	//employee
	public void getEmpUpd(HashMap<String, String> empUpd);
	public void getDeptUpd(HashMap<String, String> deptno);
	public void getAppointUpd(HashMap<String, String> appointUpd);	
	public void getDeptRankUpd(HashMap<String, String> appointUpd);
		
	//pay
	public void resetUnderyearList(HashMap<String, Integer> percentage);
	
	//client
	public void UpdateNameCardInfo(HashMap<String, String> NAMECARD_INFO);
	public void UpdateClientInfo(HashMap<String, String> CLIENT_INFO);


	//Attend Start
	public void resetAttendList(HashMap<String, String> attendInsert); //Update Attend Data
	public void resetAttendCodeList(HashMap<String, String> attendCInsert);//Update Attend Code
	//Attend End
}