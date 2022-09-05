package com.cybersoft.movie_api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cybersoft.movie_api.entity.LoaiPhim;
@Repository
public interface LoaiPhimRepository extends JpaRepository<LoaiPhim, Integer> {

}
