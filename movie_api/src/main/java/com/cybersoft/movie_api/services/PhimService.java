package com.cybersoft.movie_api.services;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybersoft.movie_api.entity.Phim;
import com.cybersoft.movie_api.repository.PhimRepository;
@Service
@Transactional
public class PhimService implements PhimServiceImp{

	@Autowired
	PhimRepository phimRepository;
	
	@Override
	public List<Map<String, ?>> getAllPhim() { 
//		return phimRepository.findAll();
		return phimRepository.getPhimWithCategory();
	}

	@Override
	public List<Map<String, ?>> getPhimByQuocGia(Integer id) { 
		return phimRepository.getPhimByQuocGia(id);
	}

}
