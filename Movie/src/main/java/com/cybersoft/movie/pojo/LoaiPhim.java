package com.cybersoft.movie.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;

public class LoaiPhim {

	private int id;
	
	@JsonProperty("ten_loai")
	private String tenLoai;
	
	@JsonProperty("hinh_anh")
	private String hinhAnh;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	
	
}
