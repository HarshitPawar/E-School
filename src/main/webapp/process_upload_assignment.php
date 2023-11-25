<?php
// Database connection settings
$db_host = '127.0.0.1';
$db_name = 'record';
$db_user = 'root';
$db_password = '';
// Create a connection to the database
$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// Process attendance file upload
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Handle file upload, move the file to a directory
    $uploadDirectory = "E:/XAMPP/htdocs/assignments/"; // Adjust the directory path
    $uploadedFile = $uploadDirectory . basename($_FILES["assignmentFile"]["name"]);

    if (move_uploaded_file($_FILES["assignmentFile"]["tmp_name"], $uploadedFile)) {
        // File upload successful, update the database with the file path or other data
        $conn = new mysqli($db_host, $db_user, $db_password, $db_name);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Update the database with the file path or other relevant information
        $sql = "UPDATE saar_t SET Assignment = ? WHERE Student_name = ?";
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