package com.example.SpringBootRestAPI.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.SpringBootRestAPI.Model.District;
import com.example.SpringBootRestAPI.Model.User;
import com.example.SpringBootRestAPI.service.DistrictInterface;
import com.example.SpringBootRestAPI.service.RepositoryInterface;
@Controller
public class ShowPage {
	@Autowired
	private RepositoryInterface repo;
	@Autowired
	private DistrictInterface repoD;
	@GetMapping("/create")
	public String showCreatePage(Model model) {
		List<District> districts = repoD.findAll();// findAll(Sort.by(Sort.Direction.DESC, "id"))
		model.addAttribute("districts", districts);
		return "registerPage";
	}
	@GetMapping("/edit")
	public String showEditPage(Model model, @RequestParam int id) {
		User users = repo.findById(id).get();
		model.addAttribute("users", users);
		List<District> districts = repoD.findAll();// findAll(Sort.by(Sort.Direction.DESC, "id"))
		model.addAttribute("districts", districts);
		return "updateUser";
	}
}
