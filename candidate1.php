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
            background-color: #041E42;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .pay-button:hover {
            background-color: darkslateblue;
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px; /* Add some space above the table */
        }

        th, td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
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

            table {
                font-size: 14px; /* Reduce font size for smaller screens */
            }
        }
    </style>
</head>
<body>

    <header>
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
    </header>

    <div class="container">
        <h1>Candidate Search</h1>
        <div class="plan">
            <form method="get" action="">
                <label for="assemblyConstituency">Select Assembly Constituency:</label>
                <select id="assemblyConstituency" name="assemblyConstituency">
                    <!-- Options will be populated dynamically using JavaScript -->
                </select>
                <button class="pay-button" type="submit">Submit</button>
            </form>
        </div>
    </div>

    <script>
        var constituenciesData = {
            tamilNadu: [
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

<?php
// Replace with your PostgreSQL credentials
$host = 'aws-0-ap-south-1.pooler.supabase.com';
$port = '6543';
$database = 'postgres';
$user = 'postgres.egmwwfojqginumzzxagw';
$password = 'kesavkumarj';

// Connect to PostgreSQL
$conn = pg_connect("host=$host port=$port dbname=$database user=$user password=$password");

if (!$conn) {
die("Connection failed");
}

// Check if the form is submitted and district is selected
if (isset($_GET['assemblyConstituency']) && !empty($_GET['assemblyConstituency'])) {
$assemblyConstituency = $_GET['assemblyConstituency'];

// Query to retrieve candidates based on the district
$query = "
SELECT
    candidates.candidate_id,
    candidates.candidate_name,
    Party.PartyName,
    constituencies.assembly_constituency AS constituency_name
FROM
    candidates
    INNER JOIN election_results ON candidates.candidate_id = election_results.winner_id
    INNER JOIN Party ON candidates.party_id = Party.PartyID
    INNER JOIN constituencies ON election_results.constituency_id = constituencies.constituency_id
WHERE
    constituencies.assembly_constituency = $1
UNION
SELECT
    candidates.candidate_id,
    candidates.candidate_name,
    Party.PartyName,
    constituencies.assembly_constituency AS constituency_name
FROM
    candidates
    INNER JOIN election_results ON candidates.candidate_id = election_results.runner_up_id
    INNER JOIN Party ON candidates.party_id = Party.PartyID
    INNER JOIN constituencies ON election_results.constituency_id = constituencies.constituency_id
WHERE
    constituencies.assembly_constituency = $1;
";

$result = pg_query_params($conn, $query, [$assemblyConstituency]);
echo '<table>';
echo '<tr><th>Candidate ID</th><th>Candidate Name</th><th>Party Name</th><th>Constituency Name</th></tr>';
if ($result) {
    while ($row = pg_fetch_assoc($result)) {
        echo '<tr>';
        echo '<td>' . $row['candidate_id'] . '</td>';
        echo '<td>' . $row['candidate_name'] . '</td>';
        echo '<td>' . (isset($row['partyname']) ? $row['partyname'] : 'No Party Details') . '</td>';
        echo '<td>' . $row['constituency_name'] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
} else {
    echo 'Query failed';
}
}

// Close the database connection
pg_close($conn);
?>
</body>
</html>