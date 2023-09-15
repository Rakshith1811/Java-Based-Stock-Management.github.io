<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
<!DOCTYPE html>

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
      
      

    <!-- end header -->
   <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
            <h2 style="font-size:25px;color:#ffbf00;font-weight:bold ;margin-left:-15% ;">Purchase Products</h2>
              
            </div>
          </div>
          
        </div>
      </div>
    </section>
    <br>
    
 

                    	      
                    	            <form action="buyingproductdata.jsp" method="post">
                    	               <div style=margin-left:3%>

                    	              <div class="row-lg-50">
                    	              
                    	              
                    	              <%

                                     String email=session.getAttribute("email").toString(); 
                                     try{
                                    	 
                                    
                    		 
                    		    Class.forName("com.mysql.cj.jdbc.Driver");
                    		 Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/stack","root","root");
                    		 
                    		 Statement ps1=con1.createStatement();
                    	    ResultSet rs1=ps1.executeQuery("select * from registeremp where email='"+email+"'");
                    	while(rs1.next()){
                    	%>
                    	                
                    	                <div class="col-lg-8">
                    	                  <input type="email" class="form-control" name="email" id="email"  readonly placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" value="<%=rs1.getString(3) %>" />
                    	                  <div class="validation"></div>
                    	                </div>
                    	                     <%
                    	                    
      }
                    	
            }
      catch(Exception e){
    	  e.printStackTrace();
      }
%>
                    	              <%
                    	             // String email=session.getAttribute("email").toString();
                        int id=Integer.parseInt(request.getParameter("id"));
                       //String active=request.getParameter("active");
                       	          String not="Unavailable";
                                 int stock=0;
                    		try{
                    		 Class.forName("com.mysql.cj.jdbc.Driver");
                    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stack","root","root");
                    		 Statement ps=con.createStatement();
                    	ResultSet rs=ps.executeQuery("select * from  addproduct where id='"+id+"'");
                    			
                    		 while(rs.next()){
                    			 if(not.equals(rs.getString(8))|| stock==rs.getInt(7)){
                    				 %>
                    				 <jsp:forward page="viewproducts.jsp"></jsp:forward>
                    				 <%
                    			 }
                    			 else{
                    			%>
                    			<div class="col-lg-50">
          	                  <input type="text" name="id" class="form-control" id="id" readonly placeholder="Your Id" data-rule="minlen:4" data-msg="Please enter at Id" value="<%=rs.getInt(1) %>" />
          	                  <div class="validation"></div>
          	                </div>
          	                <div class="col-lg-8">
          	                  <input type="number" class="form-control" name="cost" id="cost" readonly placeholder="cost" data-rule="minlen:3" data-msg="Please enter a Cost" value="<%=rs.getDouble(5) %>"/>
          	                  <div class="validation"></div>
          	                </div>
          	                <div class="col-lg-8">
          	                  <input type="number" class="form-control" name="stock" id="stock" readonly placeholder="stock" data-rule="minlen:3" data-msg="Please enter a Stock" value="<%=rs.getInt(7) %>"/>
          	                  <div class="validation"></div>
          	                </div>
          	                <div class="col-lg-8">
          	                  <input type="number" class="form-control" name="quantity" id="quantity"  placeholder="quantity" data-rule="minlen:3" data-msg="Please enter a Quantity"/>
          	                  <div class="validation"></div>
          	                </div>
          	                
          	                 <div class="col-lg-8">
                              <textarea name="address" id="address" placeholder="Enter Address" data-rule="minlen:3" data-msg="Please Address" ></textarea>
                
                        <div class="validation"></div>
                    			<% 
                    			
                    		
                    		
                    			
                    		%>
                                       
                    	               
                    	                    <%
                    		 
                    			 }
                    		 } 
                    	
                    		}
      catch(Exception e){
    	  e.printStackTrace();
      }
%>


                    	                
                    	                
                    	                
                    	                <div>
                    	                  <p class="text-left">
                    	                    <button class="btn btn-large btn-theme margintop10" type="submit">Submit</button>    <code><a href="cancleproduct.jsp" class="btn btn-large btn-theme margintop10">Back to Purchase Page</a></code>
                    	                    
                    	                  </p>
                    	                  </div>
                    	                  
                                            </div>
                                                 </div>
                                               </form>
         
  
   <br><br><br><br><br><br><br><br>
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

