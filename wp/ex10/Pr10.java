import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Pr10 extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) 
        throws ServletException, IOException {
            res.setContentType("text/html");
            PrintWriter out = res.getWriter();
            
            int rate1, rate2, rate3, rate4;
            int total, total1, total2, total3, total4;
            int i1, i2, i3, i4;
            double gTotal;
            
            i1=0;
            i2=0;
            i3=0;
            i4=0;
            
            rate1=20;
            rate2=40;
            rate3=30;
            rate4=70;
            
            String prod1 = "4 100W light bulbs for Rs. 20";
            String prod2 = "8 100W light bulbs for Rs. 40";
            String prod3 = "4 100W long life light bulbs for Rs. 30";
            String prod4 = "8 100W long life light bulbs for Rs. 70";
            
            String n = req.getParameter("uname");
            
            if(req.getParameter("chbox1") != null) {
                String s1 = req.getParameter("txt1");
                i1 = Integer.parseInt(s1);
            }
            if(req.getParameter("chbox2") != null) {
                String s2 = req.getParameter("txt2");
                i2 = Integer.parseInt(s2);
            }
            if(req.getParameter("chbox3") != null) {
                String s3 = req.getParameter("txt3");
                i3 = Integer.parseInt(s3);
            }
            if(req.getParameter("chbox4") != null) {
                String s4 = req.getParameter("txt4");
                i4 = Integer.parseInt(s4);
            }
            
            total1 = i1 * rate1;
            total2 = i2 * rate2;
            total3 = i3 * rate3;
            total4 = i4 * rate4;

            total = total1 + total2 + total3 + total4;
            gTotal = total + (total * 13.5/100);
            
            out.println("Purchase made by" + n);
            out.println("<br><br>");
            
            out.println("<html>");
            out.println("<head><title>SHOP</title></head>");
            out.println("<table border=\"1\">");
            out.println("<tr>");
            out.println("<th>Item</th>");
            out.println("<th>Quantity</th>");
            out.println("<th>Price</th>");
            out.println("<th>Total</th>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>"+prod1+"</td>");
            out.println("<td>"+i1+"</td>");
            out.println("<td>"+rate1+"</td>");
            out.println("<td>"+total1+"</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>"+prod2+"</td>");
            out.println("<td>"+i2+"</td>");
            out.println("<td>"+rate2+"</td>");
            out.println("<td>"+total2+"</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>"+prod3+"</td>");
            out.println("<td>"+i3+"</td>");
            out.println("<td>"+rate3+"</td>");
            out.println("<td>"+total3+"</td>");
            out.println("</tr>");
            

            out.println("<tr>");
            out.println("<td>"+prod4+"</td>");
            out.println("<td>"+i4+"</td>");
            out.println("<td>"+rate4+"</td>");
            out.println("<td>"+total4+"</td>");
            out.println("</tr>");
            
            
            out.println("</table>");

            out.println("<br>");
            
            out.println("Total cost with VAT = Rs. "+ gTotal);
        }
}
