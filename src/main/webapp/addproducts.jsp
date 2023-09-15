<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="databaseconnect.jsp" %>
<!DOCTYPE html>




<html lang="en">

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
                    
                       <li><a href="addcategory.jsp">AddCategory</a></li>
                    
                          <li><a href="viewcategory.jsp">ViewCategory</a></li>
                          <li><a href="addproducts.jsp">Add Products</a></li>
                   
                          <li><a href="viewproductsadmin.jsp">ViewProducts</a></li>
                         <li><a href="vieworders.jsp">ViewOrders</a></li>
                           <li><a href="viewfeedback.jsp">ViewFeedback</a></li>
                        
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
             <h2 style="font-size:25px;color:#ffbf00;font-weight:bold ;margin-left:-15% ;">Add Product</h2>
              
            </div>
          </div>
          
        </div>
      </div>
    </section>
    
   
<br><br>


      <div class="container">
        <div class="row">
          <div class="span12">
             <form action="addproductdata.jsp" method="post">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>

              <div class="row  offset-lg-1">
              <b>Select Category</b><br>
                <select name="Category">

<%

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from titledata");

while(rs.next()){
	%>
	
	
	<option value="<%=rs.getString(2)%>"><%=rs.getString(2) %></option>
	
	
	<%
}


%>
</select>
                
                <div class="col-lg-8">
                  <input type="text" name="title" class="form-control" id="title" placeholder="Your Title" data-rule="minlen:4" data-msg="Please enter your Title" />
                  <div class="validation"></div>
                </div>
                <div class="col-lg-8">
                  <input type="text" class="form-control" name="description" id="description" placeholder="Your Description" data-rule="minlen:4" data-msg="Please enter your Description" />
                  <div class="validation"></div>
                </div>
                <div class="col-lg-8">
                  <input type="number" class="form-control" name="cost" id="cost" placeholder="cost" data-rule="minlen:4" data-msg="Please enter your Cost" />
                  <div class="validation"></div>
                </div>
                <div class="col-lg-8">
                  <input type="number" class="form-control" name="quantity" id="quantity" placeholder="quantity" data-rule="minlen:4" data-msg="Please enter your Quantity" />
                  <div class="validation"></div>
                </div>
                <div class="col-lg-8">
                  <input type="number" class="form-control" name="stock" id="stock" placeholder="stock" data-rule="minlen:4" data-msg="Please enter your Stock" />
                  <div class="validation"></div>
                </div>
             
                
                <div>
                  <p class="text-left">
                    <button class="btn btn-large btn-theme margintop10" type="submit">AddProduct</button>
                  </p>
                  </div>
               </div>
            </form>
          </div>
        </div>
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
