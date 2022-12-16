package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
@RequiredArgsConstructor
public class ResultSetDTO {
	public ResultSetDTO() {
	}
	
	@NonNull
	private String res_seq;
	@NonNull
	private String res_name;
	@NonNull
	private String res_addr;
	private String res_runtime;
	private String res_convenient;
	private String res_tel;
	@NonNull
	private String res_categoy;
	@NonNull
	private String lati;
	@NonNull
	private String latitude;
	private String longitude;
	
	
}
