<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard - E-School</title>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
    	 //submit button event listener
        var form = document.querySelector("form");
        form.addEventListener("submit", function (event) {
            event.preventDefault(); // Preventing the default form submission

            // Reading roll number input field
            var rollNumber = document.getElementById("S_roll").value;

            // Send an AJAX requsest to profile servlet
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "profile", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // Update the output container with the response from the servlet
                    document.getElementById("output-container").innerHTML = xhr.responseText;
                }
            };
            xhr.send("S_roll=" + rollNumber);
        });
        //vertical  navbar buttons event listener
        var profileButton = document.getElementById("profiledetails");
        var timetableButton = document.getElementById("viewtimetable");
        var assignmentButton = document.getElementById("viewassignment");
        var resultButton = document.getElementById("viewresult");

        var detailsForm = document.getElementById("detailsForm");
        var timetableContainer = document.getElementById("timetablecont");
        var assignmentContainer = document.getElementById("assignmentcont");
        var resultContainer = document.getElementById("resultcont");

        profileButton.addEventListener("click", function () {
            detailsForm.style.display = "block";
            timetableContainer.style.display = "none";
            assignmentContainer.style.display = "none";
            resultContainer.style.display = "none";
        });

        timetableButton.addEventListener("click", function () {
            detailsForm.style.display = "none";
            timetableContainer.style.display = "block";
            assignmentContainer.style.display = "none";
            resultContainer.style.display = "none";
        });

        assignmentButton.addEventListener("click", function () {
            detailsForm.style.display = "none";
            timetableContainer.style.display = "none";
            assignmentContainer.style.display = "block";
            resultContainer.style.display = "none";
        });

        resultButton.addEventListener("click", function () {
            detailsForm.style.display = "none";
            timetableContainer.style.display = "none";
            assignmentContainer.style.display = "none";
            resultContainer.style.display = "block";
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
        margin-top: 111px;
        margin-left: -242px;
        width: 200px;
        background-color: #ffffffb8;
        padding: 20px;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
        height: 100vh;
    }

    .navbar button {
        background-color: #3498db;
        color: #fff;
        border: none;
        padding: 10px 15px;
        margin: 10px 0;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        
    }

    .navbar button:hover {
        background-color: #2980b9;
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
    background: url("study.jpg") no-repeat center center fixed;
    background-size: cover;
    filter: blur(3px); 
    z-index: -1;
    animation: transitionIn 0.75s;
}
.content img{
    margin-top: -762px;
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

#detailsForm{
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
}

h1 {
	font-family: 'Poppins', sans-serif;
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
label {
    display: block;
    margin-top: 10px;
    font-size: 20px;
    font-family: Arial, Helvetica, sans-serif;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    color: rgb(0, 0, 0);

}
input[type="text"]{
    width: 100px;
    padding: 10px 18px;
    margin: 5px ;
    border: 1px solid rgb(191, 191, 191);
    border-radius: 5px;
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
    background-color: #0e3f72;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
}
.error-msg {
    color: red;
    transition-duration: 0.4s;
    animation: transitionIn 0.75s;
}
a {
    color: #141637; 
    font-weight: bold;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 13px;
    animation: transitionIn 0.75s;

}
ul {
    list-style: none; 
    padding: 0; 
    animation: transitionIn 0.75s;

}

ul li {
    margin-bottom: 10px; 
    animation: transitionIn 0.75s;

}
p {
    text-align: left;
    color:#fff;
    padding: 5px; 
    animation: transitionIn 0.75s;
    text-align: center;

}

iframe {
    margin-bottom: -75%;
    border: none;
    border-radius: 5px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}

.container {
    padding: 20px;
}

footer section{	
    margin-top: -3%;
    top: 50%;
    left: 50%;
    width: 157%;
    text-align: center;
    background-color: rgb(9 117 125);
    border: 1px solid rgb(9 117 125);
    border-radius: 12px;
    color:white;
    padding-top: 0%;
    transform: translate(-18%, 215%); 
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
<div class="navbar">
        <button id="profiledetails">My Profile Details</button>
        <button id="viewtimetable">Timetable</button>
        <button id="viewassignment">Assignment</button>
        <button id="viewresult">Test Result</button>
        
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

    <h1>Welcome, Student</h1>
<div class="container"id="detailsForm" style="display: none;">
    <form action = "profile" method="POST">
        <label for="S_roll">Enter Your Roll Number: </label>
        <input type="text" name="S_roll" id="S_roll">
        <input type="submit" value="Submit">
    </form>
    <div id="output-container"></div>
</div>
<div class="container" id="timetablecont" style="display: none;">   
    <h2>Timetable:</h2>
    <iframe src="timetables/Harshit_CV.pdf" width="100%" height="500px"></iframe> 
    <br>
</div>
<div class="container" id="assignmentcont" style="display: none;">   
     <h2>Assignment:</h2>
    <iframe src="assignments/Assignment1.pdf" width="100%" height="500px"></iframe> 
    <br>
</div>
<div class="container" id="resultcont" style="display: none;">   
     <h2>Test Result:</h2>
    <iframe src="results/Harshit_CV.pdf" width="100%" height="500px"></iframe> 
    <br>
</div>
</body>
   <footer>
	<section id="contact-us">
	        <h3>Contact Us</h3>
	        <br>
            <p>Address: Rajendra Nagar,Indore.</p>
	        <p>E-mail: e-school@gmail.com.</p>
	        <p>Phone: +91987654321, +91123456789.</p>	        <br>
	        <br>
	        <br>
	    </section>
    </footer>
</html>
