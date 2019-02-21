package likey;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DatabaseUtil;

public class LikeDAO {
	public int like(String userID, String boardIndex, String likeuserIP) {
		String SQL = "INSERT INTO likey VALUES (?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(2,  userID);
			pstmt.setString(1,  boardIndex);
			pstmt.setString(3,  likeuserIP);
			return pstmt.executeUpdate();//성공시1반환
		}catch(SQLException e) {
			e.getStackTrace();
		}finally {
			try{if(conn != null) conn.close();}catch(Exception e) {}
			try{if(pstmt != null) pstmt.close();}catch(Exception e) {}
			try{if(rs!= null) rs.close();}catch(Exception e) {}
		}
		return -1;//데이터베이스오류
	}
	
	public int likeExist(String userID, String boardIndex) {
		String SQL = "SELECT * FROM likey WHERE userID = ? AND boardIndex = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int i = 0;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			pstmt.setString(2,  boardIndex);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				i = i + 1;
			}
		}catch(SQLException e) {
			e.getStackTrace();
		}finally {
			try{if(conn != null) conn.close();}catch(Exception e) {}
			try{if(pstmt != null) pstmt.close();}catch(Exception e) {}
			try{if(rs!= null) rs.close();}catch(Exception e) {}
		}
		return i;//데이터베이스오류
	}
	
	public int likeCount(String boardIndex) {
		String SQL = "SELECT COUNT(*) FROM likey WHERE boardIndex LIKE ?"; 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int i = 0;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, boardIndex);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				i = rs.getInt(1);
			}
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				if(pstmt != null) {
					pstmt.close();
				}
			}catch(Exception e) {}
			try {
				if(conn != null) {
					conn.close();
				}
			}catch(Exception e) {}
			try {
				if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {}
		}
		return i;
	}
	//좋아요 취소함수
	public int likeCancel(String userID, String boardIndex) {
		String SQL = "DELETE FROM likey WHERE boardIndex = ? AND userID = ?"; 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, boardIndex);
			pstmt.setString(2, userID);
			pstmt.executeUpdate();
			return 1;
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {
				if(pstmt != null) {
					pstmt.close();
				}
			}catch(Exception e) {}
			try {
				if(conn != null) {
					conn.close();
				}
			}catch(Exception e) {}
			try {
				if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {}
		}
		return -1;
	}
}
