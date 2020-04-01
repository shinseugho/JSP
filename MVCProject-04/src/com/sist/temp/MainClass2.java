package com.sist.temp;

import jdk.nashorn.internal.codegen.CompilerConstants.Call;

import java.lang.reflect.Method;
import java.util.*;

class A
{		
		//어노테이션 = 찾기기능
		@RequestMapping("a.do")	
		public void aaa()
		{
			System.out.println("A:aaa() Call.class..");
		}
		@RequestMapping("b.do")	
		public void bbb()
		{
			System.out.println("A:bbb() Call.class..");
		}
		@RequestMapping("c.do")	
		public void ccc()
		{
			System.out.println("A:ccc() Call.class..");
		}
		@RequestMapping("d.do")	
		public void ddd()
		{
			System.out.println("A:ddd() Call.class..");
		}
		@RequestMapping("e.do")	
		public void eee()
		{
			System.out.println("A:eee() Call.class..");
		}
}

public class MainClass2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner scan=new Scanner(System.in);
		
		//a.do=>aaa b.do=>bbb ....
		System.out.print("URI주소입력(a~e.do): ");
		String uri=scan.next();
		/*
			A a=new A();
			if(uri.equals("a.do"))
			{
				a.aaa();
			}
			if(uri.equals("b.do"))
			{
				a.bbb();
			}
			if(uri.equals("c.do"))
			{
				a.ccc();
			}
			if(uri.equals("d.do"))
			{
				a.ddd();
			}
			if(uri.equals("e.do"))
			{
				a.eee();
			}
		*/
		try
		{
			//메모리할당
			Class clsName=Class.forName("com.sist.temp.A");
			Object obj=clsName.newInstance();
			//A a=new A();
			Method[] methods=clsName.getDeclaredMethods();
			for(Method m:methods)
			{
				RequestMapping rm=m.getAnnotation(RequestMapping.class);
				if(rm.value().equals(uri))
				{
					m.invoke(obj, null);
				}
				//System.out.println(m.getName());
			}
			
		}catch(Exception ex){}
	}

}
