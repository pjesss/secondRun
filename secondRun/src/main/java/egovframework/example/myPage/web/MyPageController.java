package egovframework.example.myPage.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	
	//나의정보수정
	@RequestMapping(value = "myInfoModify.do")
	public String initInfoModify() throws Exception {
		return "myPage/myInfoModify.tiles";
	}
	
	//회원탈퇴
	@RequestMapping(value = "userLeave.do")
	public String initUserLeave() throws Exception {
		return "myPage/userLeave.tiles";
	}
	
	@RequestMapping(value = "messageBox.do")
	public String initMessageBox() throws Exception {
		return "myPage/messageBox.tiles";
	}

	@RequestMapping(value = "eventList.do")
	public String initEventList() throws Exception {
		return "myPage/eventList.tiles";
	}

	@RequestMapping(value = "inquiryList.do")
	public String initInquiryList() throws Exception {
		return "myPage/inquiryList.tiles";
	}
	
	@RequestMapping(value = "inquiryRead.do")
	public String initInquiryRead() throws Exception {
		return "myPage/inquiryRead.tiles";
	}
	
}
