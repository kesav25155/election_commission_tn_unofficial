<?php
// Supabase connection details
$host = 'aws-0-ap-south-1.pooler.supabase.com';
$port = '6543';
$dbname = 'postgres';
$user = 'postgres.egmwwfojqginumzzxagw';
$password = 'kesavkumarj';

try {
    // Create a new PDO instance
    $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error: " . $e->getMessage());
}

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['candidateId'])) {
    $candidateId = $_GET['candidateId'];

    $query = "
        SELECT candidates.candidate_name, 
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

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['searchTerm'])) {
    $searchTerm = '%' . $_POST['searchTerm'] . '%';

    $query = "SELECT candidate_id, candidate_name FROM candidates WHERE candidate_name ILIKE :searchTerm LIMIT 20";
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
        /* Styles omitted for brevity */
    </style>
</head>
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

            #candidateDetails {
        margin-top: 20px;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    #candidateDetails ul {
        list-style: none;
        padding: 0;
        margin-top: 10px;
    }

    #candidateDetails ul li {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    #candidateDetails ul li:last-child {
        border-bottom: none;
    }

    #candidateDetails ul li:nth-child(even) {
        background-color: #f9f9f9; /* Alternate background color for better readability */
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

        </style>
<body>
    <header>
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
    </header>

    <div class="container">
        <h1>Candidate Search</h1>
        <div class="plan">
            <form id="searchForm">
                <label for="searchTerm">Search Candidate:</label>
                <input type="text" id="searchTerm" name="searchTerm" oninput="searchCandidates()">
            </form>
        </div>
    </div>

    <ul style="list-style: none;" id="searchResults"></ul>

    <div class="container">
        <div class="plan">
            <div id="candidateDetails">
                <p>Select a candidate from the search results to view details.</p>
            </div>
        </div>
    </div>

    <script>
        function searchCandidates() {
            const searchTerm = document.getElementById('searchTerm').value;
            if (searchTerm.trim() !== '') {
                fetch(window.location.href, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: new URLSearchParams({ searchTerm: searchTerm }),
                })
                    .then(response => response.json())
                    .then(data => displayResults(data))
                    .catch(error => console.error('Error:', error));
            } else {
                document.getElementById('searchResults').innerHTML = '';
            }
        }

        function displayResults(data) {
            const resultsList = document.getElementById('searchResults');
            resultsList.innerHTML = '';

            if (data.length === 0) {
                resultsList.innerHTML = 'No results found.';
            } else {
                data.forEach(candidate => {
                    const li = document.createElement('li');
                    li.textContent = candidate.candidate_name;
                    li.addEventListener('click', () => showCandidateDetails(candidate.candidate_id));
                    resultsList.appendChild(li);
                });
            }
        }

        function showCandidateDetails(candidateId) {
            fetch(`${window.location.href}?candidateId=${candidateId}`)
                .then(response => response.json())
                .then(candidateDetails => displayCandidateDetails(candidateDetails))
                .catch(error => console.error('Error:', error));
        }

        function displayCandidateDetails(candidateDetails) {
            console.log(candidateDetails); // Log the entire candidateDetails object

            const detailsDiv = document.getElementById('candidateDetails');
            detailsDiv.innerHTML = '';

            const detailsList = document.createElement('ul');
            for (const [key, value] of Object.entries(candidateDetails)) {
                const li = document.createElement('li');
                switch (key) {
                    case 'candidate_name':
                        li.textContent = `Candidate Name: ${value}`;
                        break;
                    case 'PartyName':
                        li.textContent = `Party: ${value}`;
                        break;
                    case 'constituency_id':
                        li.textContent = `Constituency ID: ${value}`;
                        break;
                    case 'constituency_name':
                        li.textContent = `Assembly Constituency: ${value}`;
                        break;
                    default:
                        li.textContent = `${key}: ${value}`;
                }
                detailsList.appendChild(li);
            }
            detailsDiv.appendChild(detailsList);
        }
    </script>
</body>
</html>
