<?php
session_start();

// Database connection
$host = 'localhost';
$port = '5433';
$database = 'election_commission_tamilnadu';
$user = 'postgres';
$password = 'postgres';

try {
    $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$database;user=$user;password=$password");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error: " . $e->getMessage());
}

// Check if user is logged in
if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit;
}

// Logout
if (isset($_POST['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit;
}

// Approve voter ID
if (isset($_POST['approve_voter_id'])) {
    // Code to approve voter ID
}

// Manage party
if (isset($_POST['manage_party'])) {
    // Code to manage party
}

// Manage candidates
if (isset($_POST['manage_candidates'])) {
    // Code to manage candidates
}

// Manage results
if (isset($_POST['manage_results'])) {
    // Code to manage results
}

// Manage officials
if (isset($_POST['manage_officials'])) {
    // Code to manage officials
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <!-- Include any CSS or JavaScript libraries here -->
</head>

<body>
    <h1>Welcome to the Admin Panel</h1>
    <h2>Actions</h2>
    <form method="post">
        <button type="submit" name="approve_voter_id">Approve Voter ID</button>
        <button type="submit" name="manage_party">Manage Party</button>
        <button type="submit" name="manage_candidates">Manage Candidates</button>
        <button type="submit" name="manage_results">Manage Results</button>
        <button type="submit" name="manage_officials">Manage Officials</button>
        <button type="submit" name="logout">Logout</button>
    </form>
</body>

</html>
