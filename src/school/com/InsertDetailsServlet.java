package school.com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertDetailsServlet
 */
@WebServlet("/InsertDetailsServlet")
public class InsertDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Student student = new Student();
		
		student.setRollno(Integer.parseInt(request.getParameter("rollno")));
		student.setName(request.getParameter("name"));
		student.setMarks(Integer.parseInt(request.getParameter("marks")));
		if ( request.getParameter("name").length() >= 4 && request.getParameter("name").length() <= 16){
		StudentService studentservice = new StudentService();
		studentservice.insertStudentDetails(student);
		
		response.sendRedirect("/School/EnteredSuccess.jsp");
	}else{
		response.sendRedirect("/School/Error.jsp");
	}
	}
}
