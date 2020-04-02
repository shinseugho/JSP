package com.sist.movie.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.common.model.CommonData;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import java.util.*;
import java.io.*;

@Controller
public class ReserveModel {

	@RequestMapping("site/movie/reserve/reserve.do")
	public String reserve_list(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("msg", "영화예약");
		request.setAttribute("main_jsp", "movie/reserve/reserve.jsp");
		CommonData.commonData(request);
		return "../../main.jsp";
	}
}
