package logic.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.AttendManagerTDao;

@Service("SelectAttendManagerT")
public class SelectAttendManagerT {
	
	@Autowired
	private AttendManagerTDao amt;
	
	//Attend Manager ���������� ���̺� ��ü ���
	public List<Map<String, String>> callAttendManagerTDao(){
		
		return amt.selectAttendManagerList();
	
	}
	
	//Attend Manager���� Attend_no �� �޾Ƽ� Attend Update���� ��ȸ�ϰ� ������ 
	public List<Map<String, String>> callAttendManagerLowTDao(Integer attendno){
		return amt.selectAttendManagerLow(attendno);
	}
	
}
