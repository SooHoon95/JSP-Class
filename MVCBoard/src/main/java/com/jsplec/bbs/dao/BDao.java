package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto;

public class BDao {

	DataSource dataSource;
	
	public BDao() {
		try {
			/*javax.naming*/
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc"); //env까지 쓴거만 보면 context에 들어간 거/저 경로로 가서 찾아와라 라는 뜻
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<BDto> list(){
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
		
			String query = "select bid, bname, bTitle, bContent, bDate from mvc_board";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				
				int bid = resultSet.getInt("bid");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
			
				BDto dto = new BDto(bid, bName, bTitle, bContent, bDate);
				dtos.add(dto);
			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (resultSet != null) resultSet.close();
				if (preparedStatement != null) preparedStatement.close();
				if (connection!= null) connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
		
	}
	
	
	public void write(String bName, String bTitle, String bContent) {
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
		
			String query = "insert into mvc_board (bName, bTitle, bContent, bDate) values(?, ?, ?, now())";
			
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (preparedStatement != null) preparedStatement.close();
				if (connection!= null) connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public BDto contentView(String strID) {
		
		BDto dto = null;
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
		
			String query = "select * from mvc_board where bid = ?";
			
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(strID));
			resultSet = preparedStatement.executeQuery();
			
			if (resultSet.next()) {
				
				int bid = resultSet.getInt("bid");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
			
				dto = new BDto(bid, bName, bTitle, bContent, bDate);
			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (resultSet != null) resultSet.close();
				if (preparedStatement != null) preparedStatement.close();
				if (connection!= null) connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
	
	
	public void delete(int bid) {
		
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
		
			String query = "delete from mvc_board where bid = ? ";
			
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setInt(1, bid);
			preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (resultSet != null) resultSet.close();
				if (preparedStatement != null) preparedStatement.close();
				if (connection!= null) connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}		
	
	public void modify(String bName, String bTitle, String bContent, int bid) {
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
		
			String query = "update mvc_board set bName=?, bTitle=?, bContent=?, bDate = now() where bid=?";
			
			preparedStatement = connection.prepareStatement(query);
			
				
				preparedStatement.setString(1, bName);
				preparedStatement.setString(2, bTitle);
				preparedStatement.setString(3, bContent);
				preparedStatement.setInt(4, bid);
				preparedStatement.executeUpdate();
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (resultSet != null) resultSet.close();
				if (preparedStatement != null) preparedStatement.close();
				if (connection!= null) connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	
	
	
	
	
	

}//=======
