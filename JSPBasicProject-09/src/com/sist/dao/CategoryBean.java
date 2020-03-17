package com.sist.dao;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class CategoryBean {

	/*CATENO  NOT NULL NUMBER        
	TITLE   NOT NULL VARCHAR2(200) 
	SUBJECT NOT NULL VARCHAR2(200) 
	POSTER  NOT NULL VARCHAR2(200) 
	LINK    NOT NULL VARCHAR2(200) */
	
	private int cateno;
	private String title;
	private String subject;
	private String poster;
	private String link;
}
