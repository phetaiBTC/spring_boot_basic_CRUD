package com.example.SpringBootRestAPI.Model;

import jakarta.persistence.*;

@Entity
public class Province {
	@Id
    @Column(name = "pr_id")
    private int id;

    @Column(name = "pr_name", nullable = false)
    private String name;

    @Column(name = "pr_name_en", nullable = false)
    private String nameEn;
}
