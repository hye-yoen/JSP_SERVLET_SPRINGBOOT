package Ch02;

public class UserDto {
	private String userid;
	private String password;
	private String rePassword;
	private String username;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String phone1;
	private String phone2;
	private String phone3;
	private String tell1;
	private String tell2;
	private String tell3;
	private String email;
	private String year;
	private String month;
	private String day;
	
	private String Addr1;
	private String Addr2;
	
	
	public UserDto(){}

	

	public UserDto(String userid, String password, String rePassword, String username, String zipcode, String add1,
			String add2, String phone1, String phone2, String phone3, String tell1, String tell2, String tell3,
			String email, String year, String month, String day,String Addr1,String Addr2) {
		super();
		this.userid = userid;
		this.password = password;
		this.rePassword = rePassword;
		this.username = username;
		this.zipcode = zipcode;
		this.addr1 = add1;
		this.addr2 = add2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.tell1 = tell1;
		this.tell2 = tell2;
		this.tell3 = tell3;
		this.email = email;
		this.year = year;
		this.month = month;
		this.day = day;
		//select안의 option값에 대한 필드를 하나하나 넣음
	}



	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAdd2(String addr2) {
		this.addr2 = addr2;
	}



	@Override
	public String toString() {
		return "UserDto [userid=" + userid + ", password=" + password + ", rePassword=" + rePassword + ", username="
				+ username + ", zipcode=" + zipcode + ", add1=" + addr1 + ", add2=" + addr2 + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", tell1=" + tell1 + ", tell2=" + tell2 + ", tell3="
				+ tell3 + ", email=" + email + ", year=" + year + ", month=" + month + ", day=" + day + ", Addr1="
				+ Addr1 + ", Addr2=" + Addr2 + "]";
	}
	



	

	

	
	
}
