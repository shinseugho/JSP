import java.util.*;
import java.io.*;

public class hotel {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//옵션: 배드타입만 존재
		/*Scanner scan=new Scanner(System.in);
		System.out.println("숙박업소등급을 결정해주세요. 1:호텔, 2:콘도, 3:리조트 ");
		int type=scan.nextInt();*/
		int[] type=new int[30];
		
		for(int i=0;i<type.length;i++)
		{
			type[i]=(int)((Math.random()*3)+1);
		}			
		
		//
		for(int i=0;i<=type.length;i++)			
		{
			try
			{
			if(type[i]==1)
			{	
				System.out.println((i+1)+" 번째 호텔객실을 생성합니다.");
				//층당객실수 
				int tnum=(int)(Math.random()*10);
				
				int min=10;
				int max=tnum+min;
				
				System.out.println("생성된 객실수: "+max);
				for(int j=1;j<=max;j++)
				{
					System.out.println("생성중인 객실: "+j);
				}
				
				//호텔 층수
				int snum=(int)(Math.random()*10);
				
				min=5;
				max=snum+min;
				System.out.println("생성된 층수: "+max);
				for(int j=1;j<=max;j++)
				{	
					System.out.println("생성중인 층: "+j);
				}
			}
			else if(type[i]==2)
			{
				System.out.println((i+1)+" 번째 콘도객실을 생성합니다.");
				//층당객실수 
				int tnum=(int)(Math.random()*10);
				
				int min=10;
				int max=tnum+min;
				
				System.out.println("생성된 객실수: "+max);
				for(int j=1;j<=max;j++)
				{
					System.out.println("생성중인 객실: "+j);
				}
				
				//층수
				int snum=(int)(Math.random()*10);
				
				min=5;
				max=snum+min;
				System.out.println("생성된 층수: "+max);
				for(int j=1;j<=max;j++)
				{	
					System.out.println("생성중인 층: "+j);
				}
			}
			else
			{
				System.out.println((i+1)+" 번째 리조트객실을 생성합니다.");
				//층당객실수 
				int tnum=(int)(Math.random()*10);
				
				int min=10;
				int max=tnum+min;
				
				System.out.println("생성된 객실수: "+max);
				for(int j=1;j<=max;j++)
				{
					System.out.println("생성중인 객실: "+j);
				}
				
				//층수
				int snum=(int)(Math.random()*10);
				
				min=5;
				max=snum+min;
				System.out.println("생성된 층수: "+max);
				for(int j=1;j<=max;j++)
				{	
					System.out.println("생성중인 층: "+j);
				}
			}
			}catch(Exception ex) {}
			
		}
		System.out.println("객실생성을 완료하였습니다.");
	}
}
