package com.cybersoft.movie_api.services;

import java.util.List;
import java.util.Map;

import com.cybersoft.movie_api.entity.Phim;

public interface PhimServiceImp {
	public List<Map<String, ?>> getAllPhim();
	public List<Map<String, ?>> getPhimByQuocGia(Integer id);
	
}
