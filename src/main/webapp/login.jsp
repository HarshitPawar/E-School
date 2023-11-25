<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

</head>
<style>
.content img{
    width: 135px;
    height: 120px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 40px;
    padding: 19px 40px;
    animation: transitionIn 0.75s;
    border-radius: 42px;
    
}
body {
    position: relative;
    width: 720px;
    height: 500px;
    margin: 50px auto;
    padding: 45px 65px;
    font-family: Arial, sans-serif;
    text-align: center;
    animation: transitionIn 0.75s;
}

body::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url("class.jpg") no-repeat center center fixed;
    background-size: cover;
    filter: blur(3px); 
    z-index: -1;
}

.campus nav{
	width: 110%;
	position: absolute;
	top: -15px;
	left: 0;
	padding: 20px 8%;
	display:flex;
	align-items: center;
	justify-content: space-between;
}
nav img{
	width: 80px;
}

.campus nav ul li{
	list-style: none;
	display: inline-block;
	margin-left: 40px;
}

.campus nav ul li a{
	text-decoration: none;
	color: #fff;
	font-size: 17px;
	
}
.campus nav ul li a:hover{
	border: 1px solid #fff;
	background-color: #fff;
	border-radius: 45px;
	color: black;
	transition: 0.5s;
}
.login-container {
    width: 300px;
    margin: 0 auto;
    background-color: rgba(255, 255, 255, 0.789);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-container input {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid rgb(191, 191, 191);
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    border-radius: 6px;
}

.login-container button {
    width: 100%;
    padding: 10px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
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

@keyframes transitionIn{
    from {
        opacity: 0;
        transform: translateY(-10px);
    }

    to{
        opacity: 1;
        transform: translateY(0);
    }
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
		 <div class="content">
        	<img src = "logo-color.png" alt = "e-school"/>	
        	</div>
    <div class="login-container">
        <h2>Login as per your Role.</h2>
        <form action="login" method="post" id = "loginform">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="admin">Admin</option>
                <option value="teacher">Teacher</option>
                <option value="student">Student</option>
            </select><br><br> 

            <button type="submit">Login</button>
        </form>
    </div>
</body>
<footer>
	<section id="contact-us">
	        <h2>Contact Us</h2>
	        <br>
	        <p>This is the footer section with contact information.</p>
	        <br>
	        <br>
	        <br>
	    </section>
    </footer>
</html>
