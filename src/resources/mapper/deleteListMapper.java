package resources.mapper;

public interface deleteListMapper {

	public int getList();
	public int setList();

	public int getEmpDel(Integer emp_appoint_num);
	
	public void getAppointDel(Integer emp_appoint_num);

	public int getDeptDel(Integer deptno);
	
	public Integer killAllowanceList(Integer allowance_no);
	
	public Integer killDeductionList(Integer deduction_no);
	
	public Integer killPersonalPayList(String report);
	
	public Integer killSalaryCalcList(String report);
	
	public int setAttendDeleteData(Integer attend_no);

}
