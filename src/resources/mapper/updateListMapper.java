package resources.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	
	//work
	public void update_BusinessLog(HashMap<String, String> businessdata);//Work Business List Low Update

	//
	public void resetTotalCalcList(HashMap<String, String> totalNreport);
	
	public void resetPersonalPayList(List<HashMap<String, String>> personal_data);
	
	public void resetWorkConfirmList(@Param("selectedDate") String selectedDate, @Param("empno") String empno);
	
	public void resetPayConfirmList(String report);
	
	public void resetPayConfirmCancelList(String report);
	
	public void resetWorkConfirmCancel(@Param("empno") String empno, @Param("selectedDate") String selectedDate);
	
	//approval
	public void InsertApprovalWrite(HashMap<String,String> draft_info);
	public void UpdateDraftState(HashMap<String, String> updateState);
	public void UpdateFinalState(String draft_code);

}