package controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.client.DeleteClientInfo;
import logic.client.DeleteNameCardInfo;
import logic.client.InsertClientInfo;
import logic.client.InsertNameCardInfo;
import logic.client.SelectClientInfo;
import logic.client.SelectNameCardInfo;
import logic.client.UpdateClientInfo;
import logic.client.UpdateNameCardInfo;

@Controller
@RequestMapping("service/client")
public class Client_Controller {
	
	@Autowired
	private SelectClientInfo sci;
	
	@RequestMapping("/selectClientInfo")
	public String readClientInfo(Model model) {
		model.addAttribute("list",sci.callClientInfoDao());	
		return "client/client_info";
	}
	
	@RequestMapping("/selectClientInfoDetail")
	public String readClientInfoDetail(Model model,@RequestParam int CLIENT_CODE) {
		model.addAttribute("map",sci.callClientInfoDao(CLIENT_CODE));
		
		return "client/client_clientinfodetail";
	}
	
	@Autowired
	private SelectNameCardInfo sni;
	
	@RequestMapping("/selectNameCardInfo")
	public String readNameCardInfo(Model model) {
		
		model.addAttribute("list", sni.callNameCardInfoDao());
		
		return "client/client_namecardinfo";	
		}
	@RequestMapping("/selectNameCardDetail")
	public String readNameCardInfoDetail(Model model,@RequestParam(value="NAMECARD_CODE") int NAMECARD_CODE) {
		
		model.addAttribute("map", sni.callNameCardInfoDao(NAMECARD_CODE));
		
		return "client/client_clientnamecardinfodetail";
	}
	
	@Autowired
	private InsertClientInfo ici;
	
	@RequestMapping("/insertClientInfo")
	public String writeClientInfo(Model model,@RequestParam HashMap<String,String> CLIENT_INFO) {
		
		model.addAttribute("list", ici.writeClientInfo(CLIENT_INFO));
		
		return "client/client_info";
	}
	
	
	@Autowired
	private InsertNameCardInfo ini;
	
	@RequestMapping("/insertNameCardInfo")
	public String writeNameCardInfo(Model model,@RequestParam HashMap<String,String> NAMECARD_INFO) {
		
		model.addAttribute("list", ini.writeNameCardInfo(NAMECARD_INFO));
		
		return "client/client_namecardinfo";
	}
	
	
	  @Autowired 
	  private UpdateNameCardInfo uni;
	  
	  @RequestMapping("/updateNameCardInfo") 
	  public String updateNameCardInfo(Model model,@RequestParam HashMap<String,String> NAMECARD_INFO) {
	  
	  model.addAttribute("list", uni.UpdateNameCardInfo(NAMECARD_INFO));
	  
	  return "client/client_namecardinfo"; 
	  }
	 
	@Autowired
	private DeleteNameCardInfo dni;
	
	@RequestMapping("/deleteNameCardInfo")
	public String deleteNameCardInfo(Model model,@RequestParam(value="NAMECARD_CODE") Integer NAMECARD_CODE) {
		
		model.addAttribute("list", dni.deleteNameCardInfo(NAMECARD_CODE));
		
		return "client/client_namecardinfo";
	}
	
	
	@Autowired 
	private UpdateClientInfo uci;
	
	@RequestMapping("/updateClientInfo") 
	public String updateClientInfo(Model model,@RequestParam HashMap<String,String> CLIENT_INFO) {
		
		model.addAttribute("list", uci.UpdateClientInfo(CLIENT_INFO));
		
		return "client/client_info"; 
	}
	
	@Autowired
	private DeleteClientInfo dci;
	
	@RequestMapping("/deleteClientInfo")
	public String deleteClientInfo(Model model,@RequestParam(value="CLIENT_CODE") Integer CLIENT_CODE) {
		
		model.addAttribute("list", dci.deleteClientInfo(CLIENT_CODE));
		
		return "client/client_info";
	}
	
}
