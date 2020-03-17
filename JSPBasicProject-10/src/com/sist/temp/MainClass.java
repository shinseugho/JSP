package com.sist.temp;

import java.lang.reflect.Method;
import java.util.*;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try
		{
			Scanner scan=new Scanner(System.in);
			System.out.println("입력: ");
			String str=scan.next();
			//리플랙션
			Class acls=Class.forName("com.sist.dao.A");
			/*A a=(A)acls.newInstance();
			a.display();*/
			Object obj=acls.newInstance();
			Method[] m=acls.getDeclaredMethods();
			for(Method mm:m)
			{
				RequestMapping rm=mm.getDeclaredAnnotation(RequestMapping.class);
				if(rm.value().equals(str))
				{
					mm.invoke(obj, null);
				}
			}
		}catch(Exception ex){}
	}

}
