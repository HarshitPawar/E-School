<?php
// Database connection
$db_host = '127.0.0.1';
$db_name = 'record';
$db_user = 'root';
$db_password = '';

$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $uploadDirectory = "E:/XAMPP/htdocs/results/"; // path through which my documents are uploaded in my local server. 
    $uploadedFile = $uploadDirectory . basename($_FILES["resultFile"]["name"]);

    if (move_uploaded_file($_FILES["resultFile"]["tmp_name"], $uploadedFile)) {
        // File will get uploaded
        $conn = new mysqli($db_host, $db_user, $db_password, $db_name);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "UPDATE saar_t SET Result = ? WHERE Student_name = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ss", $uploadedFile, $studentName);
        $stmt->execute();
        $stmt->close();
        $conn->close();

        echo "Attendance uploaded successfully.";
    } else {
        echo "Error uploading attendance file.";
    }
}
?>