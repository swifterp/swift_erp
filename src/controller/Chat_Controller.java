package controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import logic.chat.InsertChatlog;
import logic.chat.InsertRoom;
import logic.chat.SelectChatlog;
import logic.chat.SelectChatroom;
import logic.chat.SelectParticipentList;

@Controller
@RequestMapping("service/chat")
public class Chat_Controller {

	@Autowired
	private SelectChatroom scr;
	
	@RequestMapping("/room")
	public String chat_selectRoom(Model model, @RequestParam(value="empno", defaultValue="0") Integer empno) {
		
		model.addAttribute("list", scr.callChatroomDao(empno));
		
		return "chat/chat_roomlist";
	}
	
	@Autowired
	private InsertChatlog icl;
	
	@RequestMapping("/insertlog")
	public void chat_insertLog(@RequestParam Map<String, String> log) {
		
		icl.callInsertLogDao(log);
		
	}
	
	@Autowired
	private SelectChatlog scl;
	
	@RequestMapping("/selectlog")
	public String chat_selectLog(Model model, @RequestParam(value="chatroom_code", defaultValue="0") String chatroom_code) {
		
		model.addAttribute("log", scl.callChatlogDao(chatroom_code));
		
		return "chat/chat_log";
	}
	
	@Autowired
	private InsertRoom ir;
	
	@RequestMapping("/insertroom")
	public String chat_insertRoom(Model model, @RequestParam Map<String, String> participent_list) {
		
		model.addAttribute("list", ir.callInsertRoomDao(participent_list));
		
		return "chat/chat_roomlist";
		
	}
	
	@Autowired
	private SelectParticipentList spl;
	
	@RequestMapping("/selectparticipent")
	public String chat_inviteEmp(Model model, @RequestParam(value="chatroom_code", defaultValue="0") String chatroom_code) {
		
		model.addAttribute("participent", spl.callParticipentDao(chatroom_code));
		
		return "chat/chat_participentlist";
		
	}
	
//	@Autowired
//	private InviteEmp ie;
//	
//	@RequestMapping("/invite")
//	public String chat_inviteEmp(Model model, @RequestParam Map<String, String> invitedata) {
//		
//		model.addAttribute("list", ir.callInviteEmpDao(invitedata));
//		
//		return "chat/chat_roomlist";
//		
//	}

}