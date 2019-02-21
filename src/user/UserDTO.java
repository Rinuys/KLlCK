package user;

public class UserDTO {
	private String userID;
	private String userNick;
	private String userPassword;
	private String userEmail;
	private boolean userEmailChecked;
	private String userBirth;
	private String userGender;
	private String userAccount;
	private String userPK;
	
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public boolean getUserEmailChecked() {
		return userEmailChecked;
	}
	public void setUserEmailChecked(boolean userEmailChecked) {
		this.userEmailChecked = userEmailChecked;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserPK() {
		return userPK;
	}
	public void setUserPK(String userPK) {
		this.userPK = userPK;
	}
	public UserDTO() {
		
	}
	public UserDTO(String userID, String userNick, String userPassword, String userEmail, boolean userEmailChecked,
		String userBirth, String userGender, String userAccount, String userPK) {
		this.userID = userID;
		this.userNick = userNick;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userEmailChecked = userEmailChecked;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userAccount = userAccount;
		this.userPK = userPK;
	}
	
}

