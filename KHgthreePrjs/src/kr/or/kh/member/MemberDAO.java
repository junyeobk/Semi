package kr.or.kh.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MemberDAO {
	private MemberDTO memberDTO;
	private ArrayList<MemberDTO> memberList;
	private Connection conn;
	private PreparedStatement pstmt;
	private String sql;
	private int cnt;
	private ResultSet rs;

	public MemberDAO() {
		memberDTO = new MemberDTO();
		memberList = new ArrayList<MemberDTO>();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public Connection getConnection() throws SQLException {
		conn = DriverManager.getConnection("jdbc:mysql://khgthree.cafe24.com:3306/khgthree", "khgthree", "wjdqhrydbrdnjs3");
		return conn;
	}
	public int memberRegister(MemberDTO memberDTO) throws SQLException {
		conn = getConnection();
		sql = "insert into SMEMBER(id,pw,name,addr,tel,stype) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberDTO.getId());
		pstmt.setString(2, memberDTO.getPw());
		pstmt.setString(3, memberDTO.getName());
		pstmt.setString(4, memberDTO.getAddr());
		pstmt.setString(5, memberDTO.getTel());		
		pstmt.setInt(6, memberDTO.getStype());
		cnt=pstmt.executeUpdate();
		return cnt;		
	}
	public ArrayList<MemberDTO> memberList() throws SQLException {
		conn = getConnection();
		sql = "select mbno,id,pw,name,addr,tel,stype from SMEMBER";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		memberList = new ArrayList<MemberDTO>();
		while(rs.next()) {
			memberDTO = new MemberDTO();
			memberDTO.setMbno(Integer.parseInt(rs.getString("mbno")));
			memberDTO.setId(rs.getString("id"));
			memberDTO.setPw(rs.getString("pw"));
			memberDTO.setName(rs.getString("name"));			
			memberDTO.setAddr(rs.getString("addr"));
			memberDTO.setTel(rs.getString("tel"));	
			memberDTO.setStype(Integer.parseInt(rs.getString("stype")));
			memberList.add(memberDTO);			
		}
		return memberList;
	}
	public int memberDelete(String idDelete, String pwDelete)throws SQLException {
		conn = getConnection();
		sql = "delete from SMEMBER where id=? and pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, idDelete);
		pstmt.setString(2, pwDelete);
		cnt = pstmt.executeUpdate();
		return cnt;
	}
	
	public MemberDTO memberLogin(String id, String pw)throws SQLException {
	conn=getConnection();
	sql = "select id,pw from SMEMBER where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	while(rs.next()){
		memberDTO.setId(rs.getString("id"));
		memberDTO.setPw(rs.getString("pw"));
	}
	return memberDTO;
}
	public String memberIdcheck(String telSearch) throws SQLException {
		conn = getConnection();
		sql = "select id from SMEMBER where tel=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, telSearch);
		rs = pstmt.executeQuery();
		String id = null;
		while(rs.next()){
			id = rs.getString("id");
		}
		return id;
	}
	public String memberPwcheck(String idSearch) throws SQLException {
		conn = getConnection();
		sql = "select pw from SMEMBER where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, idSearch);
		rs=pstmt.executeQuery();
		String pw = null;
		while(rs.next()) {
			pw = rs.getString("pw");
		}
		return pw;
	}
	public MemberDTO memberUpdateConfirm(String idSearch) throws SQLException {
		conn = getConnection();
		sql = "select id,pw,name,addr,tel,stype from SMEMBER where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, idSearch);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			memberDTO.setId(rs.getString("id"));
			memberDTO.setPw(rs.getString("pw"));
			memberDTO.setName(rs.getString("name"));
			memberDTO.setAddr(rs.getString("addr"));
			memberDTO.setTel(rs.getString("tel"));			
			memberDTO.setTel(rs.getString("stype"));
		}
		return memberDTO;
	}
	public int memberUpdateFinal(MemberDTO memberDTO, String idSearch) throws SQLException {
		conn = getConnection();
		sql = "update SMEMBER set id=?,pw=?,name=?,addr=?,tel=?,stype=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberDTO.getId());
		pstmt.setString(2, memberDTO.getPw());	
		pstmt.setString(3, memberDTO.getName());
		pstmt.setString(4, memberDTO.getAddr());
		pstmt.setString(5, memberDTO.getTel());	
		pstmt.setInt(6, memberDTO.getStype());
		pstmt.setString(7, idSearch);
		cnt = pstmt.executeUpdate();
		return cnt;		
	}
	public ResultSet memberIdCheckall(String id) throws SQLException {
		conn = getConnection();
		String sql = "select id from SMEMBER where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		return rs;
	}
}
