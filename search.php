<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Commission of Tamil Nadu</title>
    <style>
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
            padding: 20px;
            display: flex;
            justify-content: space-between; /* Align items to the start and end */
            align-items: center;
        }
            .gender-options {
        display: flex;
        flex-direction: column;
    }

        main {
            max-width: 1200px;
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

        input, select {
            width: calc(100% - 20px);
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
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .flex-container > div {
            flex: 1;
            margin-right: 10px;
        }

        .personal-details-header {
            text-align: left;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        .light-box {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            flex: 1;
        }



        button {
            background-color: #4caf50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            display: block;
            margin: 0 auto;
        }

        button:hover {
            background-color: #45a049;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        #bottom-div {
            background:white;
            padding: 20px;
            color: white;
            text-align: center;
            width: calc(100% - 40px);
        }

        .bottom-container {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: white;
            position: absolute;
            bottom: 0;
            width: 100%;
            border-radius: 8px 8px 0 0;
        }

        #buttons-container {
            max-width: 600px;
            text-align: left;
        }

        .button {
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

        .button:hover {
            background-color: #5D76A9;
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
        .search-results {
    padding: 20px;
    margin-top: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.search-results h2 {
    margin-bottom: 10px;
    color: #333;
}

.search-results-item {
    margin-bottom: 20px;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.search-results-item p {
    margin: 0;
    font-size: 16px;
    color: #333;
    line-height: 1.6;
}

.search-results-item p:first-child {
    font-weight: bold;
}

.search-results-item p:not(:first-child) {
    margin-top: 10px;
}


        @media (max-width: 768px) {
            main {
                margin: 10px;
                padding: 10px;
            }

            .flex-container {
                flex-direction: column;
            }

            .flex-container > div {
                margin-right: 0;
                margin-bottom: 20px;
            }

            .light-box {
                padding: 10px;
            }

            input, select {
                width: calc(100% - 10px);
            }
        }

        @media (max-width: 480px) {
            header {
                font-size: 1.2em;
            }

            .personal-details-header {
                font-size: 16px;
            }

            button, .button {
                padding: 10px;
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
<header>
    
    <a href="index.php" class="small-button">Home</a>
    <h1>Election Commission of Tamil Nadu</h1>
</header>

        <h1>Search in Electoral Roll</h1><br>
    
            <div class="search-results-item">
<?php
// Check if the form has been submitted and process the search
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Retrieve form data
    $first_name = isset($_GET['firstName']) ? $_GET['firstName'] : '';
    $last_name = isset($_GET['lastName']) ? $_GET['lastName'] : '';
    $district = isset($_GET['district']) ? $_GET['district'] : '';

    // Check if all search fields are empty
    if (empty($first_name) && empty($last_name) && empty($district)) {
        echo '<p>Please enter data above to display voter details.</p>';
    } else {
        // Proceed with database connection and query
        $host = 'aws-0-ap-south-1.pooler.supabase.com';
        $port = '6543';
        $dbname = 'postgres';
        $user = 'postgres.egmwwfojqginumzzxagw';
        $password = 'kesavkumarj';
        $dsn = "pgsql:host=$host;port=$port;dbname=$dbname";

        try {
            $conn = new PDO($dsn, $user, $password, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

            // Construct the base SQL query
            $sql = "SELECT voter_details.*, contact_details.email, contact_details.phone, addresses.district, addresses.address, addresses.pincode
                    FROM voter_details
                    LEFT JOIN contact_details ON voter_details.voter_id = contact_details.voter_id
                    LEFT JOIN addresses ON voter_details.voter_id = addresses.voter_id";

            // Create an array to store conditions
            $conditions = [];
            $params = [];

            // Add conditions based on provided form data
            if (!empty($first_name)) {
                $conditions[] = "voter_details.first_name = :first_name";
                $params[':first_name'] = $first_name;
            }
            if (!empty($last_name)) {
                $conditions[] = "voter_details.last_name = :last_name";
                $params[':last_name'] = $last_name;
            }
            if (!empty($district)) {
                $conditions[] = "addresses.district = :district";
                $params[':district'] = $district;
            }

            if (!empty($conditions)) {
                $sql .= " WHERE " . implode(" AND ", $conditions);
            }

            // Prepare and execute the SQL query
            $stmt = $conn->prepare($sql);
            $stmt->execute($params);

            // Check if any data matches the search criteria
            if ($stmt->rowCount() > 0) {
                // Display the results
                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo '<div class="search-results-item">';
                    echo "<p>Voter ID: " . $row['voter_id'] . "</p>";
                    echo "<p>First Name: " . $row['first_name'] . "</p>";
                    echo "<p>Last Name: " . $row['last_name'] . "</p>";
                    echo "<p>Date of Birth: " . $row['date_of_birth'] . "</p>";
                    echo "<p>Age: " . $row['age'] . "</p>";
                    echo "<p>Gender: " . $row['gender'] . "</p>";
                    echo "<p>Acceptance: " . ($row['acceptance'] ? 'Yes' : 'No') . "</p>";
                    echo "<p>Email: " . $row['email'] . "</p>";
                    echo "<p>Phone: " . $row['phone'] . "</p>";
                    echo "<p>District: " . $row['district'] . "</p>";
                    echo "<p>Address: " . $row['address'] . "</p>";
                    echo "<p>Pincode: " . $row['pincode'] . "</p>";
                    echo '</div>'; // Closing div for search-results-item
                    echo '<hr>'; // Separator between each voter
                }
            } else {
                echo "No data matches!";
            }
        } catch (PDOException $e) {
            die("Connection failed: " . $e->getMessage());
        }
    }
}
?>

            </div>


        <form method="GET" action="">
        <main>
            <section>
                <div class="personal-details-header">Personal Details</div>
                <div class="flex-container">
                    <div class="light-box">
                        <label for="firstName">First Name:</label>
                        <input type="text" id="firstName" name="firstName" placeholder="Enter first name">
                        <label for="lastName">Last Name:</label>
                        <input type="text" id="lastName" name="lastName" placeholder="Enter last name">
                    </div>
<div class="light-box gender-radio">
        <label>Gender:</label><br>
        
        <div class="gender-options">
            <label><input type="radio" name="gender" value="male"> Male</label>
            <label><input type="radio" name="gender" value="female"> Female</label>
            <label><input type="radio" name="gender" value="other"> Other</label>
        </div>
    </div>
                </div>
            </section>

            <section>
                <h2>Location Details</h2>
                <div class="flex-container">
                    <div class="light-box">
                        <label for="district">District:</label>
                        <select id="district" name="district">
                            <option value="ariyalur">Ariyalur</option>
                            <option value="chengalpattu">Chengalpattu</option>
                            <option value="chennai">Chennai</option>
                            <option value="coimbatore">Coimbatore</option>
                            <option value="cuddalore">Cuddalore</option>
                            <option value="dharmapuri">Dharmapuri</option>
                            <option value="dindigul">Dindigul</option>
                            <option value="erode">Erode</option>
                            <option value="kallakurichi">Kallakurichi</option>
                            <option value="kanchipuram">Kanchipuram</option>
                            <option value="kanniyakumari">Kanniyakumari</option>
                            <option value="karur">Karur</option>
                            <option value="krishnagiri">Krishnagiri</option>
                            <option value="madurai">Madurai</option>
                            <option value="nagapattinam">Nagapattinam</option>
                            <option value="namakkal">Namakkal</option>
                            <option value="perambalur">Perambalur</option>
                            <option value="pudukkottai">Pudukkottai</option>
                            <option value="ramanathapuram">Ramanathapuram</option>
                            <option value="ranipet">Ranipet</option>
                            <option value="salem">Salem</option>
                            <option value="sivagangai">Sivagangai</option>
                            <option value="tenkasi">Tenkasi</option>
                            <option value="thanjavur">Thanjavur</option>
                            <option value="the_nilgiris">The Nilgiris</option>
                            <option value="theni">Theni</option>
                            <option value="thiruvallur">Thiruvallur</option>
                            <option value="thiruvarur">Thiruvarur</option>
                            <option value="thoothukudi">Thoothukudi</option>
                            <option value="tiruchirappalli">Tiruchirappalli</option>
                            <option value="tirunelveli">Tirunelveli</option>
                            <option value="tirupathur">Tirupathur</option>
                            <option value="tiruppur">Tiruppur</option>
                            <option value="trichy">Trichy</option>
                            <option value="tuticorin">Tuticorin</option>
                            <option value="thiruvannamalai">Thiruvannamalai</option>
                            <option value="vellore">Vellore</option>
                            <option value="villupuram">Villupuram</option>
                            <option value="virudhunagar">Virudhunagar</option>
                        </select>
                    </div>
                </div>
            </section>
        </main>

        
        <div id="bottom-div">
            <button type="submit" class="button">Search in Electoral Roll</button>
            
        </div>
    </form>
</body>
</html>
