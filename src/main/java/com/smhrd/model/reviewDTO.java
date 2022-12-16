package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class reviewDTO {


	private BigDecimal num;
	private BigDecimal resNum;
	private String img;
	private String content;
	private String username;
	private Timestamp date;

	
    
	
	public reviewDTO(String username, String img, String content, BigDecimal resNum) {
		this.img = img;
		this.content = content;
		this.username = username;
		this.resNum = resNum;
	}




    
}
