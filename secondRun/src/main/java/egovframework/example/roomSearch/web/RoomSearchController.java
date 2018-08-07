package egovframework.example.roomSearch.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomSearchController {
	
	//방찾기 
	@RequestMapping(value = "roomSearch.do")
	public String initRoomSearch() throws Exception {
		return "roomSearch/roomSearch.tiles";
	}
	//방정보
	@RequestMapping(value = "roomInfo.do")
	public String initRoomInfo() throws Exception {
		return "roomSearch/roomInfo.tiles";
	}
	
}
