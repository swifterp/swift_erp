package resources.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface selectListMapper {
	
	//member
	public int idCheck(String mem_email_id);
	
	//employee
	public String login(HashMap<String, String> memLogin);

	public List<Map<String, String>> getEmpList();
	
	public List<Map<String, String>> getEmpView(Integer emp_number);
	
	public List<Map<String, String>> getEmpNumList();
	
	public List<Map<String, String>> getDeptList();
	
	public List<Map<String, String>> getDeptView(Integer deptno);
	
	public List<Map<String, String>> getRankList();
	
	public List<Map<String, String>> getDutyList();
	
	public List<Map<String, String>> getBankList();
	
	public List<Map<String, Integer>> empNumCheck(Integer emp_number);

	public List<Map<String, String>> getAppointList();

	public List<Map<String, String>> getAppointView(Integer emp_appoint_no);
	
	//
	public List<Map<String, String>> getAllowanceList();

	public List<Map<String, String>> getDraftList();
	
	public List<Map<String, String>> getDraftDetailList(Integer draft_num);
	
	public List<Map<String, String>> getCommonList();

	public List<Map<String, String>> getApprovalPathList();

	public List<Map<String, String>> getMyApprovalList();
	
	public List<Map<String, String>> getBusinessLogList();
	
	public List<Map<String, String>> getMonthWorkList();

	public List<Map<String, String>> getWorkStateList();
	
	public List<Map<String, String>> getWorkTimeList();

	public List<Map<String, String>> getWorkEtcList();

	public List<Map<String, String>> getClientInfoList();

	public List<Map<String, String>> getNameCardInfoList();

	

	public List<Map<String, String>> getDeductionList();
	public List<Map<String, String>> getSalaryCalcList();

	public List<Map<String, String>> getPersonalPayList(Integer salaryCalc_no);
	
	public List<Map<String, String>> getAttendCodeList();
	public List<Map<String, String>> getHolidayCodeList();
	public List<Map<String, String>> getAttendManagerList();
	public List<Map<String, String>> getAttendAddList();

	public List<Map<String, String>> getPersonalPayList(String report);

	public List<Map<String, String>> getSpecsList(Integer empno);

	//public List<Map<String, String>> getSpecsList(Integer emp_number);

	public List<Map<String, String>> getUnderyearList();

	public List<Map<String, String>> getMonthlyempList(String selectedDate);

	public List<Map<String, String>> getDailyworkList(String selectedDate);
	
	public List<Map<String, String>> getAttendLow(Integer attendno); 
	
	public List<Map<String, String>> getEmpData(String empInfo);

	public int checkEmpNum(String emp_number);

	

}
