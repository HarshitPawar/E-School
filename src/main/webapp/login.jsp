<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="login1.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

</head>
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