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

    // Build the SQL query based on selected constituency
    $sql = "
        SELECT er.*, c.assembly_constituency, 
               w.candidate_name AS winner_name, wp.PartyName AS winner_party, w.votes AS winner_votes, w.percentage AS winner_percentage,
               r.candidate_name AS runner_name, rp.PartyName AS runner_party, r.votes AS runner_votes, r.percentage AS runner_percentage
        FROM election_results er
        JOIN constituencies c ON er.constituency_id = c.constituency_id
        LEFT JOIN candidates w ON er.winner_id = w.candidate_id
        LEFT JOIN Party wp ON w.party_id = wp.PartyID
        LEFT JOIN candidates r ON er.runner_up_id = r.candidate_id
        LEFT JOIN Party rp ON r.party_id = rp.PartyID
    ";

    if (!empty($selectedConstituency)) {
        $sql .= " WHERE c.assembly_constituency = :constituency";
    }

    // Prepare and execute the SQL query
    $stmt = $pdo->prepare($sql);
    if (!empty($selectedConstituency)) {
        $stmt->bindParam(':constituency', $selectedConstituency);
    }
    $stmt->execute();

    // Fetch data from the election_results table
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
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
        <br>
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
        <br>
    </header>

    <h1 style="text-align: center;">Results-2021</h1>

       
    <main>
        <!-- Add a search form above the table -->
        <section>
            <h2>Search Results</h2>
            <form method="GET" action="">
                <div class="flex-container">
                    <div class="light-box">
                        <label for="assemblyConstituency">Select Assembly Constituency:</label>
                        <select id="assemblyConstituency" name="assemblyConstituency">
                    <!-- Options will be populated dynamically using JavaScript -->
                </select>
            </div>
        </div>

        <button type="submit" class="button">Search</button>
    </form>

    <script>
        var constituenciesData = {
            tamilNadu:[
        "Select Assembly Constituency",
        "Gummidipoondi",
        "Ponneri (SC)",
        "Tiruttani",
        "Thiruvallur",
        "Poonamallee (SC)",
        "Avadi",
        "Maduravoyal",
        "Ambattur",
        "Madavaram",
        "Thiruvottiyur",
        "Dr. Radhakrishnan Nagar",
        "Perambur",
        "Kolathur",
        "Villivakkam",
        "Thiru-Vi-Ka-Nagar (SC)",
        "Egmore (SC)",
        "Royapuram",
        "Harbour",
        "Chepauk-Thiruvallikeni",
        "Thousand Lights",
        "Anna Nagar",
        "Virugampakkam",
        "Saidapet",
        "Thiyagaraya Nagar",
        "Mylapore",
        "Velachery",
        "Shozhinganallur",
        "Alandur",
        "Sriperumbudur (SC)",
        "Pallavaram",
        "Tambaram",
        "Chengalpattu",
        "Thiruporur",
        "Cheyyur (SC)",
        "Maduranthakam (SC)",
        "Uthiramerur",
        "Kancheepuram",
        "Arakkonam (SC)",
        "Sholingur",
        "Ranipet",
        "Arcot",
        "Katpadi",
        "Vellore",
        "Anaikattu",
        "Kilvaithinankuppam (SC)",
        "Gudiyattam (SC)",
        "Vaniyambadi",
        "Ambur",
        "Jolarpet",
        "Tirupattur (Vellore)",
        "Uthangarai (SC)",
        "Bargur",
        "Krishnagiri",
        "Veppanahalli",
        "Hosur",
        "Thalli",
        "Palacode",
        "Pennagaram",
        "Dharmapuri",
        "Pappireddippatti",
        "Harur (SC)",
        "Chengam (SC)",
        "Tiruvannamalai",
        "Kilpennathur",
        "Kalasapakkam",
        "Polur",
        "Arani",
        "Cheyyar",
        "Vandavasi (SC)",
        "Gingee",
        "Mailam",
        "Tindivanam",
        "Vanur (SC)",
        "Villupuram",
        "Vikravandi",
        "Tirukkoyilur",
        "Ulundurpettai",
        "Rishivandiyam",
        "Sankarapuram",
        "Kallakurichi (SC)",
        "Gangavalli (SC)",
        "Attur (SC)",
        "Yercaud (ST)",
        "Omalur",
        "Mettur",
        "Edappadi",
        "Sankari",
        "Salem (West)",
        "Salem (North)",
        "Salem (South)",
        "Veerapandi",
        "Rasipuram (SC)",
        "Senthamangalam (ST)",
        "Namakkal",
        "Paramathi-Velur",
        "Tiruchengodu",
        "Kumarapalayam",
        "Erode (East)",
        "Erode (West)",
        "Modakkurichi",
        "Dharapuram (SC)",
        "Kangayam",
        "Perundurai",
        "Bhavani",
        "Anthiyur",
        "Gobichettipalayam",
        "Bhavanisagar (SC)",
        "Udhagamandalam",
        "Gudalur (SC)",
        "Coonoor",
        "Mettupalayam",
        "Avanashi (SC)",
        "Tiruppur (North)",
        "Tiruppur (South)",
        "Palladam",
        "Sulur",
        "Kavundampalayam",
        "Coimbatore (North)",
        "Thondamuthur",
        "Coimbatore (South)",
        "Singanallur",
        "Kinathukadavu",
        "Pollachi",
        "Valparai (SC)",
        "Udumalaipettai",
        "Madathukulam",
        "Palani",
        "Oddanchatram",
        "Athoor",
        "Nilakottai (SC)",
        "Natham",
        "Dindigul",
        "Vedasandur",
        "Aravakurichi",
        "Karur",
        "Krishnarayapuram (SC)",
        "Kulithalai",
        "Manapaarai",
        "Srirangam",
        "Tiruchirappalli (West)",
        "Tiruchirappalli (East)",
        "Thiruverumbur",
        "Lalgudi",
        "Manachanallur",
        "Musiri",
        "Thuraiyur (SC)",
        "Perambalur (SC)",
        "Kunnam",
        "Ariyalur",
        "Jayankondam",
        "Tittakudi (SC)",
        "Vriddhachalam",
        "Neyveli",
        "Panruti",
        "Cuddalore",
        "Kurinjipadi",
        "Bhuvanagiri",
        "Chidambaram",
        "Kattumannarkoil (SC)",
        "Sirkazhi (SC)",
        "Mayiladuthurai",
        "Poompuhar",
        "Nagapattinam",
        "Kilvelur (SC)",
        "Vedaranyam",
        "Thiruthuraipoondi (SC)",
        "Mannargudi",
        "Thiruvarur",
        "Nannilam",
        "Thiruvidaimarudur (SC)",
        "Kumbakonam",
        "Papanasam",
        "Thiruvaiyaru",
        "Thanjavur",
        "Orathanadu",
        "Pattukkottai",
        "Peravurani",
        "Gandharvakottai (SC)",
        "Viralimalai",
        "Pudukkottai",
        "Thirumayam",
        "Alangudi",
        "Aranthangi",
        "Karaikudi",
        "Tiruppattur (Sivaganga)",
        "Sivaganga",
        "Manamadurai (SC)",
        "Melur",
        "Madurai East",
        "Sholavandan (SC)",
        "Madurai North",
        "Madurai South",
        "Madurai Central",
        "Madurai West",
        "Thiruparankundram",
        "Tirumangalam",
        "Usilampatti",
        "Andipatti",
        "Periyakulam (SC)",
        "Bodinayakanur",
        "Cumbum",
        "Rajapalayam",
        "Srivilliputhur (SC)",
        "Sattur",
        "Sivakasi",
        "Virudhunagar",
        "Aruppukkottai",
        "Tiruchuli",
        "Paramakudi (SC)",
        "Tiruvadanai",
        "Ramanathapuram",
        "Mudhukulathur",
        "Vilathikulam",
        "Thoothukkudi",
        "Tiruchendur",
        "Srivaikuntam",
        "Ottapidaram (SC)",
        "Kovilpatti",
        "Sankarankovil (SC)",
        "Vasudevanallur (SC)",
        "Kadayanallur",
        "Tenkasi",
        "Alangulam",
        "Tirunelveli",
        "Ambasamudram",
        "Palayamkottai",
        "Nanguneri",
        "Radhapuram",
        "Kanniyakumari",
        "Nagercoil",
        "Colachel",
        "Padmanabhapuram",
        "Vilavancode",
        "Killiyoor",
        // ... (remaining constituencies)
    ],
};
                var assemblyConstituencyDropdown = document.getElementById("assemblyConstituency");

                // Clear existing options
                assemblyConstituencyDropdown.innerHTML = "";

                // Populate options directly from the constituenciesData object
                for (var district in constituenciesData) {
                    if (constituenciesData.hasOwnProperty(district)) {
                        var constituencies = constituenciesData[district];

                        // Add a separator option for each district
                        var separatorOption = document.createElement("option");
                        separatorOption.value = "";
                        separatorOption.text = "-------- " + district.toUpperCase() + " --------";
                        separatorOption.disabled = true;
                        assemblyConstituencyDropdown.add(separatorOption);

                        // Add constituency options
                        for (var i = 1; i < constituencies.length; i++) {
                            var option = document.createElement("option");
                            option.value = constituencies[i];
                            option.text = constituencies[i];
                            assemblyConstituencyDropdown.add(option);
                        }
                    }
                }
            </script>
            <section>
                <h2>Results Table</h2>
                <div class="table-container">
                    <div class="table-scroll">
                        <table>
                            <thead>
                                <tr>
                                    <th>Assembly Constituency</th>
                                    <th>Turnout Percentage</th>
                                    <th>Winner Name</th>
                                    <th>Winner Party</th>
                                    <th>Winner Votes</th>
                                    <th>Winner Percentage</th>
                                    <th>Runner-Up Name</th>
                                    <th>Runner-Up Party</th>
                                    <th>Runner-Up Votes</th>
                                    <th>Runner-Up Percentage</th>
                                    <th>Margin</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if ($results) {
                                    foreach ($results as $result) {
                                        echo "<tr>";
                                        echo "<td>" . htmlspecialchars($result['assembly_constituency']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['turnout_percentage']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['winner_name']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['winner_party']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['winner_votes']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['winner_percentage']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['runner_name']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['runner_party']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['runner_votes']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['runner_percentage']) . "</td>";
                                        echo "<td>" . htmlspecialchars($result['margin']) . "</td>";
                                        echo "</tr>";
                                    }
                                } else {
                                    echo "<tr><td colspan='11'>No results found.</td></tr>";
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </section>
    </main>
</body>
</html>
