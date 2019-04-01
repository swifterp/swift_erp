package resources.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface selectListMapper {

	public String login(HashMap<String, String> memLogin);
	
	//employee
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
	
	public int checkEmpNum(String emp_number);
	
	//
	public List<Map<String, String>> getAllowanceList();

	
	public List<Map<String, String>> getDraftList();
	
	public List<Map<String, String>> getDraftDetailList(Integer draft_num);
	
	public List<Map<String, String>> getCommonList();

	public List<Map<String, String>> getApprovalPathList();

	public List<Map<String, String>> getMyApprovalList();
	
	public List<Map<String, String>> getBusinessLogList();
	
	public List<Map<String, String>> getMonthWorkList(String search_month);

	public List<Map<String, String>> getWorkStateList();
	
	public List<Map<String, String>> getWorkTimeList(String search_day);

	public List<Map<String, String>> getWorkEtcList();

	public List<Map<String, String>> getClientInfoList();

	public List<Map<String, String>> getNameCardInfoList();

	

	public List<Map<String, String>> getDeductionList();
	public List<Map<String, String>> getSalaryCalcList();

	public List<Map<String, String>> getPersonalPayList(Integer salaryCalc_no);

	public List<Map<String, String>> getPersonalPayList(String report);

	public List<Map<String, String>> getSpecsList(Integer empno);

	//public List<Map<String, String>> getSpecsList(Integer emp_number);

	public List<Map<String, String>> getUnderyearList();

	public List<Map<String, String>> getMonthlyempList(String selectedDate);

	public List<Map<String, String>> getDailyworkList(String selectedDate);

	public List<Map<String, String>> getEmpData(String empInfo);

	
/////Attend Start
	public List<Map<String, String>> getAttendDataList(); //View Attend Data List
	public List<Map<String, String>> getAttendCodeList();//View Attend Code List
	public List<Map<String, String>> getAttendLow(Integer attendno); //Call Attend Data One Low
	public List<Map<String, String>> getAttendCodeLow(Integer attendd_code);//Call Attend Code One Low
	public List<Map<String, String>> getAttendDetailList(HashMap<String, String> DetailInfo);//Call Attend Data Details
	public List<Map<String, String>> getAttendCodeDetailList(HashMap<String, String> DetailCodeInfo);//Call Attend Code Details
////Attend End

	public List<Map<String, String>> getClientList(String clientName);
	
	public List<Map<String, String>> getDeptList(String deptName);
	
	public List<Map<String, String>> getEmpStateList(String EMP_NAME);
	
	public List<Map<String, String>> getDeptStateList(String DEPT_NAME);
	
	public Map<String, String> getClientInfoDetail(Integer CLIENT_CODE);
	
	public Map<String, String> getNameCardInfoDetail(Integer NAMECARD_CODE);

}
