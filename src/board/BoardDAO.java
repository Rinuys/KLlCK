package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;
import util.GetIP;

public class BoardDAO {
	public int write(BoardDTO boardDTO) {
		String SQL = "INSERT INTO board(boardIndex, userID, boardType, boardTitle, boardContent, boardCreateAt, boardIP, boardFile)"
				+ " VALUES(null, ?, ?, ?, ?, null, ? ,null)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, boardDTO.getUserID().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(2, boardDTO.getBoardType().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(3, boardDTO.getBoardTitle().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(4, boardDTO.getBoardContent().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(5, boardDTO.getBoardIP().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}
	public ArrayList<BoardDTO> getList(String searchType, String search, String boardType, int pageNumber){
		ArrayList<BoardDTO> boardList = null;
		PreparedStatement pstmt = null;
		String SQL = "";
		Connection conn = null;
		conn = DatabaseUtil.getConnection();
		ResultSet rs = null;
		try {
			if(searchType.equals("devideTime")) {
				SQL = "SELECT * FROM board WHERE boardType LIKE ? AND CONCAT(userID, boardTitle, boardContent) LIKE ? "
						+ "ORDER BY boardIndex DESC LIMIT " + pageNumber * 6 + ", " + pageNumber * 6  + 7;
			}
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, boardType );
			pstmt.setString(2, "%" + search + "%");
			rs = pstmt.executeQuery();
			boardList = new ArrayList<BoardDTO>();
			while(rs.next()) {
				BoardDTO boardDTO = new BoardDTO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8)
						);
				boardList.add(boardDTO);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return boardList;
	}
	//공지사항은 특별히 3개씩받을 수 있게함
	public ArrayList<BoardDTO> getNoticeList(String boardType, int pageNumber){
		ArrayList<BoardDTO> boardList = null;
		PreparedStatement pstmt = null;
		String SQL = "";
		Connection conn = null;
		conn = DatabaseUtil.getConnection();
		ResultSet rs = null;
		try {
			SQL = "SELECT * FROM board WHERE boardType LIKE ? ORDER BY boardIndex DESC LIMIT " + pageNumber * 3 + ", " + pageNumber * 3  + 4;
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, boardType );
			rs = pstmt.executeQuery();
			boardList = new ArrayList<BoardDTO>();
			while(rs.next()) {
				BoardDTO boardDTO = new BoardDTO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8)
						);
				boardList.add(boardDTO);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return boardList;
	}
	
	//닉네임으로 아이디얻기
	public String getUserID(String userNick) {
		String SQL = "SELECT userID FROM user WHERE userNick=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  Integer.parseInt(userNick));
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close();}catch(Exception e) {}
			try{if(pstmt != null) pstmt.close();}catch(Exception e) {}
			try{if(rs!= null) rs.close();}catch(Exception e) {}
		}
		return null;//데이터베이스오류
	}
	//아이디로 닉네임얻기
	public String getUserNick(String userID) {
		String SQL = "SELECT userNick FROM user WHERE userID=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{if(conn != null) conn.close();}catch(Exception e) {}
			try{if(pstmt != null) pstmt.close();}catch(Exception e) {}
			try{if(rs!= null) rs.close();}catch(Exception e) {}
		}
		return null;//데이터베이스오류
	}
}
