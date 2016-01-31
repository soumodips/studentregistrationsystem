package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.RegistrarBean;
import com.util.DBUtil;

public class RegistrarDao {

	Connection conn;

	public boolean updateRegistrar(RegistrarBean rb) {
		
		boolean flag=false;
	
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("update registrar set registrarname=?, registrarusername=?,registrarpassword=?,registrarnumber=? where registrarusername=?;");
			
			ps.setString(1, rb.getRegistrarname());
			
			ps.setString(2, rb.getRegistrarusername());
			
			ps.setString(3, rb.getRegistrarpassword());
			
			
			ps.setString(4, rb.getRegistrarnumber());
			
			ps.setString(5, rb.getRegistrarusername());
			
			int z=ps.executeUpdate();
			
			if(z>0)
			
				flag=true;
			
		
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
		
			e.printStackTrace();
		
		}
		
		
		return flag;
		
	}
	
	
	public RegistrarBean validateRegistrar(String registrarusername ,String registrarpassword)
	
	{
	
		RegistrarBean rb=null;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from registrar where registrarusername=? and registrarpassword=?");
			
			ps.setString(1, registrarusername);
			
			ps.setString(2, registrarpassword);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			
			{
			
				rb=new RegistrarBean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));			
			
			}
		
		
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return rb;
	
	}
	
}