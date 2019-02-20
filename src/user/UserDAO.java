package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

public class UserDAO {
	//로그인함수
	public int login(String userID, String userPassword) {

		String SQL = "SELECT userPassword FROM user WHERE userID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				if(rs.getString(1).contentEquals(userPassword)) {
					return 1; // 로그인성공시 1반환
				}else {
					return 0; // 비밀번호 불일치시 0반환
				}
			}
			return -1;//아이디없음 -1반환
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(conn != null) conn.close();}catch(Exception e) {}
			try {if(pstmt != null) pstmt.close();}catch(Exception e) {}
			try {if(rs != null) rs.close();}catch(Exception e) {}
		}
		return -2; //데이터베이스오류
	}
	//회원가입 함수
	public int join(UserDTO user) {
		String SQL = "INSERT INTO user(userNick, userID, userPassword, userBirth, userGender, userEmail) VALUES(?, ?, ?, ?, ?, ?);";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserNick().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(2, user.getUserID().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(3, user.getUserPassword().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(4, user.getUserBirth().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(5, user.getUserGender().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			pstmt.setString(6, user.getUserEmail().replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\r\n", "<br>"));
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.getStackTrace();
		}finally {
			try {if(conn != null) conn.close();}catch(Exception e) {}
			try {if(pstmt != null) pstmt.close();}catch(Exception e) {}
			try {if(rs != null) rs.close();}catch(Exception e) {}
		}
		return -1; //데이터베이스 삽입오류
	}
}
