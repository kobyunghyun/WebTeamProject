<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<!--

Template 2082 Pure Mix

http://www.tooplate.com/view/2082-pure-mix

-->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

	<!-- Site title
   ================================================== -->
	<title>Pure Mix - Single Post</title>

	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="css/animate.min.css">

	<!-- Font Icons CSS
   ================================================== -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">

	<!-- Main CSS
   ================================================== -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Google web font 
   ================================================== -->	
  <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
</head>
<body>


<!-- Preloader section
================================================== -->
<div class="preloader">

	<div class="sk-spinner sk-spinner-pulse"></div>

</div>


<!-- Navigation section
================================================== -->
<div class="nav-container">
   <nav class="nav-inner transparent">

      <div class="navbar">
         <div class="container">
            <div class="row">

              <div class="brand">
                <a href="main.jsp">Pure Mix</a>
              </div>

              <div class="navicon">
              <div class="navicon">
               
               <mytag:login/>
              </div>
                <div class="menu-container">

                  <div class="circle dark inline">
                    <i class="icon ion-navicon"></i>
                  </div>

                  <div class="list-menu">
                    <i class="icon ion-close-round close-iframe"></i>
                    <div class="intro-inner">
                     	<ul id="nav-menu">
                       <li><a href="main.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="board.jsp">Board</a></li>
                        <li><mytag:contact/></li>
                        <li><mytag:writePortfolio /></li>
                      </ul>
                    </div>
                  </div>

                </div>
              </div>

            </div>
         </div>
      </div>

   </nav>
</div>

<!-- Header section
================================================== -->
<section id="header" class="header-five">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
          <div class="header-thumb">
              <h1 class="wow fadeIn" data-wow-delay="0.6s">Single Blog post</h1>
              <h3 class="wow fadeInUp" data-wow-delay="0.9s">Vestibulum at aliquam lorem</h3>
          </div>
			</div>

		</div>
	</div>		
</section>


<!-- Single Post section
================================================== -->
<section id="single-post">
   <div class="container">
      <div class="row">

         <div class="wow fadeInUp col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10" data-wow-delay="2.3s">
         	  <div class="blog-thumb">
         	  <div align="right" class="blog-thumb">
         	  	<mytag:removePortfolio/>
         	  	</div>
         		   <c:set var="pOne" value="${portSelectOne}"/>        		         		   
         		   <c:set var="p" value="${pOne.port}" />        		   
         		   <h1><c:out value="${p.portTitle}"/></h1>
         			    <div class="post-format">
         			   			<span>By <a href="#">${p.adminName}</a></span>
						        <span><i class="fa fa-date"></i><c:out value="${p.portTime}"/></span>
					       </div>
         		   <p><c:out value="${p.portContent}"/></p>
               <img src="images/blog-img1.jpg" class="img-responsive post-image" alt="Blog">
               <div class="blog-comment">
                 <h3>Comments</h3>
                    <div class="media">
                        <div class="media-object pull-left">
                            <img src="images/comment2.jpg" class="img-responsive" alt="blog">
                       </div>
                      <div class="media-body">
                         <c:forEach var="r" items="${pOne.reply}">
                        <h4 class="media-heading">${r.memberName }</h4>
                        <h5>${r.replyTime }  </h5>
                        <p>${r.replyContent }</p>
               			 </c:forEach>	
                      </div>
                    </div>
               </div>
				
               <div class="blog-comment-form">
                  <h3>Leave a comment</h3>
                    <form action="" method="post">
                    <mytag:writeComment/>
                   </form>
               </div>
         	  </div>
		    </div>

      </div>
   </div>
</section>

<!-- Footer section
================================================== -->
<footer>
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
				<p class="wow fadeInUp"  data-wow-delay="0.3s">Copyright © 2016 Your Company Name - Designed by Tooplate</p>
				<ul class="social-icon wow fadeInUp"  data-wow-delay="0.6s">
					<li><a href="#" class="fa fa-facebook"></a></li>
					<li><a href="#" class="fa fa-twitter"></a></li>
					<li><a href="#" class="fa fa-dribbble"></a></li>
					<li><a href="#" class="fa fa-behance"></a></li>
					<li><a href="#" class="fa fa-google-plus"></a></li>
				</ul>
			</div>
			
		</div>
	</div>
</footer>

<!-- Javascript 
================================================== -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>