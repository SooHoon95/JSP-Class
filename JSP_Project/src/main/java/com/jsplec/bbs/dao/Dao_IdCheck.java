package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto_signupSeller;

public class Dao_IdCheck {
	DataSource dataSource;
	
	public Dao_IdCheck() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/salemarket");
			// 이제 데이터 베이스 연결한 것
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}
	
	
	public String IdchekckSeller(String sId, String sIdchk) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
//		BDto_signupSeller dto = null;

		try {
			connection = dataSource.getConnection();
		
			String query = "select sId from seller where sId= '" + sId + "'";
			
			preparedStatement = connection.prepareStatement(query);
			ResultSet resultSet = preparedStatement.executeQuery();
			sIdchk="false";
			
			while (resultSet.next()){
//				if (resultSet.getString("sId").equals(sId)) {
					sIdchk = "true";	//아이디 중복
//				}
			}
			
//			dto = new BDto_signupSeller(sIdchk);
//			return dto;
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
		return sIdchk;
	}
	
	
	
	
	
	
	
	
	
	
}
