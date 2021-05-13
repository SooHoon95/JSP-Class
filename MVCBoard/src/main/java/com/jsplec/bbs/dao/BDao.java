package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import com.jsplec.bbs.dto.BDto;

public class BDao {
	// dbAction 느낌!
	// Field 데이터 소스 타입
	DataSource dataSource;
	
	// Constructor
	public BDao() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc");
			// 이제 데이터 베이스 연결한 것
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	// Method
	// 전체 내용 읽어오는 메소드 -> arraylist로 넘겨줌 -> BDto 만들러감!
	// 한 줄에 여러가지 타입을 넣으려면 bean으로 만들어서 써야하기에 bdto 제너릭에 넣어줌
	public ArrayList<BDto> list(){
		
		// 전역번수 쓰려고 여기에 만듬
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select bId, bName, bTitle, bContent, bDate from mvc_board";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int bId = resultSet.getInt("bId");
				// bId는 query에 있는 이름
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate);
				dtos.add(dto);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			// 마지막에 정리를 해줘야함 (웹이기 때문에!)
			try {
				// 제일 안쪽부터 정리 (rs -> ps -> connect)
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return dtos;
	}
 	
	public void write(String bName, String bTitle, String bContent) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
//		Resultset은 select할 때만 사용!
//		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into mvc_board (bName, bTitle, bContent, bDate) values (?,?,?,now())";
			preparedStatement = connection.prepareStatement(query);
			
			// 위에에서 파라미터로 준 bName
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			
			preparedStatement.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			// 마지막에 정리를 해줘야함 (웹이기 때문에!)
			try {
				// 제일 안쪽부터 정리 (ps -> connect)
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	// db에서 검색해 오는 것! 한 줄만 가져오는 것! -> 한 줄만 가져오기에 arraylist 쓰지말고 bean을 쓰자!
	public BDto contentView(String strID) {
		BDto dto = null;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			// select 문장에 ? 적어주기!
			String query = "select * from mvc_board where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			
			// 지금은 문자로 써도 상관없으나 정상적으로 setInt로 적어야 함
			preparedStatement.setInt(1, Integer.parseInt(strID));
			
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) { // 한 번만 돌기 때문에 while 안쓰고 if 써도 괜찮음
				int bId = resultSet.getInt("bId");
				// bId는 query에 있는 이름
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			// 마지막에 정리를 해줘야함 (웹이기 때문에!)
			try {
				// 제일 안쪽부터 정리 (rs -> ps -> connect)
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return dto;
	}
	
	public void delete(String strID) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			// select 문장에 ? 적어주기!
			String query = "delete from mvc_board where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			
			// 지금은 문자로 써도 상관없으나 정상적으로 setInt로 적어야 함
			preparedStatement.setInt(1, Integer.parseInt(strID));
			
			preparedStatement.executeUpdate();
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			// 마지막에 정리를 해줘야함 (웹이기 때문에!)
			try {
				// 제일 안쪽부터 정리 (rs -> ps -> connect)
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	public void update(String bName, String bTitle, String bContent, String strID) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			// select 문장에 ? 적어주기!
			String query = "update mvc_board set bName = ?, bTitle = ?, bContent = ?, bDate = now() where bId = ?";
			preparedStatement = connection.prepareStatement(query);
			
			// 지금은 문자로 써도 상관없으나 정상적으로 setInt로 적어야 함
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.setInt(4, Integer.parseInt(strID));
			
			preparedStatement.executeUpdate();
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			// 마지막에 정리를 해줘야함 (웹이기 때문에!)
			try {
				// 제일 안쪽부터 정리 (rs -> ps -> connect)
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
				
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
}
