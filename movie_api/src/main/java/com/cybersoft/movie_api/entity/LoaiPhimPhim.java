package com.cybersoft.movie_api.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name = "loaiphim_phim")
public class LoaiPhimPhim {

	@Id
	@GeneratedValue
	private long id;

//	private long id_phim;//fk
	@ManyToOne
	@JoinColumn(name = "id_phim")
	private Phim phim;
	
//	private int id_loaiphim;//fk
	@ManyToOne
	@JoinColumn(name = "id_loaiphim")
	private LoaiPhim loaiPhim;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Phim getPhim() {
		return phim;
	}

	public void setPhim(Phim phim) {
		this.phim = phim;
	}

	public LoaiPhim getLoaiPhim() {
		return loaiPhim;
	}

	public void setLoaiPhim(LoaiPhim loaiPhim) {
		this.loaiPhim = loaiPhim;
	}
	
	
	
}
