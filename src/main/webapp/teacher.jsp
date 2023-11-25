<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard - E-School</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
    
</head>
<style>
body {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    margin: 0;
    padding: 107px 70px;
    font-family: 'Poppins', sans-serif;
    text-align: center;
    animation: transitionIn 0.75s;
}
.navbar {
    position: absolute;
    border-radius: 20px;
    width: 19%;
    left: 33px;
    top: 339px;
    height: 100%;
    background-color: #ffffffb8;
    box-shadow: 0 0 16px #545252;
    padding: 20px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-around;
}

.navbar button {
    border-radius: 25px;
    width: 90%;
    background-color: #2980b9;
    color: #fff;
    border: none;
    padding: 12px 15px;
    margin: 10px 0;
    cursor: pointer;
    border-radius: 7px;
    transition: background-color 0.3s;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}

.navbar button:hover {
    background-color: #0f537e;
}

.content {
    margin-left: 243px; 
    padding: 20px;
}

body::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url("blackboard.jpg") no-repeat center center fixed;
    background-size: cover;
    filter: blur(3px);
    z-index: -1;
    animation: transitionIn 0.75s; }
   
.content img{
    margin-top: 98px;
    width: 135px;
    height: 120px;
    display: block;
    margin-left: -130px;
    margin-right: 32px;
    margin-bottom: 4px;
    padding: 19px 40px;
    animation: transitionIn 0.75s;
    border-radius: 42px;
    
}
.campus nav{
	width: 71%;
	position: absolute;
	top: 27px;
    left: 186px;
	padding: 20px 8%;
	display:flex;
	align-items: center;
	justify-content: space-between;
	transition: 0.5s;
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


form{
    margin-bottom: 31px;
    transition: 0.5s;
}

#filterstudent {
    margin: 5px auto;
    margin-left: 43%; 
    animation: transitionIn 0.75s;
}
#studentData{
    margin-left: -71px;
    margin-right: 20px; 
    width: 160%; 
    max-width: 600px;
    padding: 20px;
    font-family: 'Poppins', sans-serif;
    background-color: rgba(85, 85, 85, 0.5); 
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(255, 255, 255, 0.5); 
    box-sizing: border-box;
    color: white;
    text-align: left;
    animation: transitionIn 0.75s;
}
#up_attendance{
    margin: 50px auto; 
    width: 80%; 
    max-width: 400px; 
    padding: 20px;
    font-family: 'Poppins', sans-serif;
    background-color: rgba(85, 85, 85, 0.5); 
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(255, 255, 255, 0.5); 
    box-sizing: border-box;
    color: white;
    text-align: center;
    animation: transitionIn 0.75s;
}
#up_assignment{
    margin: 50px auto;
    width: 80%; 
    max-width: 400px; 
    padding: 20px;
    font-family: 'Poppins', sans-serif;
    background-color: rgba(85, 85, 85, 0.5); 
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(255, 255, 255, 0.5); 
    box-sizing: border-box;
    color: white;
    text-align: center;
    animation: transitionIn 0.75s;
}
#up_result{
    margin: 50px auto;
    width: 80%; 
    max-width: 400px; 
    padding: 20px;
    font-family: 'Poppins', sans-serif;
    background-color: rgba(85, 85, 85, 0.5);
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(255, 255, 255, 0.5); \
    box-sizing: border-box;
    color: white;
    text-align: center;
    animation: transitionIn 0.75s;
}



body, html {
    margin: 0;
    padding: 0;
}

h1 {
	width:30%;
    margin-left: 63%;
    margin-right: 56%;
    text-align: center;
    border: #ffb300;
    border-radius: 5px;
    padding-bottom: 10px;
    padding-top: 8x;

}

h2{
    text-align: center;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;  
    font-size: 20px;
    margin-bottom: 26px;
      
}
label{
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;  
    color: #fff;
    padding-left: 4px;


}
.container {
    text-align: center; 
    display: flex; 
    flex-direction: column; 
    align-items: center; 
    justify-content: center;
    height: 48vh;
}


table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: rgb(74, 73, 73); 
    animation: transitionIn 0.75s;
    margin-bottom: 48px;

}

th, td {
    padding: 10px;
    text-align: center;
}

th {
    background-color: #333; 
    color: #fff;
}
input[type="text"]{
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 10px;
    text-align: center;
    width: 243px;
}

input[type="submit"] {
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    background-color: #451abc;
    color: #fff;
    width: 150px;
    cursor: pointer;
    margin-left: 57px;
   
}

input[type="text"] {
    margin-left: -2px;
    
    display: inline-block;
}

button {
    width: 35%;
    display: inline-block;
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    background-color: #333;
    color: #fff;
    cursor: pointer;
}

button:hover {
    background-color: #0b0b0b;
}

input[type="submit"]:hover {
    background-color: #250e70; 
}
input[type="file"]{
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    width: 60%;
    display: inline-block;
    padding-left: 113px;
}
footer section{	
    margin-top: auto;
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
animation: transitionIn 0.75s;    
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
<div class="navbar">
    <button id="studentsBtn">List of Students</button>
    <button id="attendanceBtn">Upload Attendance</button>
    <button id="assignmentBtn">Upload Assignment</button>
    <button id="resultBtn">Upload Result</button>
</div>
<div class="campus">
		<nav>
			<img src = "logo-no-background.png" class="logo">
		<ul>
			<li><a href="home.jsp">HOME</a></li>
			   <li><a href="login.jsp">Logout</a></li>
            <li><a href="#contact-us">Contact Us</a></li>
		</ul>
		</nav>	
</div>
<div class="content">
  	<img src = "logo-color.png" alt = "e-school"/>	
</div>
<h1>Welcome, Teacher</h1>
    <div class="container"id="filterstudent" style="display: none;">
	    <form action="filter_student" method="POST">
	        <input type="text" id="studentNameFilter" name="studentNameFilter" placeholder="Filter by Student Name">
	        <input type="submit" value="Submit">
	        </form>
		    <div id="studentData"></div> 
    </div>
    
    <div class="content" id="up_attendance" style="display: none;">
	        <form action="upload_attendance" method="POST" enctype="multipart/form-data">
	        <label for="attendanceFile">Select Attendance File:</label>
	        <input type="file" id="attendanceFile" name="attendanceFile" required><br><br>
	
	        <input type="submit" value="Upload Attendance">
    </form>
    </div>
    
    <div class="content" id="up_assignment" style="display: none;">
	    <form action="upload_assignment" method="POST" enctype="multipart/form-data">
	        <label for="assignmentFile">Select Assignment File:</label>
	        <input type="file" id="assignmentFile" name="assignmentFile" required><br><br>
	
	        <input type="submit" value="Upload Assignment">
	    </form>
    </div>
    
    <div class="content" id="up_result" style="display: none;">
	    <form action="upload_result" method="POST" enctype="multipart/form-data">
	        <label for="resultFile">Select Result File:</label>
	        <input type="file" id="resultFile" name="resultFile" required><br><br>
	
	        <input type="submit" value="Upload Result">
	    </form>
    </div>
    
    
    
</body>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        //hide all forms at first
        function hideAllForms() {
            document.querySelectorAll('.container').forEach(function (form) {
                form.style.display = 'none';
            });
        }

        // submit button event listener
        var form = document.querySelector("form");
        form.addEventListener("submit", function (event) {
            event.preventDefault(); // Prevent the default form submission

            // reads roll number input field
            var name = document.getElementById("studentNameFilter").value;

            // Send an AJAX request to your filter student servlet
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "filter_student", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    
                    document.getElementById("studentData").innerHTML = xhr.responseText;
                }
            };
            xhr.send("studentNameFilter=" + name);
        });

        var upload_att = "<%= request.getAttribute("upload_attendance")%>";
        var upload_assign = "<%= request.getAttribute("upload_assignment")%>";
        var upload_res = "<%= request.getAttribute("upload_result")%>";

        if (upload_att === "success") {
            swal("Success!", "Attendance uploaded successfully.", "success");
        } else if (upload_att === "failed") {
            swal("Error!", "Error uploading Attendance.", "error");
        }
        if (upload_assign === "success") {
            swal("Success!", "Assignment uploaded successfully.", "success");
        } else if (upload_assign === "failed") {
            swal("Error!", "Error uploading Assignment.", "error");
        }
        if (upload_res === "success") {
            swal("Success!", "Result uploaded successfully.", "success");
        } else if (upload_res === "failed") {
            swal("Error!", "Error uploading Result.", "error");
        }

        //hiding all forms
        function hideAllForms() {
            document.getElementById('filterstudent').style.display = 'none';
            document.getElementById('up_attendance').style.display = 'none';
            document.getElementById('up_assignment').style.display = 'none';
            document.getElementById('up_result').style.display = 'none';
        }

   

        //event listeners to navbar buttons
        document.getElementById('studentsBtn').addEventListener('click', function () {
            hideAllForms();
            document.getElementById('filterstudent').style.display = 'block';
        });

        document.getElementById('attendanceBtn').addEventListener('click', function () {
            hideAllForms();
            document.getElementById('up_attendance').style.display = 'block';
        });

        document.getElementById('assignmentBtn').addEventListener('click', function () {
            hideAllForms();
            document.getElementById('up_assignment').style.display = 'block';
        });

        document.getElementById('resultBtn').addEventListener('click', function () {
            hideAllForms();
            document.getElementById('up_result').style.display = 'block';
        });
    });

    </script>
    <footer>
	<section id="contact-us">
	        <h3>Contact Us</h3>
	        <br>
	        <p>This is the footer section with contact information.</p>
	        <br>
	        <br>
	        <br>
	    </section>
    </footer>
</html>
