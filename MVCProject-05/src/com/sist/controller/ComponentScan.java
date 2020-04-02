package com.sist.controller;

import java.io.*;
import java.util.*;

public class ComponentScan {
	
	public List<String> getClassNameRead(String pack, String path)
	{
		List<String> list=new ArrayList<String>();
		
		try
		{
			//String path="C:\\Users\\user203\\git\\JSP\\MVCProject-05\\src";
			path=path+"\\"+pack.replace(".", "\\");
			File dir=new File(path);
			File[] files=dir.listFiles();
			for(File f:files)
			{
				String name=f.getName();
				if(name.endsWith("java"))
				{
					String s=pack+"."+name.substring(0,name.indexOf("."));
					//name="BoadrdModel.java"
					//s="com.sist.model"+"."+"BoadrdModel"="com.sist.model.BoardModel"
					list.add(s);
				}
			}
		}catch(Exception ex) {}
		
		return list;
	}
	
}
