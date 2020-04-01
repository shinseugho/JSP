package com.sist.news;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/*	JAXP : Java Api For XML Parse
 * 		    설정파일읽기(Mybatis, Spring ...)
 * 		  = DOM(Document Object Model) => 메모리에 저장(수정, 삭제, 추가) 
 * 		  = SAX(Simple Api for XML)    => 읽기전용	
 * 	JAXB : Java Api For XML bind	=> Annotation
 * 			=> 마셀 ===>	Java class에 있는 데이터 => XML변환
 * 			=> 언마셀==>	XML변환 => Java Object
 * 	<rss>
 * 		<channel>
 * 			<item>
 * 				<title></title>
 * 				<author></author>
 * 				<description></description>
 * 				<link></link>
 * 			</item>
 * 			<item>
 * 				<title></title>
 * 				<author></author>
 * 				<description></description>
 * 				<link></link>
 * 			</item>
 * 			<item>
 * 				<title></title>
 * 				<author></author>
 * 				<description></description>
 * 				<link></link>
 * 			</item>	
 * 			<item>
 * 				<title></title>
 * 				<author></author>
 * 				<description></description>
 * 				<link></link>
 * 			</item>				
 * 		</channel>
 * 	</rss>	
 * 
 * 	newssearch.naver.com/search.naver?where=rss&query=코로나
 */

@XmlRootElement

public class Rss {

		private Channel channel=new Channel();

		public Channel getChannel() {
			return channel;
		}

		@XmlElement
		public void setChannel(Channel channel) {
			this.channel = channel;
		}
		
}
