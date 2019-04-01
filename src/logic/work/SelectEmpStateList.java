package logic.work;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.EmpStateDao;


@Service("/SelectEmpStateList")
public class SelectEmpStateList {
	
	@Autowired
	private EmpStateDao esd;
	
	public List<Map<String,String>> callEmpStateDao(String EMP_NAME){
		
		return esd.selectEmpState(EMP_NAME);
		
	}
	

}
