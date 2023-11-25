<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - E-School</title>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
    
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var statusValue = "<%= request.getAttribute("status")%>";
            var enableStatusValue = "<%= request.getAttribute("enable_status")%>";
            var uploadStatus = "<%= request.getAttribute("upload_status")%>";

            if (statusValue === "success") {
                swal("Success!", "Data inserted successfully.", "success");
            } else if (statusValue === "failed") {
                swal("Error!", "Error inserting data.", "error");
            }

            if (enableStatusValue === "success") {
                swal("Success!", "Status updated successfully.", "success");
            } else if (enableStatusValue === "failed") {
                swal("Error!", "Error updating status.", "error");
            }
            
            if (uploadStatus === "success") {
                swal("Success!", "Timetable uploaded and scheduled successfully.", "success");
            } else if (uploadStatus === "failed") {
                swal("Error!", "Error uploading timetable or scheduling.", "error");
            }
            function toggleForm(formId) {
                // Hiding all the forms when a single form is selected.
                document.querySelectorAll('.container').forEach(function(form) {
                    form.style.display = 'none';
                });

              
                document.getElementById(formId).style.display = 'block';
            }

            // Add event listeners to navbar buttons
            document.getElementById('detailsBtn').addEventListener('click', function() {
                toggleForm('detailsForm');
            });

            document.getElementById('enableDisableBtn').addEventListener('click', function() {
                toggleForm('enableDisableForm');
            });

            document.getElementById('uploadBtn').addEventListener('click', function() {
                toggleForm('uploadForm');
            });
        });
    </script>
</head>
<style>
body {
    position: relative;
    min-height: 100vh;
    width: 720px;
    height: 500px;
    margin: 50px auto;
    padding: 107px 70px;
    font-family: 'Poppins', sans-serif;
    text-align: center;
    animation: transitionIn 0.75s;
}

   .navbar {
        margin-top: 58px;
        margin-left: -242px;
        width: 200px;
        background-color: #ffffffb8;
        box-shadow: 0 0 16px #545252;
        padding: 20px;
        border-radius: 20px;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
        height: 100vh;
    }

    .navbar button {
        background-color: #2980b9;
        border-radius: 7px;
        color: #fff;
        border: none;
        padding: 10px 15px;
        margin: 10px 0;
        cursor: pointer;
        transition: background-color 0.3s;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);        
    }

    .navbar button:hover {
        background-color: #0f537e;
    }

    .container {
        display: none;
        flex: 1;
        padding: 20px;
        box-sizing: border-box;
        animation: transitionIn 0.75s;
    }

body::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url("papers.jpg") no-repeat center center fixed;
    background-size: cover;
    filter: blur(3px); 
    z-index: -1;
    animation: transitionIn 0.75s;
}
.content img{
    margin-top: -684px;
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
.campus img{
	width: 80px;
	margin-left: -184px;
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
.header {
    background-color: rgba(181, 174, 174, 0.999);
    padding: 40px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}

h1 {
    font-size: 2em;
    margin: 0;
    transition: 0.5s;
}
h1:hover{
	-webkit-text-stroke: 1px #fff;
	color: transparent;
}

h2 {
    background-color: #4b19d4e6;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    font-family: Arial, Helvetica, sans-serif;
    font-size: 21px;
    margin-bottom: 7%;
    border-radius: 25px;
    margin-bottom: 20px;
    margin-top: 20px;
    color: rgb(255, 255, 255);
    
}

form {
    margin-bottom: -53%;
    background-color: rgb(255, 255, 255);
    padding: 20px;
    border-radius: 15px;
    margin-top: 20px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    width: 40%;
    margin-left: auto;
    margin-right: auto;
}

label {
    display: block;
    margin-top: 10px;
    font-size: 15px;
}

input[type="text"],
select,
input [type="password"],
input[type="date"],
input[type="file"] {
    width: 82%;
    padding: 10px 18px;
    margin: 5px ;
    border: 1px solid rgb(191, 191, 191);
    border-radius: 5px;
}

input[type="text"],
select,
input [type="password"],
input[type="date"],
input[type="file"]:hover {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

input[type="submit"] {
    background-color: #266fbc;
    transition-duration: 0.4s;
    color: #fff;
    padding: 15px 25px;
    border: none;
    border-radius: 8px;
    font-size: 12px;
    cursor: pointer;

}

input[type="submit"]:hover {
    background-color: #001e3e;
}
footer section{	
    margin-top: 55%;
    transform: translate(0%, 13%);
    top: 50%;
    left: 50%;
    text-align: center;
    background-color: rgb(9 117 125);
    border: 1px solid rgb(9 117 125);
    border-radius: 12px;
    border-radius: 8px;
    color:white;
    padding-top: 1%;
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
<div class="navbar">
        <button id="detailsBtn">Enter Details</button>
        <button id="enableDisableBtn">Enable/Disable User Login</button>
        <button id="uploadBtn">Upload and Schedule Timetable</button>
    </div>
<div class="campus">
		<nav>
			<img src = "logo-no-background.png" class="logo">
		<ul>
			<li><a href="home.jsp">HOME</a></li>
			   <li><a href="#about-us">Logout</a></li>
            <li><a href="#contact-us">Contact Us</a></li>
		</ul>
		</nav>	
	</div>
		 <div class="content">
        	<img src = "logo-color.png" alt = "e-school"/>	
          	</div>
          	<h1>Welcome, Admin</h1>
    <div class="container"id="detailsForm">
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <h2>Enter Details of Student or Teacher:</h2>
        <form action="admin" method="POST">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>
    
            <label for="password">Password:</label>
            <input type="password" id="passwrd" name="pword" required><b><span class="formerror"></span></b><br><br>

            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="student">Student</option>
                <option value="teacher">Teacher</option>
            </select><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
        
    <div class="container" id="enableDisableForm"> 
        <h2>Enable/Disable User Login:</h2>
        <form action="enable_disable" method="POST">        
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label id="status">Status:</label>
            <select id="status" name="status" required>
                <option value="Enable">Enable</option>
                <option value="Disable">Disable</option>
            </select><br><br>

            <input type="submit" value="Update">
        </form>
    </div>

    <div class="container" id="uploadForm">
        <h2>Upload and Schedule Timetable:</h2>
        <form action="upload_timetable" method="POST" enctype="multipart/form-data">
            <label for="timetable">Select Timetable File:</label>
            <input type="file" id="timetable" name="timetable" required><br><br>

            <label for="schedule_date">Schedule Date:</label>
            <input type="date" id="schedule_date" name="schedule_date" required><br><br>

            <input type="submit" value="Upload and Schedule">
        </form>
    </div>
    
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
