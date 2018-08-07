package egovframework.example.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {

	@RequestMapping(value = "company.do")
	public String initCompany() throws Exception {
		return "company/company.tiles";
	}
	
	@RequestMapping(value = "partner.do")
	public String initPartner() throws Exception {
		return "company/partner.tiles";
	}
	
	@RequestMapping(value = "roomEvent.do")
	public String initRoomEvent() throws Exception {
		return "company/roomEvent.tiles";
	}
	
	@RequestMapping(value = "dailyCheck.do")
	public String initDailyCheck() throws Exception {
		return "company/dailyCheck.tiles";
	}
}
