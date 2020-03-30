package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

public class ListModel {

	public void execute(HttpServletRequest request){
		
		List<String> list=new ArrayList<String>();
		list.add("홍길동");
		list.add("심청이");
		list.add("박문수");
		
		/*	
		 * 	controller	요청을 받아서, 처리결과값을 view로 전송
		 * 	model		요청 처리
		 * 	view		결과값 출력
		 * 
		 * 		request												request		   							request			    request	
		 * 사용자 =======>	 Controller 								=======> Model 							=======> Controller =======> JSP 
		 * 					=> ListModel model = new ListModel();				=> request.setAttribute();
		 * 					   model.execute(request);
		 */
		
		//controller(servlet)에 전송 후 view(jsp)전송
		request.setAttribute("list", list);
	}
}
