package fr.noixcoop.nuceus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RechercherVarieteGet
 */
@WebServlet("/RechercherVarietePost")
public class RechercherVarietePost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechercherVarietePost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String variete  = request.getParameter("varietePost");
		response.setContentType("text/html");
		PrintWriter sortie = response.getWriter();
		if(variete == null){
			sortie.println("<html><body><h1>Variété de noix inconnu</h1>"
					+ "<button type='button' onClick='location.href(-1)'>Retour</button></body></html>");	
		}
		else{
			MetierVarietes bdd = new MetierVarietes();
			Variete result = bdd.consulter(variete);
			if(result != null){
				String isAoc = null;
				if(result.isAoc()) {
					isAoc = "Oui";
				}
				else {
					isAoc = "Non";
				}
				sortie.println("<html><head><meta charset='UTF-8'>"
						+ "<title>Détails de la varité</title><style> h1 {text-align: center;}div {"
						+ "text-align: center;margin: 0 auto;width: 100%;} table , tr , td { border-style:double;border-width:2px; }</style></head><body><table align='center' width='50%'><tr><th>Détails de la variété</th></tr><tr><td><label>Libéllé : </label> <p>"+result.getLibelle() +"</p> </td></tr><tr><td><label>Est AOC ? : </label> <p>"+ isAoc+"</p></td></tr></table></body></html>");
			}
			else {
				sortie.println("<html><body><h1>Variété de noix inconnu</h1>"
						+ "<button type='button' onClick='location.href(-1)'>Retour <button/></body></html>");	
			}
		}
	}

}
