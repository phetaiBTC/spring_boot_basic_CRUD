package com.example.SpringBootRestAPI.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringBootRestAPI.Model.District;

public interface DistrictInterface extends JpaRepository<District,Integer>{
	
}
