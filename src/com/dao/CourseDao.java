package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.CourseBean;
import com.util.DBUtil;

public class CourseDao {
	
	Connection conn;
	
	public int addCourse(CourseBean cb) {
	
		int flag=0;
		
		conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("insert into course(coursename,courseduration,coursestart,courseend,courseintake,coursefee,seatavailable)values(?,?,?,?,?,?,?)");
			
			ps.setString(1, cb.getCoursename());
			
			ps.setString(2, cb.getCourseduration());
			
			ps.setString(3, cb.getCoursestart());
			
			ps.setString(4, cb.getCourseend());
			
			ps.setString(5, cb.getCourseintake());
			
			ps.setString(6, cb.getCoursefee());
			
			ps.setInt(7, cb.getSeatavailable());
			
			int z=ps.executeUpdate();
			
			if(z>0)
			
				ps=conn.prepareStatement("select courseid from course where coursename=?");
				
			
			ps.setString(1, cb.getCoursename());
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			
			{
			
				flag=(Integer)rs.getInt(1);
				
				cb.setCourseid(flag);
				
			}
			
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			
		}
		
		return flag;
	
	}


	public ArrayList<CourseBean> getAllCourse(){
		
		ArrayList<CourseBean> als=new ArrayList<CourseBean>();
		
		Connection conn=DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from course");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				
				CourseBean cb=new CourseBean(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7), rs.getInt(8));
			
				als.add(cb);
				
			}
			
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		
		}
		
	
		return als;
		
	}
	

	public CourseBean getCourse(int courseid)

	{

		conn=DBUtil.getConnect();
	
		CourseBean cb=null;
	
		try {
		
			PreparedStatement ps=conn.prepareStatement("select * from course where courseid=?;");
		
			ps.setInt(1,courseid);
		
			ResultSet rs=ps.executeQuery();
		
			rs.next();
		
			cb=new CourseBean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),rs.getInt(8));
		
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
		
			e.printStackTrace();
	
		}
	
		return cb;
		
	}

	


	public boolean updateCourse(CourseBean cb) {
	
		boolean flag=false;
	
		conn=DBUtil.getConnect();
	
		try {
	
			PreparedStatement ps=conn.prepareStatement("update course set coursename=?, courseduration=?, coursestart=?, courseend=?, courseintake=?, coursefee=?, seatavailable=? where courseid=?;");
		
			ps.setString(1, cb.getCoursename());
		
			ps.setString(2, cb.getCourseduration());
		
			ps.setString(3, cb.getCoursestart());
		
			ps.setString(4, cb.getCourseend());
		
			ps.setString(5, cb.getCourseintake());
		
			ps.setString(6, cb.getCoursefee());
		
			ps.setInt(7, cb.getSeatavailable());
		
			ps.setInt(8, cb.getCourseid());
		
			int z=ps.executeUpdate();
		
			if(z>0)
		
				flag=true;
	
		} catch (SQLException e) {
	
			// TODO Auto-generated catch block
		
			e.printStackTrace();
		
		}
	
		return flag;
	
}

	public void updateSeatAvailable(String oldcoursename,String newcoursename)

	{
	
		conn=DBUtil.getConnect();
	
		try {
		
			PreparedStatement ps=conn.prepareStatement("update course set seatavailable=seatavailable+1 where coursename=?;");
		
			ps.setString(1, oldcoursename);
		
			ps.executeUpdate();
		
			ps=conn.prepareStatement("update course set seatavailable=seatavailable-1 where coursename=?;");
		
			ps.setString(1, newcoursename);
		
			ps.executeUpdate();
		
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
		
			e.printStackTrace();
	
		}
	

	}

}
