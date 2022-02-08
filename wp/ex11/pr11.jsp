<html>
  <head>
    <title>Home</title>
  </head>
  
  <body>
    <%
    
        String n = req.getParameter("uname");
        
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

        

        %>
  </body>
</html>
