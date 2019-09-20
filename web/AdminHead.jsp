<%-- 
    Document   : AdminHead
    Created on : 20 May, 2018, 11:13:26 AM
    Author     : B Shravya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.easydropdown.js"></script>
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>


        <style type="text/css">
<!--
.style1 {color: #000000}
-->
table td, th{
    text-align: center;
}
.header {
  padding: 10px 16px;
  background: #555;
  color: #f1f1f1;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 102px;
}
        </style>
    </head>
    <body>
        <%String sid=(String)session.getAttribute("id1");
        
        %>
        <div class="header" id="myHeader">
	<div class="head-bann">
		<div >
			<div class="head-nav">
				<span class="menu"> </span>
					<ul class="megamenu skyblue">
			<li><a class="color1" href="Admin.jsp">Home</a></li>
			<li class="grid"><a class="color1" href="#">University</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>University Operations</h4>
								<ul>
									<li><a href="UniversityView1.jsp">View</a></li>
                                                                        
                                                                        <li><a href="DeleteUniversity1.jsp">Delete</a></li>
                                                                        <li><a href="UniGenStatus.jsp">Gen Status</a></li>
								</ul>	
							</div>							
						</div>
    				</div>
				</li>
			<li><a class="color1" href="#">Professor</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Professor Operations</h4>
								<ul>
									<li><a href="ProView1.jsp">View</a></li>
                                                                        
                                                                        <li><a href="DeleteProfessor1.jsp">Delete</a></li>
                                                                        <li><a href="ProGenStatus.jsp">Gen Status</a></li>
								</ul>	
							</div>							
                                                </div></li>	
                                                
                                                <li><a class="color1" href="#">Lecturer</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Lecturer Operations</h4>
								<ul>
									<li><a href="LecView1.jsp">View</a></li>
                                                                        
                                                                        <li><a href="DeleteLecturer1.jsp">Delete</a></li>
                                                                        <li><a href="LecGenStatus.jsp">Gen Status</a></li>
								</ul>	
							</div>							
                                                </div></li>	
                                                
                                            <li><a class="color1" href="#">Student</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Student Operations</h4>
								<ul>
									<li><a href="StudentView1.jsp">View</a></li>
                                                                        
                                                                        
								</ul>	
							</div>							
						</div>	</li>	
				<li><a class="color5" href="#">Role requests</a>
				  <div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>View</h4>
								<ul>
									<li><a href="ViewRoleDel.jsp">Role Delegation</a></li>
                                                                        
								</ul>	
							</div>							
						</div>
				</li></li>
				
                                <li><a class="color8" href="#">Material</a>
                                <div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>OPERATIONS</h4>
								<ul>
                                                                    <li><a href="aview.jsp">View</a></li>
                                                                        
								</ul>	
							</div>							
						</div>
                                        </div>
                                </div>
			
                                </li>
                     
                                
                                
				
                                <li><a class="color8" href="logout1.jsp">logout</a></li>
                                <li style="float:right"><a class="color8" href="logout1.jsp"><%=sid%></a>
				</li>
			
		 </ul>
		  </div>
		</div>	
	</div>
                                </div>
         <script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script> 
                                
    </body>
</html>

