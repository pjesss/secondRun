package egovframework.example.sales.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SalesController {
	
	@RequestMapping(value = "salesManagement.do")
	public String initSalesManagement() throws Exception {
		return "salesManagement/salesManagement.tiles";
	}
	
}
