<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vote Submission</title>
    <style>
        * {
            box-sizing: border-box;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        html { 
            background: url('https://thumbs.gfycat.com/BackImperfectHookersealion-max-1mb.gif') no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        body {
            font-family: Arial, sans-serif;
            
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }


        header {
            background-color: #041E42;
            color: white;
            text-align: center;
            padding: 20px;
            display: flex;
            justify-content: space-between; /* Align items to the start and end */
            align-items: center;
            width: 100%;
        }

        .plan {
            background-color: #ffffff;
            border: 1px solid #dddddd;
            
            padding: 20px;
            margin-bottom: 20px;
        }

        .pay-button {
            display: block;
            margin-bottom: 10px;
            padding: 35px;
            background-color: #2c3968;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 10px;
            cursor: pointer;
            text-align: center;
            font-weight: 1000;
        }

        .pay-button:hover {
            background-color:darkslateblue;
        }

        .error-message {
            color: red;
        }

        form {
            margin: 20px 0;
        }

        label, select, input {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 10px;
        }

        select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-color: white;
            border: 1px solid #dddddd;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
        }

        select:focus {
            outline: none;
            border-color: #041E42;
            box-shadow: 0 0 5px rgba(4, 30, 66, 0.5);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
        .small-button {
            margin-right: 10px; /* Adjust as needed */
        }
        h1 {
            flex-grow: 1; /* Let the h1 element grow to take available space */
            text-align: center; /* Align the text to the left within the h1 element */
        }

        .small-button {
            display: inline-block;
            padding: 8px 15px;
            background-color: #ddd;
            color: #333;
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
           
        }

        .small-button:hover {
            background-color: #ccc;
        }

        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            label, select, input {
                padding: 8px;
            }


        }

        @media (max-width: 480px) {
            header {
                font-size: 1.5em;
            }

            .plan {
                padding: 10px;
            }

  
            table, th, td {
                font-size: 0.9em;
            }
        }
        h1 {
            flex-grow: 1; /* Let the h1 element grow to take available space */
            text-align: center; /* Align the text to the left within the h1 element */
        }
    </style>
</head>
<body>
<header>
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
    </header>
<br>
    <h1>Vote Submission</h1>
<br>
    <div class="container">
    <div class="plan">
        <form method="GET" action="">
            <label for="voter_id">Voter ID:</label>
            <input type="number" name="voter_id" required><br><br>

            <label for="party">Select Party:</label>
            <select name="party" required>
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
            </select><br><br>

            <input class="pay-button" type="submit" value="Submit Vote">
        </form>


        <main>
            <?php
            $host = 'aws-0-ap-south-1.pooler.supabase.com';
            $port = '6543';
            $database = 'postgres';
            $user = 'postgres.egmwwfojqginumzzxagw';
            $password = 'kesavkumarj';

            try {
                // Connect to PostgreSQL
                $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$database;user=$user;password=$password");

                // Function to display vote summary
                function displayVoteSummary($pdo)
                {
                    $partyStmt = $pdo->prepare("SELECT PartyName, COALESCE(PollVotes.PollVotesCount, 0) AS PollVotesCount
                                                FROM Party
                                                LEFT JOIN PollVotes ON Party.PartyID = PollVotes.PartyID");
                    $partyStmt->execute();

                    echo "<h2>Vote Summary</h2>";
                    echo "<table border='1'>
                            <tr>
                                <th>Party Name</th>
                                <th>Votes Received</th>
                            </tr>";

                    while ($row = $partyStmt->fetch(PDO::FETCH_ASSOC)) {
                        $partyName = isset($row['partyname']) ? $row['partyname'] : 'N/A';
                        $pollVotesCount = isset($row['pollvotescount']) ? $row['pollvotescount'] : 0;
                        ?>
                        <tr>
                            <td><?= $partyName ?></td>
                            <td><?= $pollVotesCount ?></td>
                        </tr>    
                        <?php
                    }
                    echo "</table>";

                    // Debugging: Print the query and any error information
                    $errorInfo = $partyStmt->errorInfo();
                }

                // Get form data from $_GET
                $voter_id = isset($_GET['voter_id']) ? $_GET['voter_id'] : null;
                $party_id = isset($_GET['party']) ? $_GET['party'] : null;

                // Check if the voter ID exists in the voter_details table
                if ($voter_id !== null) {
                    $checkQuery = $pdo->prepare("SELECT COUNT(*) FROM voter_details WHERE voter_id = ?");
                    $checkQuery->execute([$voter_id]);
                    $voterExists = $checkQuery->fetchColumn();

                    if ($voterExists > 0) {
                        // Check if the voter has already voted
                        $checkStmt = $pdo->prepare("SELECT COUNT(*) FROM poll WHERE voter_id = ?");
                        $checkStmt->execute([$voter_id]);
                        $hasVoted = $checkStmt->fetchColumn();

                        if ($hasVoted === 0) {
                            // Insert vote into poll table
                            $stmt = $pdo->prepare("INSERT INTO poll (voter_id, PartyID) VALUES (?, ?)");
                            $stmt->execute([$voter_id, $party_id]);

                            // Update PollVotesCount in PollVotes table
                            $updateStmt = $pdo->prepare("UPDATE PollVotes SET PollVotesCount = PollVotesCount + 1 WHERE PartyID = ?");
                            $updateStmt->execute([$party_id]);

                            // Display vote summary
                            displayVoteSummary($pdo);
                        } else {
                            echo "<p class='error-message'>Error: Voter has already voted.</p>";
                        }
                    } else {
                        echo "<p class='error-message'>Error: Voter ID not found.</p>";
                    }
                } else {
                    echo "<p class='error-message'>Error: Voter ID is null.</p>";
                }
            } catch (PDOException $e) {
                echo "<p class='error-message'>Error: " . $e->getMessage() . "</p>";
            }
            ?>

        </main>
    </div>
</div>
</body>
</html>
