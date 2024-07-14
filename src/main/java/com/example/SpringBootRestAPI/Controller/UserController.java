package com.example.SpringBootRestAPI.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.SpringBootRestAPI.Model.District;
import com.example.SpringBootRestAPI.Model.User;
//import com.example.SpringBootRestAPI.Model.District;
import com.example.SpringBootRestAPI.service.RepositoryInterface;
import com.example.SpringBootRestAPI.service.DistrictInterface;

@Controller
public class UserController {
	@Autowired
	private RepositoryInterface repo;
	@Autowired
	private DistrictInterface repoD;

	@GetMapping("/get-user")
	public String GetAllUser(Model model) {
		try {
			List<User> users = repo.findAll();
			model.addAttribute("users", users);
		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		}
		return "AdminPage/getUser";
	}

	@GetMapping("/delete")
	public String DeleteUser(@RequestParam int id) {
		try {
			User finduser = repo.findById(id).get();
			repo.delete(finduser);
		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		}

		return "redirect:/get-user";
	}

    @PostMapping("/create")
    public String processData(
    		String email,
    		String password,
    		String fname,
    		String lname,
    		String phone,
    		String gender,
    		int District,
    		@ModelAttribute User user
    		) {
    	
    	District d = repoD.findById(District).get();
    	User usercreate = new User();
		usercreate.setFirstName(fname);
		usercreate.setLastName(lname);
		usercreate.setEmail(email);
		usercreate.setPassword(password);
		usercreate.setNumberPhone(phone);
		usercreate.setGender(gender);
		usercreate.setRole("User");
		usercreate.setDistrictId(d);
		usercreate.setBirthDay(null);
		repo.save(usercreate);
        return "redirect:/get-user";
    }

	@PostMapping("/edit")
    public String editUser(
    		@RequestParam int id,
    		String email,
    		String password,
    		String fname,
    		String lname,
    		String phone,
    		String gender,
    		@ModelAttribute User user,
    		Model model
    		) {
		User usercreate = repo.findById(id).get();
		model.addAttribute("usercreate", usercreate);
    	District d = repoD.findById(101).get();
		usercreate.setFirstName(fname);
		usercreate.setLastName(lname);
		usercreate.setEmail(email);
		usercreate.setPassword(password);
		usercreate.setNumberPhone(phone);
		usercreate.setGender(gender);
		usercreate.setRole("User");
		usercreate.setDistrictId(d);
		usercreate.setBirthDay(null);
		repo.save(usercreate);
        return "redirect:/get-user";
    }
}
