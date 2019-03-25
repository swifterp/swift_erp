package resources.mapper;

import java.util.HashMap;

public interface updateListMapper {
	public void getEmpUpd(HashMap<String, String> empUpd);

	public void getDeptUpd(HashMap<String, String> deptno);

	public void getAppointUpd(HashMap<String, String> appointUpd);
	
	public void resetUnderyearList(HashMap<String, Integer> percentage);
	
	public void resetAttendList(HashMap<String, String> attendInsert);
}