package resources.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface selectListMapper {
	/*인사*/
	public List<Map<String, String>> getEmpList();

	
    /*급여*/
	public List<Map<String, String>> getAllowanceList();
	public List<Map<String, String>> getDeductionList();
	public List<Map<String, String>> getSalaryCalcList();
	public List<Map<String, String>> getPersonalPayList(Integer salaryCalc_no);
}
