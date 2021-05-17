package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Dao_signUp {
	DataSource dataSource;
	
	public Dao_signUp() {
		try {
			/*javax.naming*/
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/salemarket"); //env까지 쓴거만 보면 context에 들어간 거/저 경로로 가서 찾아와라 라는 뜻
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void writeCustomer(String cId, String cPassword, String cName, String cBirth, String cTel, String cAddress1, String cAddress2, String cEmail, String cNickname, String cPostalCode)	{
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
		
			String A = "insert into customer (cId, cPassword, cName, cBirth, cTel, cAddress1, cAddress2, cEmail, cNickname, cSignInDate, cPostalCode";
			String B = ") values(?, ?, ?, ?, ?, ?, ?, ?, ?, now(), ?)";
			
			preparedStatement = connection.prepareStatement(A+B);
			
			preparedStatement.setString(1, cId);
			preparedStatement.setString(2, cPassword);
			preparedStatement.setString(3, cName);
			preparedStatement.setString(4, cBirth);
			preparedStatement.setString(5, cTel);
			preparedStatement.setString(6, cAddress1);
			preparedStatement.setString(7, cAddress2);
			preparedStatement.setString(8, cEmail);
			preparedStatement.setString(9, cNickname);
			preparedStatement.setString(10, cPostalCode);
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
	
	public void writeSeller(String sId , String sPassword, String sName, String sBirth, String sTel, String sAddress1, String sAddress2, String sEmail, String sShopName, String sNumber, String sPostalCode)	{
		//java.sql
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
		
			String A = "insert into seller (sId, sPassword, sName, sBirth, sTel, sAddress1, sAddress2, sEmail, sShopName, sNumber, sPostalCode, cSignInDate";
			String B = ") values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now())";
			
			preparedStatement = connection.prepareStatement(A+B);
			
			preparedStatement.setString(1, sId);
			preparedStatement.setString(2, sPassword);
			preparedStatement.setString(3, sName);
			preparedStatement.setString(4, sBirth);
			preparedStatement.setString(5, sTel);
			preparedStatement.setString(6, sAddress1);
			preparedStatement.setString(7, sAddress2);
			preparedStatement.setString(8, sEmail);
			preparedStatement.setString(9, sShopName);
			preparedStatement.setString(10, sNumber);
			preparedStatement.setString(11, sPostalCode);
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
	
	
	
	
	
	
	
	
	
	
	
}
