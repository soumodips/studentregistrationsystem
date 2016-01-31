package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import com.bean.CouncilorBean;
import com.util.DBUtil;

public class CouncilorDao {

	
	Connection conn;
	
	public int addCouncilor(CouncilorBean cb)
	
	{
		int flag=0;
	
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("insert into councilor(councilorname,counciloraddress,councilornumber,counciloremail,councilorpass)values(?,?,?,?,?)");
			
			ps.setString(1, cb.getCouncilorname());
			
			ps.setString(2, cb.getCounciloraddress());
			
			ps.setString(3, cb.getCouncilornumber());
			
			ps.setString(4, cb.getCounciloremail());
			
			ps.setString(5, cb.getCouncilorpass());
			
			int z=ps.executeUpdate();
			
			if(z>0)
			
				ps=conn.prepareStatement("select councilorid from councilor where counciloremail=?");
				
			ps.setString(1, cb.getCounciloremail());
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
			
				flag=(Integer)rs.getInt(1);
				
				cb.setCouncilorid(flag);
			}
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		
		return flag;
		
	}
	
public ArrayList<CouncilorBean> getAllCouncilor(){
		
		ArrayList<CouncilorBean> als=new ArrayList<CouncilorBean>();
		
		Connection conn=DBUtil.getConnect();
		
		try {
			PreparedStatement ps=conn.prepareStatement("select * from councilor");
			
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				
				CouncilorBean cb=new CouncilorBean(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
				als.add(cb);
				
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		
			e.printStackTrace();
		
		}
		
		
		return als;
		
	}
	
	public CouncilorBean getCouncilor(int councilorid)
	
	{
	
		conn=DBUtil.getConnect();
		
		CouncilorBean cb=null;
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from councilor where councilorid=?;");
			
			ps.setInt(1, councilorid);
			
			ResultSet rs=ps.executeQuery();
			
			rs.next();
			
			cb=new CouncilorBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return cb;
		
	}
	
	public boolean updateCouncilor(CouncilorBean cb) {
		
		boolean flag=false;
	
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("update councilor set councilorname=?, counciloraddress=?, councilornumber=?, counciloremail=?, councilorpass=? where councilorid=?;");
			
			ps.setString(1, cb.getCouncilorname());
			
			ps.setString(2, cb.getCounciloraddress());
			
			ps.setString(3, cb.getCouncilornumber());
			
			ps.setString(4, cb.getCounciloremail());
			
			ps.setString(5, cb.getCouncilorpass());
			
			ps.setInt(6, cb.getCouncilorid());
			
			int z=ps.executeUpdate();
			
			if(z>0)
			
				flag=true;
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return flag;
		
	}
	
	
	public CouncilorBean validateCouncilor(String uname,String pass)
	
	{
	
		CouncilorBean cb=null;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from councilor where counciloremail=? and councilorpass=?");
			
			ps.setString(1, uname);
			
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			
			{
				cb=new CouncilorBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				
			}
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return cb;
	}
	
	public void setCount(String counciloremail)
	
	{
		
		conn=DBUtil.getConnect();
		
		try {
	
			PreparedStatement ps=conn.prepareStatement("select studentcount from councilor where counciloremail=?;");
			
			ps.setString(1, counciloremail);
			
			ResultSet rs=ps.executeQuery();
			
			rs.next();
			
			int z=rs.getInt(1);
			
			z=z+1;
			
			ps=conn.prepareStatement("update councilor set studentcount=? where counciloremail=?");
			
			ps.setInt(1, z);
			
			ps.setString(2, counciloremail);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		
			e.printStackTrace();
		
		}
	}
		
	
	
	public int getCount(String councilorname)
	{
		
		int flag=0;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from councilor where counciloremail=?");
			
			ps.setString(1, councilorname);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			
				flag=rs.getInt(7);
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return flag;
	}
	
	
	public int getCount(int councilorid)
	
	{
	
		int flag=0;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from councilor where councilorid=?");
			
			ps.setInt(1, councilorid);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			
				flag=rs.getInt(7);
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return flag;
	
	}
	
	
	public boolean changecouncilorpassword(String councilorpass, String councilornewpass) {
	
		boolean flag=false;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("update councilor set councilorpass=? where councilorpass=?;");
			
			ps.setString(1, "councilornewpass");
			
			ps.setString(2, "councilorpass");
			
			int z=ps.executeUpdate();
			
			System.out.println(z);
			
			if(z>0)
			
				flag=true;
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		
		return flag;
		
	}
	
	
	public boolean checkEmail(String emailcheck)
	
	{
	
		boolean flag = false;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from councilor where counciloremail=?");
			
			ps.setString(1, emailcheck);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			
			{
			
				flag=true;
			
			}
	
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		return flag;
	
	}
		
}

