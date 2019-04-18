package logic.work;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.work.BusinessLogDao;

@Service("DeleteBusinessLog")
public class DeleteBusinessLog {
	@Autowired
	private BusinessLogDao bld;
	
//Work Business List Low Delete
	public int callwork_DataDelete(int log_no) {
		return bld.deletework_DataDelete(log_no);
	}
}
