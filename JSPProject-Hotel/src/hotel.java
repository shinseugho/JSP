import java.util.*;
import java.io.*;

public class hotel {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner scan=new Scanner(System.in);
		System.out.println("숙박업소등급을 결정해주세요. 1:호텔, 2:콘도, 3:리조트 ");
		int type=scan.nextInt();
		//고칠점
		
		if(type==1)
		{	
			System.out.println("호텔객실을 생성합니다.");
			//층당객실수 
			int tnum=(int)(Math.random()*10);
			
			int min=10;
			int max=tnum+min;
			
			System.out.println("생성된 객실수: "+max);
			for(int i=1;i<=max;i++)
			{
				System.out.println("생성중인 객실: "+i);
			}
			
			//호텔 층수
			int snum=(int)(Math.random()*10);
			
			min=5;
			max=snum+min;
			System.out.println("생성된 층수: "+max);
			for(int i=1;i<=max;i++)
			{	
				System.out.println("생성중인 층: "+i);
			}
		}
		else if(type==2)
		{
			System.out.println("콘도객실을 생성합니다.");
			//층당객실수 
			int tnum=(int)(Math.random()*10);
			
			int min=10;
			int max=tnum+min;
			
			System.out.println("생성된 객실수: "+max);
			for(int i=1;i<=max;i++)
			{
				System.out.println("생성중인 객실: "+i);
			}
			
			//층수
			int snum=(int)(Math.random()*10);
			
			min=5;
			max=snum+min;
			System.out.println("생성된 층수: "+max);
			for(int i=1;i<=max;i++)
			{	
				System.out.println("생성중인 층: "+i);
			}
		}
		else
		{
			System.out.println("리조트객실을 생성합니다.");
			//층당객실수 
			int tnum=(int)(Math.random()*10);
			
			int min=10;
			int max=tnum+min;
			
			System.out.println("생성된 객실수: "+max);
			for(int i=1;i<=max;i++)
			{
				System.out.println("생성중인 객실: "+i);
			}
			
			//층수
			int snum=(int)(Math.random()*10);
			
			min=5;
			max=snum+min;
			System.out.println("생성된 층수: "+max);
			for(int i=1;i<=max;i++)
			{	
				System.out.println("생성중인 층: "+i);
			}
		}

	}

}
