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

	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Student student = new Student();
		int rollNo=0;
		try{
			rollNo=Integer.parseInt(request.getParameter("rollno"));
		}catch(Exception e){
			e.printStackTrace();
		}
		int marks=-1;
		try{
			marks=Integer.parseInt(request.getParameter("marks"));
		}catch(Exception e){
			e.printStackTrace();
		}
		/*student.setRollno(Integer.parseInt(request.getParameter("rollno")));
		student.setMarks(Integer.parseInt(request.getParameter("marks")));*/
		//if (setName(request.getParameter("name")).equals("")) {
		if (rollNo<1 || rollNo>120) {
			String msg = "please enter valid roll number";
			request.setAttribute("msg1", msg);
			request.getRequestDispatcher("Insertdetails.jsp").forward(request, response);
		}else if (request.getParameter("name").length()< 4 || request.getParameter("name").length()> 16) {
			String msg = "length of Name should be inbetween 4 and 16 ";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("Insertdetails.jsp").forward(request, response);
		}else if (marks<0 || marks>100) {
			String msg = "please enter valid marks";
			request.setAttribute("msg2", msg);
			request.getRequestDispatcher("Insertdetails.jsp").forward(request, response);
		}else {
			student.setName(request.getParameter("name"));
			/*StudentService studentservice = new StudentService();
			studentservice.insertStudentDetails(student);*/

			response.sendRedirect("/School/EnteredSuccess.jsp");
		}
	
	}
	
}



	
