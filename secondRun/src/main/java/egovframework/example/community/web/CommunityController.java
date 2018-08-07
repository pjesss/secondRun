package egovframework.example.community.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.community.service.CommunityService;

@Controller
public class CommunityController {
	
	@Resource(name = "communityService")
	private CommunityService communityService;
	
	/**
	 * @MethodName : viewFaq
	 * @date : 2018. 2. 10.
	 * @author : nation909
	 * @description : FAQ(자주묻는질문) 화면 이동
	 * @history : 
	 *	-----------------------------------------------------------------------
	 *	변경일				작성자						변경내용  
	 *	----------- ------------------- ---------------------------------------
	 *	2018. 2. 10.		nation909				최초 작성 
	 *	-----------------------------------------------------------------------
	 * 
	 * @return
	 * @throws Exception
	 */ 	
	@RequestMapping(value = "viewFaq.do")
	public String viewFaq() throws Exception {
		return "customerSupport/faq.tiles";
	}
	
	/**
	 * @MethodName : viewQna
	 * @date : 2018. 2. 10.
	 * @author : nation909
	 * @description : Q&A(질문게시판) 화면 이동
	 * @history : 
	 *	-----------------------------------------------------------------------
	 *	변경일				작성자						변경내용  
	 *	----------- ------------------- ---------------------------------------
	 *	2018. 2. 10.		nation909				최초 작성 
	 *	-----------------------------------------------------------------------
	 * 
	 * @return
	 * @throws Exception
	 */ 	
	@RequestMapping(value = "viewQna.do")
	public String viewQna() throws Exception {
		return "customerSupport/qna.tiles";
	}
	
	/**
	 * @MethodName : viewRealtyNews
	 * @date : 2018. 2. 10.
	 * @author : nation909
	 * @description : 부동산 뉴스 화면 이동
	 * @history : 
	 *	-----------------------------------------------------------------------
	 *	변경일				작성자						변경내용  
	 *	----------- ------------------- ---------------------------------------
	 *	2018. 2. 10.		nation909				최초 작성 
	 *	-----------------------------------------------------------------------
	 * 
	 * @return
	 * @throws Exception
	 */ 	
	@RequestMapping(value = "viewRealtyNews.do")
	public String viewRealtyNews() throws Exception {
		return "realtyNews/realtyNews.tiles";
	}
	
	/**
	 * @MethodName : viewNotice
	 * @date : 2018. 2. 10.
	 * @author : nation909
	 * @description : 공지사항 화면 이동
	 * @history : 
	 *	-----------------------------------------------------------------------
	 *	변경일				작성자						변경내용  
	 *	----------- ------------------- ---------------------------------------
	 *	2018. 2. 10.		nation909				최초 작성 
	 *	-----------------------------------------------------------------------
	 * 
	 * @return
	 * @throws Exception
	 */ 	
	@RequestMapping(value = "viewNotice.do")
	public String viewNotice() throws Exception {
		return "notice/notice.tiles";
	}
	
	@RequestMapping(value = "viewDetailPage.do")
	public String viewDetailPage() throws Exception {
		return "customerSupport/detailPage.tiles";
	}

}
