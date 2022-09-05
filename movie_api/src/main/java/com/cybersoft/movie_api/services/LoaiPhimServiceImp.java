package com.cybersoft.movie_api.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cybersoft.movie_api.entity.LoaiPhim;


public interface LoaiPhimServiceImp {

	public List<LoaiPhim> getAllLoaiPhim();
}
