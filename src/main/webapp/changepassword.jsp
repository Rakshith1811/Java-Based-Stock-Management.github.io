<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE >
<html>


<head>
  <meta charset="utf-8">
  <title>Stock Management System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="css/jcarousel.css" rel="stylesheet" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link href="skins/default.css" rel="stylesheet" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />

  
</head>

<body>
  <div id="wrapper">
    <!-- toggle top area -->
    <div class="hidden-top">
      <div class="hidden-top-inner container">
        <div class="row">
          <div class="span12">
            <ul>
              <li><strong>We are available for any custom works this month</strong></li>
              <li>Main office: Stock Management System</li>
              <li>Call us <i class="icon-phone"></i> 789858585</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- end toggle top area -->
    <!-- start header -->
    <header>
      <br>
        <div class="row">
          <div class="span4">
            <div class="logo">
              <a href="index.jsp">
                <h1 style="font-size:25px;color:#F03C02;font-weight:bold; margin-left:10% ;">Stock Management System</h1>
              
			  </a>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li class=" active">
                     
                    </li>
                        
                      <li><a href="changepassword.jsp">Change Password</a></li>
                    
                        <li><a href="viewcustmerdata.jsp">View Customer</a></li>
                   
                        <li><a href="viewproducts.jsp">View Products</a></li>
                         <li><a href="mypurchase.jsp">View MyPurchase</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    <li>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      
    </header>
    <!-- end header -->
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
             <h2 style="font-size:25px;color:#ffbf00;font-weight:bold ;margin-left:-15% ;">Change Password</h2>
              
            </div>
          </div>
          
        </div>
      </div>
    </section>
    <br><br>
     <div class="span12">
    </div>
    <div style=margin:2%>
    <br>
    
<%
//int id=Integer.parseInt(request.getParameter("id"));
String email=session.getAttribute("email").toString();                   		
                    		try{
                    		 Class.forName("com.mysql.cj.jdbc.Driver");
                    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stack","root","root");
                    		 Statement ps=con.createStatement();
                    	ResultSet rs=ps.executeQuery("select * from registeremp where email='"+email+"'");
                    	while(rs.next()){
                    	%>
                    	      
                    	            <form action="changepassworddata.jsp" method="post">
                    	              
                                      <div class="table border=3 width=50%">
                    	              <div class="row-lg-50%">
                    	              <div class="col-lg-50">
                    	                  <input type="text" name="id" class="form-control" id="id" readonly placeholder="Your Id" data-rule="minlen:4" data-msg="Please enter at Id" value="<%=rs.getInt(1) %>" />
                    	                  <div class="validation"></div>
                    	                </div>
                    	                <div class="col-lg-8">
                    	                  <input type="text" name="name" class="form-control" id="name" readonly placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" value="<%=rs.getString(2) %>" />
                    	                  <div class="validation"></div>
                    	                </div>
                    	                <div class="col-lg-8">
                    	                  <input type="email" class="form-control" name="email" id="email"  readonly placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" value="<%=rs.getString(3) %>" />
                    	                  <div class="validation"></div>
                    	                </div>
                    	                <b>Enter Old Password:</b>
                    	                <div class="col-lg-8">
                    	                  <input type="password" class="form-control" name="password" id="password"  placeholder="Password" data-rule="minlen:3" data-msg="Please enter a Old password" />
                    	                  <div class="validation"></div>
                    	                </div>
                    	                 <b>Enter New Password:</b>
                    	                
                    	                <div class="col-lg-8">
                    	                  <input type="password" class="form-control" name="newpassword" id="password"  placeholder="Password" data-rule="minlen:3" data-msg="Please enter a New  password" />
                    	                  <div class="validation"></div>
                    	                </div>
                    	                <div>
                    	                  <p class="text-left">
                    	                    <button class="btn btn-large btn-theme margintop10" type="submit">Update</button>
                    	                  </p>
                    	                  </div>
                </div>
              </div>
            </form>
         
      <%
      }
            }
      catch(Exception e){
    	  e.printStackTrace();
      }
%>
   <br>
   </div>
    <footer>
     
        <div class="container">
          <div class="row">
            <div class="span6">
              <div class="copyright">
                <p>
                  <span>&copy; 2022 - All right reserved.</span>
                </p>
               
              </div>
            </div>
            
          </div>
        </div>
      
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/jcarousel/jquery.jcarousel.min.js"></script>
  <script src="js/jquery.fancybox.pack.js"></script>
  <script src="js/jquery.fancybox-media.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/animate.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>

</body>

</html>
