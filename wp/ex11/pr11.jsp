<html>
  <head>
    <title>Home</title>
  </head>
  
  <body>
    <%
    
        String n = request.getParameter("uname");
        
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

        if(request.getParameter("chbox1") != null) {
        String s1 = request.getParameter("txt1");
        i1 = Integer.parseInt(s1);
        }
        if(request.getParameter("chbox2") != null) {
        String s2 = request.getParameter("txt2");
        i2 = Integer.parseInt(s2);
        }
        if(request.getParameter("chbox3") != null) {
        String s3 = request.getParameter("txt3");
        i3 = Integer.parseInt(s3);
        }
        if(request.getParameter("chbox4") != null) {
        String s4 = request.getParameter("txt4");
        i4 = Integer.parseInt(s4);
        }

        total1 = i1 * rate1;
        total2 = i2 * rate2;
        total3 = i3 * rate3;
        total4 = i4 * rate4;

        total = total1 + total2 + total3 + total4;
        gTotal = total + (total * 13.5/100);
  
        <h4>Purchase made by</h4><%=n%>
        <br><br>

        <table>
          <tr>
            <th>Item</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
          </tr>

          <tr>
            <td><%=prod1%></td>
            <td><%=i1%></td>
            <td><%=rate1%></td>
            <td><%=total1%></td>
          </tr>
          
          <tr>
            <td><%=prod2%></td>
            <td><%=i2%></td>
            <td><%=rate2%></td>
            <td><%=total2%></td>
          </tr>
          
          <tr>
            <td><%=prod3%></td>
            <td><%=i3%></td>
            <td><%=rate3%></td>
            <td><%=total3%></td>
          </tr>
  
          <tr>
            <td><%=prod4%></td>
            <td><%=i4%></td>
            <td><%=rate4%></td>
            <td><%=total4%></td>
          </tr>
        </table>

        <br>

        <h4>Total cost with VAT = ₹</h4><%=gTotal%>
       %>
  </body>
</html>
