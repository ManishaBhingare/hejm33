package edu.jspiders.contactapp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import edu.jspiders.contactapp.dto.Person;

public class ContactDataBaseOperations 
{
	private final static String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private final static String DB_URL = "jdbc:mysql://localhost:3306/contactfile?user=root&password=root";
	
	public Person searchContact(String name)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try 
		{
			Class.forName(DRIVER_CLASS);
			con=DriverManager.getConnection(DB_URL);
			
			String query = "SELECT * FROM contact WHERE Name = ?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, name);
			
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				String Name=rs.getString(1);
				int Number=rs.getInt(2);
				String emailId=rs.getString(3);
				String Date_Of_Birth=rs.getString(4);
				
				Person p=new Person();
				p.setName(Name);
				p.setNumber(Number);
				p.setEmailId(emailId);
				p.setDate_Of_Birth(Date_Of_Birth);
				return p;
			}
			
		}catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public boolean insertContact(Person p)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "INSERT INTO contact VALUES(?,?,?,?)";
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, p.getName());
			pstmt.setLong(2, p.getNumber());
			pstmt.setString(3,p.getEmailId());
			pstmt.setString(4,p.getDate_Of_Birth());
		
			int rowsAffected=pstmt.executeUpdate();
			if(rowsAffected>0)
			return true;
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(pstmt != null)
			{
				try 
				{
					pstmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(rs != null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		
		return false;
	}
	public ArrayList<Person> showAllContacts()
	{
		ArrayList<Person> allContacts=new ArrayList<Person>();
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try 
		{
			Class.forName(DRIVER_CLASS);
			con = DriverManager.getConnection(DB_URL);
			
			stmt=con.createStatement();
			rs=stmt.executeQuery("SELECT * FROM contact");
			
			while(rs.next())
			{
				Person p=new Person();
				p.setName(rs.getString(1));
				p.setNumber(rs.getInt(2));
				p.setEmailId(rs.getString(3));
				p.setDate_Of_Birth(rs.getString(4));				
				allContacts.add(p);
			}
			return allContacts;

		} 
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void updateContact(Person p)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "UPDATE contact SET Number=?,emailId=?,Date_Of_Birth=? WHERE Name= ?";
			pstmt = con.prepareStatement(query);
			pstmt.setLong(1,p.getNumber());
			pstmt.setString(2, p.getEmailId());
			pstmt.setString(3, p.getDate_Of_Birth());
			pstmt.setString(4, p.getName());
			
			 int rowsAffected= pstmt.executeUpdate();	
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(pstmt != null)
			{
				try 
				{
					pstmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(rs != null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
	
	}
	
	public void deleteContact(Person p)
	{
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "DELETE FROM contact WHERE Name=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,p.getName());

			int rowsAffected=pstmt.executeUpdate();
		} 
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(pstmt != null)
			{
				try 
				{
					pstmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(rs != null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		
	}
	
	
}
