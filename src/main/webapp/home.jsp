<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Home Page</title>
</head>
<style>
body, html {
    height: 100%;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

nav{
	width: 90%;
	position: absolute;
	top: 0;
	left: 0;
	padding: 20px 8%;
	display:flex;
	align-items: center;
	justify-content: space-between;
}
nav .logo{
	width: 80px;
}
nav ul li{
	list-style: none;
	display: inline-block;
	margin-left: 40px;
}

nav ul li a{
	text-decoration: none;
	color: #fff;
	font-size: 17px;
	
}
nav ul li a:hover{
	border: 1px solid #fff;
	background-color: #fff;
	border-radius: 40px;
	color: black;
	transition: 0.5s;
}
.video-container {
    position: relative;
    height: 100vh;
    overflow: hidden;
}

#background-video {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -1;
}

.content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    color: white;
}

h1 {
    font-size: 3em;
    margin: 0;
    transition: 0.5s;
}
h1:hover{
	-webkit-text-stroke: 1px #fff;
	color: transparent;
}

p {
    margin-left: 141px;
    margin-right: 156px;
    font-size: 1.5em;
}

.login-button {
	text-decoration: none;
	display: inline-block;
	color: #fff;
	font-size: 20px;
	border: 2px solid #fff;
	padding: 14px 70px;
	border-radius: 50px;
	margin-top: 20px;
	transition: 0.5s;
}

.login-button:hover {
    background-color: rgb(255, 255, 255);
    color: black;
   
}

.content img{
    width: 135px;
    height: 115px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 40px;
    padding: 19px 40px;
    animation: transitionIn 0.75s;
    border-radius: 42px;
    
}
section{
	position: static;
	transform: translate(0%, -5%);
    top: 50%;
    left: 50%;
    text-align: center;
    color:black;
}
section h2{
	font-size: 2rem;
    font-weight: bold;
        padding-top: 3%;
    
}
section p{
	font-size: 1rem;
}
footer section{	
    margin-left: 26px;
    margin-top: -381px;
    top: 50%;
    left: 50%;
    width: 190%;
    text-align: center;
    background-color: rgb(9 117 125);
    border: 1px solid rgb(9 117 125);
    border-radius: 12px;
    color:white;
    padding-top: 8%;
    transform: translate(-25%, 139%); 
    height:100; 
    
}
footer h2{
	font-size: 2rem;
    font-weight: bold;
    background-color: transparent;
    box-shadow: none;
    margin:0;
    
}
footer p{
	font-size: 1rem;
}
h3{
    margin-top: -67px;
}


</style>
<body>
<div class="campus">
		<nav>
			<img src = "logo-no-background.png" class="logo">
		<ul>
			<li><a href="home.jsp">HOME</a></li>
			<li><a href="#about-us">About Us</a></li>
            <li><a href="#contact-us">Contact Us</a></li>
		</ul>
		</nav>	
	</div>
    <div class="video-container">
        <video autoplay muted loop id="background-video">
            <source src="school_vid.mp4" type="video/mp4"></video>
        <div class="content">
        	<img src = "logo-color.png" alt = "e-school"/>
            <h1>Welcome to E-School.</h1>
            <p>Where education meets excellence.</p>
            <a href="login.jsp" class="login-button">Login</a>
        </div>
    </div>
    <section id="about-us">
        <h2>About Us</h2>
        <br>
        <p>Welcome to E-School, where education goes beyond the classroom and extends into a journey of exploration, discovery, and growth. Established with a commitment to fostering a love for learning, we believe in empowering students to reach their full potential academically, socially, and personally.</p>
        <br>
        <br>
        <br>
    </section>
    <script src="script.js"></script>
</body>
    <footer>
	<section id="contact-us">
	        <h3>Contact Us</h3>
	        <br>
	        <p>Address: Rajendra Nagar,Indore.</p>
	        <p>E-mail: e-school@gmail.com.</p>
	        <p>Phone: +91987654321, +91123456789.</p>
	        <br>
	        <br>
	        <br>
	    </section>
    </footer>
</html>
