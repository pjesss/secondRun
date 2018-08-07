package egovframework.example.roomRegistration.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomRegistrationController {
	
	@RequestMapping(value = "roomRegistration.do")
	public String initRoomRegistration() throws Exception {
		return "roomRegistration/roomRegistration.tiles";
	}
	
}
