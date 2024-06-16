

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

    <title>Voter Registration - Election Commission of Tamil Nadu</title>
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

        input, select, textarea {
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
        }

        .gender-radio {
            display: flex;
            align-items: center;
        }

        .gender-radio label {
            margin-right: 20px;
        }

        .gender-radio input {
            margin-right: 5px;
        }

        button {
            background-color:#041E42;
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

        label.required::after {
            content: '*';
            color: red;
        }
        .bottom-container {
            text-align: center;
            padding: 20px;
            background-color:#ccc;
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

        #bottom-div {
            background:white;
        padding: 20px;
        color: white;
        text-align: center;
        
        width: calc(100% - 40px);
        }
        .error-message {
    color: red;
  }
  /* Input styles */
input[type="text"],
input[type="email"],
input[type="tel"],
input[type="number"],
input[type="date"],
select {
    width: 100%;
    padding: 12px;
    margin-bottom: 16px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px; /* Adjust font size as needed */
}

/* Dropdown styles */
select {
    appearance: none; /* Remove default arrow */
    background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"><path fill-rule="evenodd" d="M10 12l-6-6H4l6 6 6-6h1l-6 6z" clip-rule="evenodd"/></svg>'); /* Custom arrow */
    background-repeat: no-repeat;
    background-position: right 12px center;
    padding-right: 35px;
    background-color: #fff;
}
input[type="text"].location-details {
    width: calc(100% - 20px);
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

/* Updated CSS for responsiveness */

@media screen and (max-width: 768px) {
    input[type="text"].location-details {
        width: 100%;
    }
}
/* Responsive styles */
@media only screen and (max-width: 768px) {
    main {
        padding: 10px;
    }
    .light-box {
        padding: 10px;
    }
    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"],
    input[type="date"],
    select {
        font-size: 14px;
    }
}

@media only screen and (max-width: 480px) {
    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"],
    input[type="date"],
    select {
        font-size: 12px;
    }
}
    </style>
</head>
<body>
<header>
    
        <a href="index.php" class="small-button">Home</a>
        <h1>Election Commission of Tamil Nadu</h1>
    </header>

        <h1>Voter Registration</h1>

    <main>
    <form onsubmit="return validateForm(this)" action="registration.php" method="get" id="registrationForm">
            <div id="error-message" class="error-message">
                <br>
<?php
$host = 'aws-0-ap-south-1.pooler.supabase.com';
$port = '6543';
$dbname = 'postgres';
$user = 'postgres.egmwwfojqginumzzxagw';
$password = 'kesavkumarj';
$dsn = "pgsql:host=$host;port=$port;dbname=$dbname";

try {
    $conn = new PDO($dsn, $user, $password, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // Validate form data
    $validationErrors = validateForm($_GET);

    if (empty($validationErrors)) {
        // Insert data into voter_details table
        $firstName = $_GET["firstName"];
        $lastName = $_GET["lastName"];
        $dob = $_GET["dob"];
        $age = $_GET["age"];
        $gender = $_GET["gender"];

        try {
            $conn->beginTransaction();

            $voterQuery = "INSERT INTO voter_details (first_name, last_name, date_of_birth, age, gender, acceptance) 
                           VALUES (:firstName, :lastName, :dob, :age, :gender, true) RETURNING voter_id";
            $voterStmt = $conn->prepare($voterQuery);
            $voterStmt->execute([':firstName' => $firstName, ':lastName' => $lastName, ':dob' => $dob, ':age' => $age, ':gender' => $gender]);
            $voterId = $voterStmt->fetchColumn();

            // Insert data into contact_details table
            $email = $_GET["email"];
            $phone = $_GET["phone"];

            $contactQuery = "INSERT INTO contact_details (voter_id, email, phone) VALUES (:voterId, :email, :phone)";
            $contactStmt = $conn->prepare($contactQuery);
            $contactStmt->execute([':voterId' => $voterId, ':email' => $email, ':phone' => $phone]);

            // Insert data into addresses table
            $district = $_GET["district"];
            $address = $_GET["address"];
            $pincode = $_GET["pincode"];

            $addressQuery = "INSERT INTO addresses (voter_id, district, address, pincode) VALUES (:voterId, :district, :address, :pincode)";
            $addressStmt = $conn->prepare($addressQuery);
            $addressStmt->execute([':voterId' => $voterId, ':district' => $district, ':address' => $address, ':pincode' => $pincode]);

            $conn->commit();

            echo "Registration successful!";
            echo '<br><h2 style="color: black;">Voter ID: ' . $voterId . '</h2>';
        } catch (Exception $e) {
            $conn->rollBack();
            die("Error: " . $e->getMessage());
        }
    } else {
        // Display validation errors
        foreach ($validationErrors as $error) {
            echo $error . "<br>";
        }
    }
}

function validateForm($data) {
    $errors = [];
    $error =[];

    if (empty($data['firstName'])) {
        $errors[] = "First name is required.";
    }

    if (empty($data['lastName'])) {
        $error[] = "Last name is required.";
    }

    if (empty($data['dob'])) {
        $errors[] = "Date of birth is required.";
    } elseif (!preg_match("/^\d{4}-\d{2}-\d{2}$/", $data['dob'])) {
        $error[] = "Invalid date of birth format. Use YYYY-MM-DD.";
    }

    if (empty($data['age'])) {
        $errors[] = "Age is required.";
    } elseif (!ctype_digit($data['age'])) {
        $error[] = "Age must be a positive integer.";
    }

    if (empty($data['gender'])) {
        $errors[] = "Gender is required.";
    }

    if (empty($data['email'])) {
        $errors[] = "Email is required.";
    } elseif (!filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
        $error[] = "Invalid email address.";
    }

    if (empty($data['phone'])) {
        $errors[] = "Phone number is required.";
    } elseif (!preg_match("/^\d{10}$/", $data['phone'])) {
        $error[] = "Invalid phone number format. Use 10 digits.";
    }

    if (empty($data['district'])) {
        $errors[] = "District is required.";
    }

    if (empty($data['address'])) {
        $errors[] = "Address is required.";
    }

    if (empty($data['pincode'])) {
        $errors[] = "Pincode is required.";
    } elseif (!ctype_digit($data['pincode']) || strlen($data['pincode']) !== 6) {
        $error[] = "Invalid pincode format. Use 6 digits.";
    }

    return $error;
}

$conn = null;
?>



            </div>
<br>
            <section>
                <h2>Personal Details</h2>

                <div class="flex-container">
            <div class="light-box">
                <label for="firstName" class="required">First Name:</label>
                <input type="text" id="firstName" name="firstName" required>
                <span id="firstNameError" class="error-message"></span>
            </div>

            <div class="light-box">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required>
                <span id="lastNameError" class="error-message"></span>
            </div>
        </div>

        <div class="flex-container">
            <div class="light-box">
                <label for="relativeName" class="required">Relative Name:</label>
                <input type="text" id="relativeName" name="relativeName" required>
                <span id="relativeNameError" class="error-message"></span>
            </div>

            <div class="light-box">
                <label for="relativeLastName">Relative Last Name:</label>
                <input type="text" id="relativeLastName" name="relativeLastName" required>
                <span id="relativeLastNameError" class="error-message"></span>
            </div>
        </div>

        <div class="flex-container">
            <div class="light-box">
                <label for="dob" class="required">Date of Birth:</label>
                <input type="date" id="dob" name="dob" placeholder="yyyy-mm-dd" required>
                <span id="dobError" class="error-message"></span>
            </div>
                    

            <div class="light-box">
                <label for="age" class="required">Age:</label>
                <input type="number" id="age" name="age" readonly>
                <span id="ageError" class="error-message"></span>
            </div>
        </div>

                <div class="light-box gender-radio">
                    <label>Gender:</label>
                    <label><input type="radio" name="gender" value="male"> Male</label>
                    <label><input type="radio" name="gender" value="female"> Female</label>
                    <label><input type="radio" name="gender" value="other"> Other</label>
                    <span id="genderError" class="error-message"></span>
                </div>
            </section>

            <section>
                <h2>Contact Details</h2>

                <div class="flex-container">
            <div class="light-box">
                <label for="email" class="required">Email:</label>
                <input type="email" id="email" name="email" required>
                <span id="emailError" class="error-message"></span>
            </div>

            <div class="light-box">
                <label for="phone" class="required">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
                <span id="phoneError" class="error-message"></span>
            </div>
            </section>


<section>
    <h2>Location Details</h2>

    <div class="flex-container">
        <div class="light-box">
            <label for="district" class="required">District:</label>
            <select id="district" name="district" onchange="updateConstituencies()" required>
                <option value="" selected disabled>Select District</option>
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
<option value="tirupur">Tirupur</option>
<option value="thiruvannamalai">Thiruvannamalai</option>
<option value="vellore">Vellore</option>
<option value="villupuram">Villupuram</option>
<option value="virudhunagar">Virudhunagar</option>
            </select>
            <span id="districtError" class="error-message"></span>
        </div>

        <div class="light-box">
            <label for="assemblyConstituency" class="required">Assembly Constituency:</label>
            <select id="assemblyConstituency" name="assemblyConstituency"></select>
            <span id="assemblyConstituencyError" class="error-message"></span>
        </div>
    </div>

    <div class="flex-container">
        <div class="light-box">
            <label for="address" class="required">Address:</label>
            <input type="textarea" id="address" name="address" placeholder="Door No, Street, City, Taluk" required>
            <span id="addressError" class="error-message"></span>
        </div>

        <div class="light-box">
            <label for="pincode" class="required">Pin Code:</label>
            <input type="number" id="pincode" name="pincode" required>
            <span id="pincodeError" class="error-message"></span>
        </div>
    </div>
</section>


            </section>

            <div id="bottom-div">
                <button type="submit" class="button">Register as Voter</button>
            </div>
            <br>

        </form>
    </main>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
        flatpickr("#dob", {
            dateFormat: "Y-m-d",
            allowInput: true,
            onChange: calculateAge,
        });
    });

        function calculateAge() {
        
        var ageInput = document.getElementById("age");
        var ageError = document.getElementById("ageError");

        // Clear the previous error message
        var dobInput = document.getElementById("dob");
        if (!dobInput.value) {
            document.getElementById("dobError").textContent = "Date of Birth is required.";
            dobInput.focus();
            return false;
        }

        // Get the selected date of birth
        var dob = new Date(dobInput.value);

        // Format date as yyyy-mm-dd
        var formattedDob =
            dob.getFullYear() +
            "-" +
            ("0" + (dob.getMonth() + 1)).slice(-2) +
            "-" +
            ("0" + dob.getDate()).slice(-2);

        // Set the formatted date back to the input field
        dobInput.value = formattedDob;

        // Calculate the age
        var today = new Date();
        var age = today.getFullYear() - dob.getFullYear();

        // Adjust age if birthday hasn't occurred yet this year
        if (
            today.getMonth() < dob.getMonth() ||
            (today.getMonth() === dob.getMonth() && today.getDate() < dob.getDate())
        ) {
            age--;
        }

        // Set the calculated age to the age input field
        ageInput.value = age;

        // Validate age and display error if not within the specified range
        if (age < 18 || age > 130) {
            ageError.textContent = "Age must be between 18 and 130.";
            ageInput.setCustomValidity("Invalid age");
        } else {
            ageError.textContent = "";
            ageInput.setCustomValidity("");
        }

        return true; // Indicate that the form is valid
    }


    function validateForm(form) {
    // Clear existing error messages
    clearErrorMessages();

    // Validate First Name
    if (!validateField("firstName", "firstNameError", "First name is required.", /^[A-Za-z]+$/, "First name should only contain alphabetic characters.")) {
        return false;
    }

    // Validate Last Name
    if (!validateField("lastName", "lastNameError", "Last name is required.", /^[A-Za-z]+$/, "Last name should only contain alphabetic characters.")) {
        return false;
    }

    // Validate Relative Name
    if (!validateField("relativeName", "relativeNameError", "Relative name is required.", /^[A-Za-z]+$/, "Relative name should only contain alphabetic characters.")) {
        return false;
    }

    // Validate Relative Last Name
    if (!validateField("relativeLastName", "relativeLastNameError", "Relative last name is required.", /^[A-Za-z]+$/, "Relative last name should only contain alphabetic characters.")) {
        return false;
    }

    // Validate Date of Birth
    if (!validateField("dob", "dobError", "Date of Birth is required.", null, null)) {
        return false;
    }

    // Validate Age (you can add your specific age validation logic)

    // Validate Gender
    const genderInput = form.querySelector('input[name="gender"]:checked');
    if (!genderInput) {
        document.getElementById("genderError").textContent = "Gender is required.";
        return false;
    }

    // Validate Email
    if (!validateField("email", "emailError", "Email ID is required.", /@gmail\.com$/, "Email must end with @gmail.com")) {
        return false;
    }

    // Validate Phone Number
    if (!validateField("phone", "phoneError", "Phone Number is required.", /^\d{10}$/, "Phone number must have 10 digits.")) {
        return false;
    }

    // Validate District
    if (!validateField("district", "districtError", "District is required.", null, null)) {
        return false;
    }

    // Validate Assembly Constituency
    if (!validateField("assemblyConstituency", "assemblyConstituencyError", "Assembly Constituency is required.", null, null)) {
        return false;
    }

    // Validate Address
    if (!validateField("address", "addressError", "Address is required.", null, null)) {
        return false;
    }

    // Validate Pin Code
    if (!validateField("pincode", "pincodeError", "Pincode is required.", /^\d{6}$/, "Pin code must have six digits.")) {
        return false;
    }

    // If all validations pass, the form is considered valid
    return true;
}




        var constituenciesData = {
    ariyalur: ["Select Assembly Constituency", "Ariyalur","Jayankondam"],
    chengalpattu: ["Select Assembly Constituency","Chengalpattu","Cheyyur","Madurantakam","Pallavaram","Sholinganallur","Tambaram","Thiruporur"],
    chennai: ["Select Assembly Constituency", "Anna nagar","Chepauk-Thiruvallikeni","Dr.Radhakrishnan nagar","Egmore","Harbour","Kolathur","Mylapore","Perambur","Royapuram","Saidapet","Thiru-vi-ka-nagar","Thiyagarayanagar","Thousand lights","Velachery","Villivakkam","Virugampakkam"],
    coimbatore: ["Select Assembly Constituency", "Coimbatore north","Coimbatore south","Kavundampalayam","Kinathukadavu","Mettupalayam","Pollachi","Singanallur","Sulur","Thondamuthur","Valparai"],
    cuddalore: ["Select Assembly Constituency","Bhuvanagiri","Chidambaram","Cuddalore","Kattumannarkoil","Kurinjipadio","Neyveli","Panruti","Tittakudi","Vridhachalam"],
    dharmapuri: ["Select Assembly Constituency", "Dharmapuri","Harur","Palacode","Pappireddipatti","Pennagaram"],
    dindigul: ["Select Assembly Constituency","Athoor","Dindigul","Natham","Nilakkottai","Oddanchatram","Palani","Vedasandur"],
    erode: ["Select Assembly Constituency", "Anthiyur","Bhavani","Bhavanisagar","Erode east","Erode west","Gobichettipalayam","Modakkurichi","Perundurai"],
    kallakurichi: ["Select Assembly Constituency", "Kallakurichi","Rishivandiyam","Sankarapuram","Ulundurpettai"],
    kanchipuram: ["Select Assembly Constituency", "Alandur","Kancheepuram","Sriperumbudur","Uthiramerur"],
    kanniyakumari:["Select Assembly Constituency","Colachal","Kanniyakumario","Killiyoor","Nagercoil","Padmanabhapuram","Vilavancode"],
    karur: ["Select Assembly Constituency", "Aravakurichi","Karur","Krishnarayapuram","Kulithalai"],
    krishnagiri: ["Select Assembly Constituency","Bargur","Hosur", "Krishnagiri" ,"Thally","Uthangarai","Veppanahalli"],
    madurai: ["Select Assembly Constituency", "Madurai central","Madurai east","Madurai north","Madurai south","Madurai west","Melur","Sholavandam","Thirumangalam","Thiruparankundram","Usilampatti"],
    nagapattinam: ["Select Assembly Constituency", "Kilvelur","Mayiladuthurai","Nagapattinam","Poompuhar","Sirkazhi","Vedharanyam"],
    namakkal: ["Select Assembly Constituency", "Kumarapalayam","Namakkal","Paramathivelur","Rasipuram","Senthamangalam","Thiruchengodu"],
    perambalur: ["Select Assembly Constituency", "Kunnam","Perambalur"],
    pudukkottai: ["Select Assembly Constituency", "Alangudi","Aranthangi","Gandarvakottai","Pudukkottai","Thirumayam","Viralimalai"],
    ramanathapuram: ["Select Assembly Constituency","Mudukulathur","Paramakudi","Ramanathapuram","Tiruvadanai"],
    ranipet: ["Select Assembly Constituency","Arakkonam","Arcot","Ranipet","Sholinghur"],
    salem: ["Select Assembly Constituency", "Attur","Edappadi","Gangavalli","Mettur","Omalur","Salem north","Salem south","Salem west","Sankari","Veerapandi","Yercaud"],
    sivagangai: ["Select Assembly Constituency", "Karaikudi","Manamadurai","Sivagangai","Tiruppathur"],
    tenkasi: ["Select Assembly Constituency", "Alangulam","Kadayanallur","Sankarankovil","Tenkasi","Vasudevanallur"],
    thanjavur: ["Select Assembly Constituency", "Kumbakonam","Orathanadu","Papanasam","Pattukkottai","Peravurani","Thanjavur","Thiruvaiyaru","Thiruvidaimarudur"],
    the_nilgiris:["Select Assembly Constituency","Coonoor","Gudalur","Udhagamandalam"],
    theni: ["Select Assembly Constituency", "Andipatti","Bodinayakkanur","Cumbum","Periyakulam"],
    thiruvallur: ["Select Assembly Constituency", "Ambattur","Avadi","Gummidipoondi","Madhavaram","Madhuravoyal","Ponneri","Poonamallee","Thiruvallur","Thiruvottiyur","Tiruttani"],
    thiruvarur: ["Select Assembly Constituency", "Mannargudi","Nannilam","Thiruthuraipoondi","Thiruvarur"],
    thoothukudi: ["Select Assembly Constituency", "Kovilpatti","Ottapidaram","Srivaikuntam","Thoothukudi","Tiruchendur","Vilathikulam"],
    tiruchirappalli: ["Select Assembly Constituency", "Lalgudi","Manachanallur","Manapparai","Musiri","Srirangam","Thiruverumbur","Thuraiyur","Thiruchirappallai east","Thiruchirappalli west"],
    tirunelveli: ["Select Assembly Constituency", "Ambasamudram","Nanguneri","Palayamkottai","Radhapuram","Tirunelveli"],
    tirupathur: ["Select Assembly Constituency", "Ambur","Jolarpet","Tirupattur","Vaniyambadi"],
    tirupur: ["Select Assembly Constituency", "Avanashi","Dharapuram","Kangayam","Madathukulam","Palladam","Thirupur north","Thirupur south","Udumalaipettai"],
    thiruvannamalai:["Select Assembly Constituency","Arani","Chengam","Cheyyar","Kalasapakkam","Kilpennathur","Polur","Thiruvannamalai","Vandavasi"],
    vellore: ["Select Assembly Constituency","Anaikattu","Gudiyattam","Katpadi","Kilvaithinankuppam","Vellore"],
    villupuram: ["Select Assembly Constituency", "Gingee","Mailam","Tindivanam","Tirukkoyilur","Vanur","Vikravandi","Villupuram"],
    virudhunagar: ["Select Assembly Constituency", "Aruppukottai","Rajapalayam","Sattur","Sivakasi","Srivilliputhur","Tiruchuli","Virudhunagar"],
};
function updateConstituencies() {
        var districtSelect = document.getElementById("district");
        var constituencySelect = document.getElementById("assemblyConstituency");

        // Clear existing options
        constituencySelect.innerHTML = "";

        // Get the selected district
        var selectedDistrict = districtSelect.value;

        // Retrieve the constituencies for the selected district from the data structure
        var constituencies = constituenciesData[selectedDistrict] || [];

        // Add options for each constituency
        for (var i = 0; i < constituencies.length; i++) {
            var option = document.createElement("option");
            option.value = constituencies[i];
            option.text = constituencies[i];
            constituencySelect.add(option);
        }
    }

    // Add an event listener to the district select element
    var districtSelect = document.getElementById("district");
    districtSelect.addEventListener("change", updateConstituencies);
       

        
    </script>
</body>
</html>
