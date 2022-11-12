package com.ecombook.servlets;
import com.ecombook.dao.CategoryDao;
import com.ecombook.dao.ProductDao;
import com.ecombook.entities.Category;
import com.ecombook.entities.Product;
import com.ecombook.helper.FactoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Nishant Singh
 */

@MultipartConfig
public class postoperationservlet extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet postoperationservlet</title>");            
            out.println("</head>");
            out.println("<body>");
 

            String op=request.getParameter("operation");
            
            if (op.trim().equals("addcategory")) {
                   
                String ctittle=request.getParameter("cname");
                String cdesc=request.getParameter("categorydesc");
                
                Category category=new Category();
                
                category.setCategoryTittle(ctittle);
                category.setCategoryDescription(cdesc);
                
                CategoryDao cd=new CategoryDao(FactoryProvider.getFactory());
                int catid=cd.saveCAtegort(category);
                
                
                HttpSession httpSession=request.getSession();
                httpSession.setAttribute("message", "Category Saved");
                response.sendRedirect("admin.jsp");
                 
                
                
                
                
            }else if(op.trim().equals("addpost")){
                
                String pTittle=request.getParameter("pTittle");
                String pDesc=request.getParameter("pDesc");
                String pPrice=request.getParameter("pPrice");
                String pDiscount=request.getParameter("pDiscount");
                String pQuantity=request.getParameter("pQuantity");
                Part img=request.getPart("pImage");
                int cateId=Integer.parseInt(request.getParameter("cateId"));
                
                Product p=new Product();
                p.setpName(pTittle);
                p.setpDesc(pDesc);
                p.setpPrice(pPrice);
                p.setpDiscoutnt(pDiscount);
                p.setpQuantity(pQuantity);
                p.setpPhoto(img.getSubmittedFileName());
                
                // Get The Category Dao 
                
                CategoryDao cdao=new CategoryDao(FactoryProvider.getFactory());
                Category category=cdao.getCategoryById(cateId);
                
                p.setCategory(category);
                     
                //save the product 
                
                ProductDao pdao=new ProductDao(FactoryProvider.getFactory());
                
                //Upload Pic
                
                String path=request.getRealPath("img")+File.separator+ "products" +File.separator+img.getSubmittedFileName();
                
                
                
                  out.println(path);
                  
                  FileOutputStream fos=new FileOutputStream(path);
                  InputStream is=img.getInputStream();  
                  byte []data=new byte[is.available()];
                  is.read(data);
                  fos.write(data);
                  fos.close();
                  pdao.saveProduct(p);

                
                
                HttpSession httpSession=request.getSession();
                httpSession.setAttribute("message", "Product Saved Successfully");
                response.sendRedirect("admin.jsp");
                
                
                 
                 
               
                
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
