package Ch02;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.swing.*;

import java.time. *;

public class testDto {
	private String username;
	private int age;
	private LocalDateTime date;
	
	public testDto(){}

	public testDto(String username, int age, LocalDateTime date) {
		super();
		this.username = username;
		this.age = age;
		this.date = date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public LocalDateTime getDate() {
		return date;
	}
	//setDate주석처리

	
	
	public void setStringtoDate(String date) {
		DateTimeFormatter fmtin = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
		this.date = LocalDateTime.parse(date,fmtin);
	}

	@Override
	public String toString() {
		return "testDto [username=" + username + ", age=" + age + ", date=" + date + "]";
	}
	
	
	
}
