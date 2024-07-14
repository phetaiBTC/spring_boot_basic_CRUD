package com.example.SpringBootRestAPI.Model;


import jakarta.persistence.*;

@Entity()
public class District {
	@Id
    @Column(name = "dr_id")
    private int id;

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	@Column(name = "dr_name", nullable = false)
    private String name;

    @Column(name = "dr_name_en", nullable = false)
    private String nameEn;

    @ManyToOne
    @JoinColumn(name = "pr_id", referencedColumnName = "pr_id")
    private Province province;
}
