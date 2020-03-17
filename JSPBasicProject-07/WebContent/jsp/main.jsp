<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  
	jsp 액션태그(7장, 8장)
	1. <jsp:include>: JSP안 특정부분에 다른 JSP를 첨부하는 경우에 사용한다.(: 모듈화)
						pageContext.incldu("jsp파일명")
	2. <jsp:forward>: request를 계속 유지할 경우사용한다.(: MVC구조)
	3. <jsp:useBean>: 메모리 할당
						<jsp:useBean id="vo" class="com.sist.dao.MemberVO">
						=> MemberVO vo=new MemberVO();	
						Bean의 종류
							가. 데이터 관리빈: 데이터를 모아서 관리한다.(getter/setter)
							나. 데이터 액션빈: 빈(VO)값을 설정하는 클래스이다.=> ~DAO,~Manager,~Service와 동일한 역활이다.
	4. <jsp:setProperty>: setXXX()에 값을 채운다.=> VO, DTO, Bean
						
						
	//자바빈
						public class SawonVO{
							private int sabun;
							private String name;
							private String dept;
							public int getSabun()
							{
								return sabun;
							}
							public void setSabun(int sabun)
							{
								this.sabun=sabun;
							}
							public String getName()
							{
								return name;
							}
							public void setName(String name)
							{
								this.name=name;
							}
							public String getDept()
							{
								return dept;
							}
							public void setDept(String dept)
							{
								this.dept=dept;
							}
						}
						
						=================================================================== 
						일반적 코딩
						SawonVO vo=new SawonVO();
							vo.setSabun("1"));
							vo.setName("홍길동");
							vo.setDept("개발부");
						
						JSP액션태그
						<jsp:useBean id="vo" class="SawonVO">
							vo.setSabun(1);
							<jsp:setProperty name="vo" property="sabun" value="1" />
							vo.setName("홍길동");
							<jsp:setProperty name="vo" property="name" value="홍길동" />
							vo.setDept("개발부");
							<jsp:setProperty name="vo" property="dept" value="개발부" />	
						</jsp:useBean>
						
						====================================================================
						String sabun=request.getParameter("sabun");
						String name=request.getParameter("name");
						String dept=request.getParameter("dept");
								
						SawonVO vo=new SawonVO();
							vo.setSabun(Integer.parseInt(sabun));
							vo.setName(name);
							vo.setDept(dept);
						
						<jsp:useBean id="vo" class="SawonVO">
							<jsp:setProperty name="vo" property="*" />
						</jsp:useBean>
						
						=====================================================================
						<jsp:getProperty name="vo" property="name" />	
						<%=vo.getName() %>
						<%= %>가 편리해 getProperty는 잘쓰지 않는다.
								
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>