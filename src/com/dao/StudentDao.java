package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.StudentBean;
import com.util.DBUtil;

public class StudentDao {
	
	Connection conn;

	public int addStudent(StudentBean sb) {
	
		//CouncilorDao cd = new CouncilorDao();
		
		int flag = 0;
		
		conn = DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps = conn.prepareStatement("insert into student(studentname,studentgender,studentdob,studentaddress,studentnumber,studentemail,studentcourse)values(?,?,?,?,?,?,?)");
			
			//PreparedStatement ps1;
			
			ps.setString(1, sb.getStudentname());
			
			ps.setString(2, sb.getStudentgender());
			
			ps.setString(3, sb.getStudentdob());
			
			ps.setString(4, sb.getStudentaddress());
			
			ps.setString(5, sb.getStudentnumber());
			
			ps.setString(6, sb.getStudentemail());
			
			ps.setString(7, sb.getStudentcourse());
			
			int z = ps.executeUpdate();
			
			if (z > 0) {

				ps = conn.prepareStatement("select studentid from student where studentemail=?");
				
				ps.setString(1, sb.getStudentemail());
				
				ResultSet rs = ps.executeQuery();
				
				if (rs.next()) {
				
					flag = (Integer) rs.getInt(1);
					
					sb.setStudentid(flag);
					
				}
				
				ps=conn.prepareStatement("update course set seatavailable=seatavailable-1 where coursename=?;");
				
				ps.setString(1, sb.getStudentcourse());
				
				ps.executeUpdate();
				
			}
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}

		return flag;

	}

	public ArrayList<StudentBean> getAllStudent() {

		ArrayList<StudentBean> als = new ArrayList<StudentBean>();

		Connection conn = DBUtil.getConnect();

		try {
			
			PreparedStatement ps = conn.prepareStatement("select * from student");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				StudentBean sb = new StudentBean(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
				
				als.add(sb);

			}

		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();

		}

		return als;

	}

	public StudentBean getStudent(int studentid) {
	
		StudentBean sb = null;
		
		conn = DBUtil.getConnect();

		try {
		
			PreparedStatement ps = conn.prepareStatement("select * from student where studentid=?;");
			
			ps.setInt(1, studentid);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next())
			
			{
			
				sb = new StudentBean(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
				
				return sb;
			
			}

		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}

		return sb;

	}

	public boolean updateStudent(StudentBean sb) {

		boolean flag = false;
	
		conn = DBUtil.getConnect();
		
		try {
		
			PreparedStatement ps = conn.prepareStatement("update student set studentname=?, studentgender=?, studentdob=?, studentaddress=?, studentnumber=?,studentemail=?,studentcourse=? where studentid=?;");
			
			ps.setString(1, sb.getStudentname());
			
			ps.setString(2, sb.getStudentgender());
			
			ps.setString(3, sb.getStudentdob());
			
			ps.setString(4, sb.getStudentaddress());
			
			ps.setString(5, sb.getStudentnumber());
			
			ps.setString(6, sb.getStudentemail());
			
			ps.setString(7, sb.getStudentcourse());
			
			ps.setInt(8, sb.getStudentid());
			
			int z = ps.executeUpdate();
			
			if (z > 0)
			
				flag = true;

		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}

		return flag;

	}

	public boolean checkEmail(String emailcheck) {
	
		boolean flag = false;

		conn = DBUtil.getConnect();

		try {
		
			PreparedStatement ps = conn.prepareStatement("select * from student where studentemail=?");
			
			ps.setString(1, emailcheck);
			
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
			
				flag = true;
			}
		
		} catch (SQLException e) {
		
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}

		return flag;
	
	}

}
