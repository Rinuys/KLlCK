package likey;

public class LikeDTO {
	private String userID;
	private int boardIndex;
	private String userIP;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getBoardIndex() {
		return boardIndex;
	}
	public void setBoardIndex(int boardIndex) {
		this.boardIndex = boardIndex;
	}
	public String getUserIP() {
		return userIP;
	}
	public void setUserIP(String userIP) {
		this.userIP = userIP;
	}
	public LikeDTO(String userID, int boardIndex, String userIP) {
		this.userID = userID;
		this.boardIndex = boardIndex;
		this.userIP = userIP;
	}
	public LikeDTO() {
		
	}
}
