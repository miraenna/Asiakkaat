package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.Asiakas;
import model.dao.Dao;


@WebServlet("/asiakkaat/*")
public class Asiakkaat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Asiakkaat() {
        System.out.println("Asiakkaat.Asiakkaat()");
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat.doGet()");
		String hakusana = request.getParameter("hakusana");
		String asiakas_id = request.getParameter("asiakas_id");
		Dao dao = new Dao();
		ArrayList<Asiakas> asiakkaat;
		String strJSON="";
		if(hakusana!=null) {
			if(!hakusana.equals("")) {
				asiakkaat = dao.getAllItems(hakusana);
		} else {
				asiakkaat = dao.getAllItems();
			}
			strJSON = new Gson().toJson(asiakkaat);
	} else if(asiakas_id!=null) {
		Asiakas asiakas = dao.getItem(Integer.parseInt(asiakas_id));
		strJSON = new Gson().toJson(asiakas);
	}
		response.setContentType("application/json); charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(strJSON);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat.doPost()");
		String strJSONInput = request.getReader().lines().collect(Collectors.joining());
		Asiakas asiakas = new Gson().fromJson(strJSONInput, Asiakas.class);	
		Dao dao = new Dao();
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(dao.addItem(asiakas)) {
			out.println("{\"response\":1}"); 
		}else {
			out.println("{\"response\":0}");
		}
	}


	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat.doPut()");
		String strJSONInput = request.getReader().lines().collect(Collectors.joining());
		//System.out.println("strJSONInput " + strJSONInput);		
		Asiakas asiakas = new Gson().fromJson(strJSONInput, Asiakas.class);		
		//System.out.println(asiakas);		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		Dao dao = new Dao();			
		if(dao.changeItem(asiakas)){ //metodi palauttaa true/false
			out.println("{\"response\":1}");  //Asiakkaan muuttaminen onnistui {"response":1}
		}else{
			out.println("{\"response\":0}");  //Asiakkaan muuttaminen epäonnistui {"response":0}
		}		
	}

	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("Asiakkaat.doDelete()");
	int asiakas_id = Integer.parseInt(request.getParameter("asiakas_id"));
	Dao dao = new Dao();
	response.setContentType("application/json; charset=UTF-8");
	PrintWriter out = response.getWriter();
	if(dao.removeItem(asiakas_id)) {
		out.println("{\"response\":1}");
	}else {
		out.println("{\"response\":0}");
	}

}
}
