package com.cybersoft.movie_api.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "loaiphim")
public class LoaiPhim {

	@Id
	@GeneratedValue
	private int id;
	
	@Column(name = "ten_loai")
	private String ten_loai;
	
	@Column(name = "hinh_anh")
	private String hinh_anh;
	
	@OneToMany(mappedBy = "loaiPhim")
	private Set<LoaiPhimPhim> loaiPhimPhims;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen_loai() {
		return ten_loai;
	}

	public void setTen_loai(String ten_loai) {
		this.ten_loai = ten_loai;
	}

	public String getHinh_anh() {
		return hinh_anh;
	}

	public void setHinh_anh(String hinh_anh) {
		this.hinh_anh = hinh_anh;
	}
	
	
}
