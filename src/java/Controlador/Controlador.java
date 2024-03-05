package Controlador;

import Modelo.Nomina;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {

    Nomina nom = new Nomina();//crear objeto nomina

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String n = request.getParameter("nombre");//definir variable llmar desde index
        System.out.println("variable:" + n);
        nom.setNombre(n);//con objeto nom setnombre toma valor de n

        String ident = request.getParameter("ident");
        nom.setId(ident);// la misma mierda pero con setid

        Long sbase = Long.parseLong(request.getParameter("sbase"));
        nom.setSalariobasico(sbase);

        Integer dias = Integer.parseInt(request.getParameter("dias"));
        nom.setDias(dias);

        request.setAttribute("objn", nom);//enviamos objeto nom con nombre objn
        request.getRequestDispatcher("calcular.jsp").forward(request, response);//lo mandamos a calcular
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);//se manda al proces request arriba
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
