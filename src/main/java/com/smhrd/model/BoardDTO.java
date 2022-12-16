package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import oracle.sql.DATE;

@AllArgsConstructor
@Getter
@RequiredArgsConstructor
public class BoardDTO {
   @NonNull
   private int num;
   @NonNull private String reviewer_name;
   @NonNull private String review_content ;
   private String receipt_img;
   private String res_seq;
   @NonNull private Timestamp uploadday;
   @NonNull private String review_name;
   
   public BoardDTO(String review_name , String reviewer_name, String receipt_img, String review_content) {
	      this.review_name = review_name;
	      this.reviewer_name = reviewer_name;
	      this.receipt_img = receipt_img;
	      this.review_content = review_content;
	     
	   }
}
