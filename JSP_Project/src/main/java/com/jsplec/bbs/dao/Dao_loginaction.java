//package com.jsplec.bbs.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;
//
//public class Dao_loginaction {
//DataSource dataSource;
//	
//	public Dao_loginaction() {
//		// TODO Auto-generated constructor stub
//		try {
//			Context context = new InitialContext();
//			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/market");
//			// 이제 데이터 베이스 연결한 것
//		}catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//	
//	}
//	
//	public void loginAction() {
//		
//		Connection connection = null;
//		PreparedStatement preparedStatement = null;
//		
//		
//		try {
//			connection = dataSource.getConnection();
//		
//			String query = "select sId from seller where sId= '" + sId + "'";
//			
//			preparedStatement = connection.prepareStatement(query);
//			ResultSet resultSet = preparedStatement.executeQuery();
//			
//			while (resultSet.next()){
//					sIdchk = "true";	//아이디 중복
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if (preparedStatement != null) preparedStatement.close();
//				if (connection!= null) connection.close();
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//}//==============
