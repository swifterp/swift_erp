package dao.attend;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import resources.mapper.selectListMapper;
import resources.mapper.updateListMapper;

@Repository("AttendManagerTDao")
public class AttendManagerTDao {
	
	@Autowired
	private selectListMapper slm;

	@Autowired
	private updateListMapper ulm;
	
	//Attend Manager ���������� ���̺� ��ü ���
	public List<Map<String, String>> selectAttendManagerList(){
		
		return slm.getAttendManagerList();
	}
	
	//Attend Manager���� Attend_no �� �޾Ƽ� Attend Update���� ��ȸ�ϰ� ������ 
	public List<Map<String, String>> selectAttendManagerLow(Integer attendno){
		
		return slm.getAttendLow(attendno);
	}
	
	//���±�� ������ ���¸���Ʈ�������� ��ȯ
	public List<Map<String, String>> updateAttendManagerLowup(HashMap<String, String> attendInsert){
		//System.out.println(attendInsert);
		ulm.resetAttendList(attendInsert);
		return slm.getAttendManagerList();
	}
	
}
