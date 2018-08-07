package egovframework.example.board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping(value = "boardList.do")
	public String initBoardList() throws Exception {
		return "board/boardList.tiles";
	}
	
	@RequestMapping(value = "boardWrite.do")
	public String initBoardWrite() throws Exception {
		return "board/boardWrite.tiles";
	}
	
	@RequestMapping(value = "boardRead.do")
	public String initBoardRead() throws Exception {
		return "board/boardRead.tiles";
	}
	
}
