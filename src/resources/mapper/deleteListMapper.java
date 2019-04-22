package resources.mapper;

import org.apache.ibatis.annotations.Param;

public interface deleteListMapper {
	
	//employee
	public int getEmpDel(Integer emp_appoint_num);	
	public void getAppointDel(Integer emp_appoint_num);
	public int getDeptDel(Integer deptno);
	
	//pay
	public Integer killAllowanceList(Integer allowance_no);
	
	//work
	public int setwork_DataDelete(int log_no);//Work Business List Low Delete
	
	//Attend Start
	public int setAttendDeleteData(Integer attend_no);//Delete Attend Data
	public int setDeleteAttendCode(Integer attend_code);//Delete Attend Code
	//Attend End
	
	//client
	public void DeleteNameCardInfo(Integer NAMECARD_CODE);	
	public void DeleteClientInfo(Integer CLIENT_CODE);
	
	public int getList();
	public int setList();

	
	public Integer killDeductionList(Integer deduction_no);
	
	public Integer killPersonalPayList(String report);
	
	public Integer killSalaryCalcList(String report);
	
	public Integer exitroom(@Param("chatroom_code") String chatroom_code, @Param("empno") String empno);
	
	public void empPayInfoDelete(String empno);
	
	public void empDeducInfoDelete(String empno);
	
}
