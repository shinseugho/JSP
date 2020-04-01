package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import com.sist.dao.*;
import java.util.*;

public class MiddleModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String cno=request.getParameter("cno");
		List<FoodVO> list=FoodDAO.middleListData(Integer.parseInt(cno));
		request.setAttribute("list", list);
		return "food/middle.jsp";
	}

}
