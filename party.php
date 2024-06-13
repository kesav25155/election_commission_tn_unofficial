<?php
$host = 'aws-0-ap-south-1.pooler.supabase.com';
$port = '6543';
$database = 'postgres';
$user = 'postgres.egmwwfojqginumzzxagw';
$password = 'kesavkumarj';

try {
    $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$database;user=$user;password=$password");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error: " . $e->getMessage());
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['candidateId'])) {
    $candidateId = $_GET['candidateId'];

    $query = "
        SELECT candidates.*, 
               Party.PartyName, 
               election_results.constituency_id,
               constituencies.assembly_constituency AS constituency_name
        FROM candidates
        JOIN Party ON candidates.party_id = Party.PartyID
        LEFT JOIN election_results ON candidates.candidate_id = election_results.winner_id
                                    OR candidates.candidate_id = election_results.runner_up_id
        LEFT JOIN constituencies ON election_results.constituency_id = constituencies.constituency_id
        WHERE candidates.candidate_id = :candidateId
    ";

    try {
        $statement = $pdo->prepare($query);
        $statement->bindParam(':candidateId', $candidateId, PDO::PARAM_INT);
        $statement->execute();

        $candidateDetails = $statement->fetch(PDO::FETCH_ASSOC);

        if ($candidateDetails) {
            echo json_encode($candidateDetails);
        } else {
            echo json_encode(['error' => 'Candidate details not found']);
        }
    } catch (PDOException $e) {
        echo json_encode(['error' => 'Error executing query: ' . $e->getMessage()]);
    }

    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['searchTerm'])) {
    $searchTerm = '%' . $_GET['searchTerm'] . '%';

    $query = "SELECT * FROM candidates WHERE candidate_name ILIKE :searchTerm";
    $statement = $pdo->prepare($query);
    $statement->bindParam(':searchTerm', $searchTerm, PDO::PARAM_STR);
    
    try {
        $statement->execute();
        $results = $statement->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($results);
    } catch (PDOException $e) {
        echo json_encode(['error' => 'Error executing query: ' . $e->getMessage()]);
    }

    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Search</title>
    <style>
        /* Reset default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: url('https://thumbs.gfycat.com/BackImperfectHookersealion-max-1mb.gif') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        header {
            background-color: #041E42;
            color: white;
            text-align: center;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        h1 {
            flex-grow: 1;
            text-align: center;
        }

        .small-button {
            display: inline-block;
            padding: 8px 15px;
            background-color: #ddd;
            color: #333;
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
            text-decoration: none;
        }

        .small-button:hover {
            background-color: #ccc;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .plan {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .pay-button {
            display: inline-block;
            background-color:#041E42;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .pay-button:hover {
            background-color:darkslateblue;
        }

        .error-message {
            color: red;
        }

        /* Candidate search form */
        #searchForm {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        #searchTerm {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            max-width: 400px;
            margin-right: 10px;
        }

        /* Candidate search results */
        #searchResults {
            list-style: none;
            padding: 0;
            margin-bottom: 20px;
        }

        #searchResults li {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 5px;
        }

        #searchResults li:hover {
            background-color: #f0f0f0;
        }

        /* Candidate details */
        #candidateDetails ul {
            list-style: none;
            padding: 0;
        }

        #candidateDetails ul li {
            margin-bottom: 5px;
        }


        /* Responsive Styles */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .plan {
                padding: 15px;
            }

            .pay-button {
                font-size: 14px;
            }
        }
        /* Custom dropdown box styling */
        .select-wrapper {
            position: relative;
            width: 100%;
            max-width: 400px;
        }

        .select-wrapper select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 12px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            color: #333;
        }

        /* Custom arrow icon */
        .select-wrapper::after {
            content: '\25BC';
            font-size: 14px;
            color: #666;
            position: absolute;
            top: 50%;
            right: 12px;
            transform: translateY(-50%);
            pointer-events: none;
        }

        /* Styling when dropdown box is open */
        .select-wrapper select:focus {
            outline: none;
            border-color: #999;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        /* Style for dropdown options */
        .select-wrapper select option {
            background-color: #fff;
            color: #333;
            font-size: 16px;
        }

        /* Party details styling */
        .party-details {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .party-details h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .party-details ul {
            list-style: none;
            padding: 0;
        }

        .party-details li {
            margin-bottom: 10px;
        }

        .party-details li strong {
            font-weight: bold;
        }

        .party-description {
            color: #666;
            font-style: italic;
        }


    </style>
</head>
<body>

    <header>
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
    </header>
    <div class="container">
        <div class="plan">
            <h1>Party Search</h1>
            <br>
            <form method="GET" action="">
                <label for="party">Select Party:</label>
                <div class="select-wrapper">
                    <select name="party" required>
                        <option value="" selected disabled>Select a Party</option>
                        <option value="1">AIDMK</option>
                        <option value="2">DMK</option>
                        <option value="3">BJP</option>
                        <option value="4">Congress</option>
                        <option value="5">PMK</option>
                        <option value="6">DMDK</option>
                        <option value="7">MDMK</option>
                        <option value="8">VCK</option>
                        <option value="9">AMMK</option>
                        <option value="10">NTK</option>
                        <option value="11">MMK</option>
                    </select>
                </div>
                <br><br>
                <input class="pay-button" type="submit" value="Search">
            </form>
        </div>
    </div>


<div class="container">
    <div class="plan">
    <?php
    // Database connection parameters
    $host = 'aws-0-ap-south-1.pooler.supabase.com';
    $port = '6543';
    $dbname = 'postgres';
    $user = 'postgres.egmwwfojqginumzzxagw';
    $password = 'kesavkumarj';

    // Attempt to connect to the database
    try {
        $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password");
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
        exit();
    }

    // Handle form submission
    if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET["party"])) {
        // Check if a party is selected
        if (isset($_GET["party"])) {
            // Get the selected party ID from the form
            $selectedPartyID = $_GET["party"];

            // Perform a query to select party information based on the selected party ID
            $query = "SELECT * FROM Party WHERE PartyID = :partyID";
            $statement = $conn->prepare($query);

            // Bind parameters
            $statement->bindParam(':partyID', $selectedPartyID);

            // Execute the statement
            if ($statement->execute()) {
                // Fetch the row
                $row = $statement->fetch(PDO::FETCH_ASSOC);
                if ($row) {
                    // Display the results
                    echo "<div class='party-details'>";
                    echo "<h2>Party Information:</h2>";
                    echo "<ul>";
                    echo "<li><strong>Party Name:</strong> " . $row['partyname'] . "</li>";
                    echo "<li><strong>Leader:</strong> " . $row['leaderfirstname'] . " " . $row['leaderlastname'] . "</li>";
                    echo "<li><strong>Founded Year:</strong> " . $row['foundedyear'] . "</li>";
                    echo "<li><strong>Symbol:</strong> " . $row['symbol'] . "</li>";
                    echo "<li><strong>Headquarters:</strong> " . $row['headquarters'] . "</li>";
                    echo "<li><strong>Ideology:</strong> " . $row['ideology'] . "</li>";
                    echo "<li class='party-description'><strong>Description:</strong> " . $row['description'] . "</li>";
                    echo "</ul>";
                    echo "</div>";
                } else {
                    echo "No party found with the given PartyID.";
                }
            } else {
                echo "Error in query: " . $statement->errorInfo()[2];
            }
        } else {
            echo "<p>Select a party from the search results to view details.</p>";
        }
    } else {
        echo "<p>Select a party from the search results to view details.</p>";
    }

    // Close the database connection
    $conn = null;
    ?>
    </div>

    <?php
    // Close the database connection
    $conn = null;
    ?>
</div>

</body>
</html>
