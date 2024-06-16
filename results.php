<?php
// Initialize $results as an empty array
$results = [];

// Replace these values with your actual database credentials
$host = 'aws-0-ap-south-1.pooler.supabase.com';
$port = '6543';
$dbname = 'postgres';
$user = 'postgres.egmwwfojqginumzzxagw';
$password = 'kesavkumarj';

// Initialize variables to store selected constituency
$selectedConstituency = isset($_GET['assemblyConstituency']) ? $_GET['assemblyConstituency'] : '';

try {
    // Connect to PostgreSQL
    $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if (!empty($selectedConstituency)) {
        // Build the SQL query based on selected constituency
        $sql = "SELECT er.*, c.assembly_constituency 
                FROM election_results er
                LEFT JOIN constituencies c ON er.constituency_id = c.constituency_id
                WHERE c.assembly_constituency = :constituency";

        // Prepare and execute the SQL query
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':constituency', $selectedConstituency);
        $stmt->execute();

        // Fetch data from the election_results table
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
} catch (PDOException $e) {
    // Handle database connection errors
    echo "Error: " . $e->getMessage();
    die();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Results</title>

</head>
<style>
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
                padding: 1em;
            }

            .container {
                max-width: 800px;
                margin: 0 auto;
                padding: 2em;
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
                background-color: cornflowerblue;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                margin-top: 10px;
                transition: background-color 0.3s;
            }

            .pay-button:hover {
                background-color: midnightblue;
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

            header {
                background-color: #041E42;
                color: white;
                text-align: center;
                padding: 20px;
                display: flex;
                justify-content: space-between; /* Align items to the start and end */
                align-items: center;
            }



            h1 {
                flex-grow: 1; /* Let the h1 element grow to take available space */
                text-align: center; /* Align the text to the left within the h1 element */
            }

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
                color: #333;
            }
            header {
                background-color: #041E42;
                color: white;
                text-align: center;
                padding: 1em;
            }

            main {
                max-width: 1400px;
                margin: 20px auto;
                padding: 20px;
                background-color: white;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }

            section {
                background-color: #f9f9f9;
                padding: 20px;
                margin-bottom: 20px;
                border-radius: 8px;
            }

            label {
                display: block;
                margin-bottom: 8px;
                color: #555;
            }

            input,
            select,
            textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 16px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            input[type="date"] {
                padding: 10px 12px;
            }

            .flex-container {
                display: flex;
                justify-content: space-between;
                margin-bottom: 20px;
            }

            .flex-container>div {
                flex: 1;
                margin-right: 10px;
            }

            /* Container for the table */
            .table-container {
                overflow-x: auto;
                margin-top: 20px;
                max-width: 100%;
            }

            /* Table adjustments for responsiveness */
            table {
                width: 100%;
                border-collapse: collapse;
                table-layout: fixed;
            }

            th,
            td {
                border: 1px solid #ddd;
                padding: 8px;
                word-wrap: break-word;
                white-space: normal;
            }

            th {
                background-color: #041E42;
                color: white;
            }

            .button {
                display: block;
                margin-bottom: 10px;
                padding: 10px;
                background-color: #2c3968;
                color: white;
                text-decoration: none;
                font-weight: bold;
                border-radius: 4px;
                cursor: pointer;
                text-align: center;
            }

            .button:hover {
                background-color: #5D76A9;
            }

            #bottom-div {
                background: #041E42;
                padding: 20px;
                color: white;
                text-align: center;
                width: calc(100% - 40px);
            }

            .small-button {
                margin-right: 10px; /* Adjust as needed */
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

            select {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                font-size: 16px;
                background-color: white;
            }

            .table-container {
        overflow-x: auto;
        margin-top: 20px;
        white-space: normal;
    }

    .table-scroll {
        overflow-x: auto;
        white-space: normal;
    }

    /* Adjust the width as needed */
    .table-scroll table {
        width: 100%; /* Ensures table takes full width */
        min-width: 600px; /* Minimum width of the table */
        white-space: nowrap; /* Prevents text wrapping */
    }


    /* Responsive adjustments for screens smaller than 768px */
    @media only screen and (max-width: 768px) {
        .table-container {
            overflow-x: auto;
        }

        table {
            width: auto;
            min-width: 800px; /* Adjust as needed */
        }

        th,
        td {
            padding: 8px; /* Add padding to table cells */
            font-size: 12px; /* Reduce font size to fit content */
            white-space: normal; /* Allow long text to wrap */
        }

        .table-scroll {
            overflow-x: auto;
            white-space: normal;
        }
    }



            .container {
                    padding: 20px;
                }

                .plan {
                    padding: 15px;
                }

                .pay-button {
                    font-size: 14px;
                }
        </style>
<body>
<header>
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
    </header>

    <h1 style="text-align: center;">Results-2021</h1>

    <main>
        <section>
            <h2>Search Results</h2>
            <form method="GET" action="">
                <div class="flex-container">
                    <div class="light-box">
                        <label for="assemblyConstituency">Select Assembly Constituency:</label>
                        <select id="assemblyConstituency" name="assemblyConstituency">
                            <option value="">Select Assembly Constituency</option>
                            <!-- Populate options here -->
                                            <?php
                try {
                    $stmt = $pdo->query("SELECT DISTINCT assembly_constituency FROM constituencies ORDER BY assembly_constituency");
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                        $selected = ($row['assembly_constituency'] == $selectedConstituency) ? 'selected' : '';
                        echo "<option value=\"" . htmlspecialchars($row['assembly_constituency']) . "\" $selected>" . htmlspecialchars($row['assembly_constituency']) . "</option>";
                    }
                } catch (PDOException $e) {
                    echo "Error: " . $e->getMessage();
                }
                ?>
            </select>
            <button type="submit" class="button">Get Results</button>
        </form>
    </div>
    <div class="container table-container">
        <?php if (!empty($results)) : ?>
            <h2>Results for <?php echo htmlspecialchars($selectedConstituency); ?> Constituency</h2>
            <table>
                <thead>
                    <tr>
                        <th>Result ID</th>
                        <th>Constituency ID</th>
                        <th>Party</th>
                        <th>Candidate</th>
                        <th>Votes</th>
                        <th>Rank</th>
                        <th>Percentage</th>
                        <th>Assembly Constituency</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($results as $row) : ?>
                        <tr>
                            <td><?php echo htmlspecialchars($row['result_id']); ?></td>
                            <td><?php echo htmlspecialchars($row['constituency_id']); ?></td>
                            <td><?php echo htmlspecialchars($row['party']); ?></td>
                            <td><?php echo htmlspecialchars($row['candidate']); ?></td>
                            <td><?php echo htmlspecialchars($row['votes']); ?></td>
                            <td><?php echo htmlspecialchars($row['rank']); ?></td>
                            <td><?php echo htmlspecialchars($row['percentage']); ?></td>
                            <td><?php echo htmlspecialchars($row['assembly_constituency']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php elseif (!empty($selectedConstituency)) : ?>
            <p>No results found for the selected constituency.</p>
        <?php endif; ?>
    </div>
</body>

</html>
