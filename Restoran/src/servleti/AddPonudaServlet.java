package servleti;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PonudaDAO;
import model.Ponuda;


/**
 * Servlet implementation class AddPonudaServlet
 */
public class AddPonudaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPonudaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String naziv = request.getParameter("naziv");
		String kolicina = request.getParameter("kolicina");
		System.out.println(naziv);
		System.out.println(kolicina);

		Ponuda ponuda = new Ponuda(naziv,kolicina);
		PonudaDAO ponudaDAO = new PonudaDAO();
		ponudaDAO.insertPonuda(ponuda);
		request.getRequestDispatcher("PrikazNamirnica.jsp?email="+email).forward(request, response);
		
		
		return;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
