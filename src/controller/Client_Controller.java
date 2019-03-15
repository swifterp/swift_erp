package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import logic.client.SelectClientInfo;
import logic.client.SelectNameCardInfo;

@Controller
@RequestMapping("/client")
public class Client_Controller {
	
	@Autowired
	private SelectClientInfo sci;
	
	@Autowired
	private SelectNameCardInfo sni;
	
	@RequestMapping("/selectNameCardInfo")
	public String readClientInfo(Model model) {
		
		model.addAttribute("list", sni.callNameCardInfoDao());
		
		return "client/namecard_info";
	}
	
}
