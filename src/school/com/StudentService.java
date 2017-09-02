package school.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentService {

	public Student getStdunetDetails(int rollNo){
		Student student=new Student();
		student.rollno=rollNo;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/colleage","prasanna","prasanna");
			Statement stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM student where id="+rollNo);
			
			
			rs.next();
			String name=rs.getString("STUDENT_NAME");
			student.name=name;
			int marks=rs.getInt("MARKS");
			
			student.marks=marks;
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return student;
	}
	
	public List<Student> getAllStudents(){
		List<Student> students=new ArrayList<Student>();
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection("jdbc:mysql://localhost/colleage","prasanna","prasanna");
	        Statement stmt =conn.createStatement();	
	        ResultSet rs = stmt.executeQuery("SELECT * FROM colleage.student");
	        
	        while (rs.next()){
	        	Student student = new Student();
	        	student.rollno=rs.getInt("ID");
	        	student.name=rs.getString("STUDENT_NAME");
	        	student.marks=rs.getInt("MARKS");
	        	System.out.println(student.marks);
	        	students.add(student);
	        
	        	 }
	    	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	  return students;
	
}
	 public void insertStudentDetails (Student s) {
		 try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/colleage", "prasanna", "prasanna");
				String query="INSERT INTO STUDENT VALUES (?,?,?)";
				PreparedStatement stmt = conn.prepareStatement(query);
				stmt.setInt(1, s.getRollno());
				stmt.setString(2, s.getName());
				stmt.setInt(3, s.getMarks());
				stmt.executeUpdate();
				
				
		      
		       } catch (Exception e) {
					e.printStackTrace();
		       }
		 
	 }
	 public void deleteStudent(int RollNo){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/colleage", "prasanna", "prasanna");
				String query="delete from student where id=?";
				PreparedStatement stmt = conn.prepareStatement(query);
				stmt.setInt(1, RollNo);
				stmt.execute();
		       } catch (Exception e) {
					e.printStackTrace();
		       }
		}
}
