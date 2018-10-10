/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.christian.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.christian.utilidades.Utilidades;

/**
 *
 * @author Christian
 */
@WebServlet(name = "Procesar", urlPatterns = {"/Procesar"})
public class Procesar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String primer = request.getParameter("primero");
        String segundo = request.getParameter("segundo");
        
        int a, b, c;
        
        try {
            a = Integer.parseInt(primer);
            b = Integer.parseInt(segundo);
        } catch (NumberFormatException nfe) {
            a=0;
            b=0;
        }
        c=a+b;
        
        // Se enviará el atributo
        request.setAttribute("respuesta", c); // tambien se puede enviar un lista o cualquier objeto
        
        Utilidades.irAPagina(request, response, getServletContext(), "/respuestasumar.jsp");
        // Especificamos a que JSP enviamos el atributo
        // Obtenemos un despachador(objeto que se encarga de buscar el JSP al cual se le da la direccion)
        // el cual se obtiene desde el contexto de los servlets y de ese contexto se obtiene un despachador
        // a ese despachador se envia la URL a la que se envia las respuestas que se envia en los atributos 
//        RequestDispatcher despachador = getServletContext().getRequestDispatcher("/respuestasumar.jsp");
        // Se envia todo el objeto respuesta y el request a esa pagina JSP
        // Es necesario enviar los objetos de request y reponse para conocer 
        // cada uno de los clientes que le esta haciendo la solicutud y la respuesta
//        despachador.forward(request, response); 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
