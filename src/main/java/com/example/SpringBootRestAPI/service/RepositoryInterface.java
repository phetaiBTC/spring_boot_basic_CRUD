package com.example.SpringBootRestAPI.service;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SpringBootRestAPI.Model.User;

public interface RepositoryInterface extends JpaRepository<User,Integer>{
}

