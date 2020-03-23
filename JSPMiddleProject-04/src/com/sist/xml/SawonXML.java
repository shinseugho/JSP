package com.sist.xml;

import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.io.*;

public class SawonXML {

	public static void main(String[] args) {
		SawonXML xml = new SawonXML();
		xml.xmlParse();
	}
	
	public void xmlParse()
	{
		try
		{
			//파서(: 데이터불러오는 기능)기 제작
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			DocumentBuilder db=dbf.newDocumentBuilder();
			
			//문서저장
			Document doc=db.parse(new File("C:\\webDev\\webStudy\\JSPMiddleProject-04\\WebContent\\WEB-INF\\sawon.xml"));
			
			//테이블(: sawon.xml의 테이블)읽기
			Element table=doc.getDocumentElement();
			System.out.println(table.getTagName());
			
			//""안의 태그는 xml안의 태그가 입력되어야한다.
			NodeList list=table.getElementsByTagName("list");
			System.out.println(list.getLength());
			
			for(int i=0;i<list.getLength();i++)
			{
				//""안의 태그는 xml안의 태그가 입력되어야한다.
				list=table.getElementsByTagName("name");
				String name=list.item(i).getFirstChild().getNodeValue();
				System.out.println("name="+name);
				
				list=table.getElementsByTagName("addr");
				String addr=list.item(i).getFirstChild().getNodeValue();
				System.out.println("addr="+addr);	
				
				list=table.getElementsByTagName("sex");
				String sex=list.item(i).getFirstChild().getNodeValue();
				System.out.println("sex="+sex);		
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
}
