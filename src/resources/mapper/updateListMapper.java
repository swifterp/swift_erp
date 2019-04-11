package resources.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface updateListMapper {
	public void getEmpUpd(HashMap<String, String> empUpd);

	public void getDeptUpd(HashMap<String, String> deptno);

	public void getAppointUpd(HashMap<String, String> appointUpd);
	
	public void resetUnderyearList(HashMap<String, Integer> percentage);

	public void resetAttendList(HashMap<String, String> attendInsert);
	
	public void resetTotalCalcList(HashMap<String, String> totalNreport);
	
	public void resetPersonalPayList(List<HashMap<String, String>> personal_data);

	public void resetWorkConfirmList(@Param("selectedDate") String selectedDate, @Param("empno") String empno);
	
	public void resetPayConfirmList(String report);
	
	public void resetPayConfirmCancelList(String report);

}