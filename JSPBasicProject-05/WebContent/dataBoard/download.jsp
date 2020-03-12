<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*, java.net.*"%>
<%
	String fn=request.getParameter("fn");
	response.setHeader("Content-Disposition", "attachment;filename="
					  +URLEncoder.encode(fn,"UTF-8"));
	File file=new File("c:\\upload\\"+fn);
	response.setContentLength((int)file.length());
	
	try
	{
		BufferedInputStream bis=new BufferedInputStream(new FileInputStream(file));
		BufferedOutputStream bos=new BufferedOutputStream(response.getOutputStream());
		
		int i=0;
		byte[] buffer=new byte[1024];
		
		while((i=bis.read(buffer, 0, 1024))!=-1)
		{
			bos.write(buffer, 0, i);
		}
		/* getOutputStream()을 삭제하는 코딩 */
		out.clear();
		/* getOutputStream()을 다시 생성하는 코딩 */
		out=pageContext.pushBody();
		bis.close();
		bos.close();
	}catch(Exception ex){}
%>