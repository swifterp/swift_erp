package resources.mapper;

import java.util.List;
import java.util.Map;

public interface selectListMapper {
	public List<Map<String, String>> getList();
	
	public List<Map<String, String>> getAllowanceList();
	public List<Map<String, String>> getDeductionList();
	public List<Map<String, String>> getSalaryCalcList();

	public List<Map<String, String>> getPersonalPayList(Integer salaryCalc_no);
	
	public List<Map<String, String>> getAttendCodeList();
	public List<Map<String, String>> getHolidayCodeList();
	public List<Map<String, String>> getAttendManagerList();
	

	public List<Map<String, String>> getPersonalPayList(String report);
	public List<Map<String, String>> getSpecsList(Integer empno);
<<<<<<< HEAD

=======
	public List<Map<String, String>> getUnderyearList();
>>>>>>> refs/remotes/origin/mino_branch
}
