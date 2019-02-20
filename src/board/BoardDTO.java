package board;

import util.GetIP;

public class BoardDTO {
	private int boardIndex;
	private String userID;
	private String boardTitle;
	private String boardContent;
	private String boardCreateAt;
	private String boardIP;
	private String boardType;
	private String boardFile;
	
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
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
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardCreateAt() {
		return boardCreateAt;
	}
	public void setBoardCreateAt(String boardCreateAt) {
		this.boardCreateAt = boardCreateAt;
	}
	public String getBoardIP() {
		return boardIP;
	}
	public void setBoardIP(String boardIP) {
		this.boardIP = boardIP;
	}
	public String getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}
	public BoardDTO(int boardIndex, String boardType , String boardTitle,
			String boardContent,String boardCreateAt,  String boardIP, String boardFile, String userID) {
		this.boardType = boardType;
		this.boardIndex = boardIndex;
		this.userID = userID;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardCreateAt = boardCreateAt;
		this.boardIP = boardIP;
		this.boardFile = boardFile;
	}
	public BoardDTO() {
		
	}
	
}
