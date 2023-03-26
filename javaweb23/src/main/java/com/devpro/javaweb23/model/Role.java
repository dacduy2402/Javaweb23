package com.devpro.javaweb23.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name = "tbl_roles")
public class Role extends BaseEntity implements GrantedAuthority{
	@Column(name = "name", length = 45, nullable = false)
	private String name;
	
	@Column(name = "description", length = 45, nullable = false)
	private String description;
	
	@ManyToMany(cascade = CascadeType.ALL,
			fetch = FetchType.EAGER,
			mappedBy ="roles")
	private Set<User> users = new HashSet<User>();
	
//	Quy tắc: trong quan hệ Many-To-Many thì cần 2 methods sau:
	public void addUsers(User user) {
		user.getRoles().add(this);//thêm user vào ds các roles dc user đó dùng
		users.add(user);//thêm user vào ds user
	}
	public void deleteUsers(User user){
		user.getRoles().remove(this);//Xoá user trong ds các Roles được User đấy sử dụng
		users.remove(user);//xoá user trong danh sách users
	}

//	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//	@JoinTable(name = "tbl_users_roles",
//				joinColumns = @JoinColumn(name = "role_id"),
//				inverseJoinColumns = @JoinColumn(name = "user_id"))
//	private Set<Role> roles = new HashSet<Role>();
	
	public String getName() {
		return name;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.name;
	}
	

	
}
