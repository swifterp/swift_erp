package resources.mapper;

import java.util.List;
import java.util.Map;

public interface selectListMapper {
	public List<Map<String, String>> getList();
	
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
	public List<Map<String, String>> getPersonalPayList(String report);
	public List<Map<String, String>> getSpecsList(Integer empno);
	public List<Map<String, String>> getUnderyearList();
	public List<Map<String, String>> getMonthlyempList(String selectedDate);



}
