package logic.attend;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.attend.HolidayCodeTDao;

@Service("SelectHolidayCodeT")
public class SelectHolidayCodeT {
	
	@Autowired
	private HolidayCodeTDao hctd;
	
	public List<Map<String, String>> callHolidayCodeDao(){
		
		return hctd.selectHolidayCodeList();
		
	}

}
