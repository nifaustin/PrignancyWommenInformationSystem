<%@page language="java" contentType="text/html;"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preginancy Women</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>




    <nav>
        <div class="container header">
         <div class="log"> <a href="home.jsp"><img src="image/ww.png" alt="logo">  </a> </div>
         <h2 class="msg">Welcome, <% out.print(session.getAttribute("user")); %></h2>
         <ul>
             <li><a href="home.jsp">Home</a></li>
             <li><a href="index.jsp">Logout</a></li>
         </ul>
        </div>
     </nav>
     <div style="backgroundcolor:blue;color:white;height:40px;">
     <h3>Welcome,<% out.print(session.getAttribute("user")); %></h3>
     </div>
    <section class="Detailz">
        <h2>Month in Whole Year</h2>
        <div class="container d-container">

            <a href="MonthData/jan.html">
                <h4>First month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5>What happens in the first month of pregnancy</h5>
                        <hr>
                        <p>Pregnancy is divided into 3  trimesters.<br>
                            Each trimester is a little longer than 13<br> weeks.
                            The first month marks the<br> beginning of the first trimester. </p>
                        </div>
                        <!-- <img src="image/log2.webp" alt="janaury"> -->
                    </div>
            </a>
            <a href="MonthData/feb.html">
                <h4>Second month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5>What happens in the second month of pregnancy?</h5>
                        <hr>
                        <p>The ball of cells turns into an embryo at the start of the 6th week. The embryonic stage of pregnancy lasts about 5 weeks. This is when all the major internal organs start developing. </p>
                        </div>
                        <!-- <img src="image/logo1.jpg" alt="janaury"> -->
                    </div>
            </a>
            <a href="MonthData/march.html">
                <h4>Third month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5>What happens in the third month of pregnancy?</h5>
                        <hr>
                        <p>The embryo becomes a fetus when you’re 3 months pregnant. The umbilical cord connects the fetus to your placenta and uterine wall. External sex organs also start to develop. </p>
                        </div>
                        <!-- <img src="image/back1.jpg" alt="janaury"> -->
                    </div>
            </a>
            <a href="MonthData/apr.html">
                <h4>Fourth month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5>What happens in the fourth month of pregnancy?</h5>
                        <hr>
                        <p>Your 2nd trimester begins during your 4th month of pregnancy, starting on week 14.  </p>
                        </div>
                        <!-- <img src="image/back2.jpg" alt="janaury"> -->
                    </div>
            </a>
            <a href="MonthData/apr.html">
                <h4>Fiveth month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5 style="color: black;">What happens in the fifth month of pregnancy?</h5>
                        <hr>
                        <p style="color: black;">When you’re 5 months pregnant, your fetus develops soft body hair and a greasy coating that helps protect the skin. </p>
                    </div>
                        <!-- <img src="image/logo1.png" alt="janaury"> -->
                </div>
            </a>
            <a href="MonthData/june.html">
                <h4>Sixth month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5 style="color: black;">What happens in the sixth month of pregnancy?</h5>
                        <hr>
                        <p style="color: black;">During the 6th month, your fetus starts to develop blood cells, taste buds, eyebrows and eyelashes. </p>
                    </div>
                        <!-- <img src="image/logo2.jpeg" alt="janaury"> -->
                </div>
            </a>
            <a href="MonthData/jully.html">
                <h4>Seventh month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5 style="color: black;">What happens in the seventh month of pregnancy?</h5>
                        <hr>
                        <p style="color: black;">Your 3rd trimester starts during your 7th month of pregnancy, on week 28. </p>
                    </div>
                        <!-- <img src="image/logo1.jpg" alt="Jully"> -->
                </div>
            </a>
            <a href="MonthData/aug.html">
                <h4>Eighth month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5 style="color: black;">What happens in the eighth month of pregnancy?</h5>
                        <hr>
                        <p>During your 8th month of pregnancy, your fetus is about 11 inches long, and the lanugo (the fine, soft hair that covers your fetus’s body) begins to fall off.</p>
            
                    </div>
                        <!-- <img src="image/logo1.png" alt="Jully"> -->
                </div>
            </a>
            <a href="MonthData/sep.html">
                <h4>Nineth month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5 style="color: black;">What happens in the ninth month of pregnancy?</h5>
                        <hr>
                        <p>When you’re 9 months pregnant, your fetus’s eyes and pupils are more developed, and it has more body fat.</p>
            
                    </div>
                        
                        <!-- <img src="image/log2.png" alt="Sep"> -->
                </div>

            </a>
            <a href="MonthData/oct.html">
                <h4>Tenith month</h4>
                <div class="data-container">
                    <div class="dataz">
                        <h5 style="color: black;">What happens in the tenth month of pregnancy?</h5>
                        <hr>
                        <p>When you’re 10 months pregnant, your fetus reaches its final stage of development and you give birth.</p>
            
                    </div>
                        
                        <!-- <img src="image/log2.png" alt="Sep"> -->
                </div>

            </a>

        </div>
    </section>

    <section class="footer">
        <div class="container footer-el">
            <div class="right-footer">
                <h3>Address</h3>
                <p>Rwanda</p>
                <p>Kn-540</p>
            </div>
            <div class="imgz">
                <a href="home.html"><img src="image/log2.png" alt="logo">  </a> 
            </div>
            <div class="left-footer">
                <h2>Links</h2>
            <div class="links">
                <a href="home.jsp">Home</a>
    
                <a href="index.jsp">Logout</a>
            </div>
            
            </div>
        </div>
        <p>&copy;copy writed by Group II</p>
    </section>
    
</body>
</html>