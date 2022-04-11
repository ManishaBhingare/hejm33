package edu.jspiders.contactapp.dto;

public class Person 
{
	String Name;
	long Number;
	String emailId;
	String Date_Of_Birth;
	
	public Person()
	{
		
	}
	
	public Person(String name, long number, String emailId, String date_Of_Birth) 
	{	
		Name = name;
		Number = number;
		this.emailId = emailId;
		Date_Of_Birth = date_Of_Birth;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public long getNumber() {
		return Number;
	}
	public void setNumber(long number) {
		Number = number;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getDate_Of_Birth() {
		return Date_Of_Birth;
	}
	public void setDate_Of_Birth(String date_Of_Birth) {
		Date_Of_Birth = date_Of_Birth;
	}
	
	@Override
	public String toString()
	{
		return Name+"\t\t"+Number+"\t\t"+emailId+"\t\t"+Date_Of_Birth;
	}
	

}
