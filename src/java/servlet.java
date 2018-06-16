/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS-PC
 */
@WebServlet(urlPatterns = {"/servlet"})
public class servlet extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
       
            String usuario = request.getParameter("user");
            String password = request.getParameter("pass");
            String usernamesql="";
            String passwordsql="";
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ena2","root","");
                String query="select * from user where user.username='"+usuario+"' and user.password='"+password+"'";
                Statement st=conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()){
                 usernamesql= rs.getString("username");
                 passwordsql=rs.getString("password");
                }
                
            }catch(SQLException ex){
            throw new SQLException(ex);    
            }
            
            if(usuario.equals("")&&password.equals("")){
                request.setAttribute("msg", "Complete ambos campos");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            
            }
            if(usuario.equals("")){
                request.setAttribute("msg", "Ingrese Usuario");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
                
            }
                
            if(password.equals("")){
                request.setAttribute("msg", "Ingrese Contraseña");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
            
            if(!usuario.equals(usernamesql)||!password.equals(passwordsql)){
                request.setAttribute("msg", "Usuario o Password invalido");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);                
            }
            
             if(usuario.equals(usernamesql)||password.equals(passwordsql)){
                 HttpSession User = (HttpSession)request.getSession();            
            User.setAttribute("usuario",usuario);
            response.sendRedirect("menuprincipal.jsp");             
            }
         
            
             
                out.println("</body>");
            out.println("</html>");
        }

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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
