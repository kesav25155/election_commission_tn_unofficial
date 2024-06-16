<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Commission Of Tamil Nadu</title>
    <style>
/* Base styles for all devices */
* {
    padding: 0;
    margin: 0;
    text-decoration: none;
    list-style: none;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    margin: 0;
    padding: 0;
}

nav {
    background: white;
    height: 80px;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 20px;
}

label.logo img {
    height: 50px;
    width: auto;
}

label.logo {
    color: black;
    font-size: 25px;
    line-height: 80px;
    font-weight: bold;
}

nav ul {
    display: flex;
    margin-right: 20px;
}

nav ul li {
    display: inline-block;
    line-height: 80px;
    margin: 0 5px;
}

nav ul li a {
    color: black;
    font-size: 17px;
    padding: 7px 13px;
    border-radius: 3px;
    text-transform: uppercase;
}

a.active, a:hover {
    background: #041E42;
    transition: .5s;
    color: #f4f4f4;
}

header {
    background-color: white;
    color: black;
    text-align: left;
    padding: 20px;
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

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px solid darkgray;
    padding: 12px;
    text-align: left;
}

th {
    background-color: midnightblue;
    color: white;
}

label.required::after {
    content: '*';
    color: red;
}

.bottom-container {
    text-align: center;
    padding: 20px;
    background-color: #333;
    color: white;
    position: fixed;
    bottom: 0;
    width: 100%;
    border-radius: 8px 8px 0 0;
    z-index: 10; /* Ensure it's above other content */
}

.button {
    display: block;
    padding: 20px;
    background-color: #2c3968;
    color: white;
    text-decoration: none;
    font-weight: bold;
    border-radius: 10px;
    cursor: pointer;
    text-align: center;
    font-weight: 1000;
    z-index: 11; /* Ensure it's above other content */
}

.button:hover {
    background-color: #5D76A9;
}

#bottom-div {
    background: #041E42;
    padding: 20px;
    color: white;
    text-align: center;
    position: relative;
    bottom: 0;
    width: calc(100% - 40px); 
}

.qr-timer-container {
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.qr-code {
    max-width: 100px;
    max-height: 100px;
    margin-right: 20px;
}

#countdown {
    font-size: 18px;
    font-weight: bold;
    margin-top: 10px;
}

#direction a {
    color: white;
    text-decoration: none;
    font-weight: bold;
}

#direction a:hover {
    text-decoration: underline;
}

footer {
    background-color: #041E42;
    color: white;
    text-align: center;
    padding: 20px;
    border-radius: 1px;
    margin-top: 50px;
}

.mySlides {
    display: none;
}

img {
    width: 100%;
    height: auto;
}

.a {
    background-color: white;
}

#main-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
}

#buttons-container {
    display: flex;
    justify-content: space-between; /* Ensure buttons are spaced out evenly */
    max-width: 100%;
    text-align: left;
    margin-bottom: 75px;
}

.map-container {
    flex: 1;
    max-width: 100%; /* Ensure the map container doesn't exceed 100% width */
    overflow: hidden; /* Prevent overflow */
    margin-right: 10px; /* Add margin to avoid overlap */
}

#contact-details {
    text-align: center;
}

#contact-details table {
    margin: 0 auto;
}

.contact-container {
    background-color: #f9f9f9;
    padding: 10px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 900px;
    margin-left: 5%;
    display: inline-block;
}

.contact-container h3 {
    color: #333;
}

.contact-container p {
    margin-top: 0;
    color: #555;
}

@media (max-width: 768px) {
    nav {
        flex-direction: column;
        align-items: flex-start;
        height: auto;
    }

    label.logo {
        padding: 10px 0;
        text-align: center;
    }

    nav ul {
        flex-direction: column;
        width: 100%;
    }

    nav ul li {
        width: 100%;
        text-align: left;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }

    nav ul li a {
        display: block;
        width: 100%;
        padding: 10px 20px;
    }

    main {
        margin: 10px;
        padding: 10px;
    }

    .map-container {
        width: 100%;
        margin-bottom: 20px;
    }

    .contact-container {
        margin: 10px auto;
        width: 100%;
        max-width: 100%;
    }

    #buttons-container {
        width: 100%;
        margin-bottom: 20px;
        flex-direction: column;
    }

    .bottom-container {
        position: relative;
        border-radius: 8px 8px 8px 8px; /* Make sure the bottom container looks good */
    }

    #bottom-div {
        width: calc(100% - 20px); /* Adjust width for smaller screens */
        padding: 10px;
    }
}


    </style>
</head>
<body>
    <nav>
        <label class="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST_DbRVDw0kkrIWPCoT9ZfCnhalRQKrHEdyXsmUoI5FMm6gFiYRTpkG3SoZrnYH5N9rD4&usqp=CAU" alt="Logo">Election Commission of TamilNadu
        </label>
        <ul>
            <li><a href="act.html">More Options</a></li>
            <li><a href="About.htm">About us</a></li>
            <li><a href="contact.htm">Contact</a></li>
            <li><a href="blog.htm">Blog</a></li>
            <li><a href="faq.htm">FAQ</a></li>
        </ul>
    </nav>
    <main>
        
    <div class="slideshow-container scroll-image-section" >
        
        <div class="mySlides">
            <img src="https://pbs.twimg.com/media/F7AIHwtagAAZKUi?format=jpg&name=small" style="height: 540px;" alt="Image E">
        </div>
        <div class="mySlides">
            <img src="https://pbs.twimg.com/media/F66--IQbEAAwDs-?format=jpg&name=small" style="height: 540px;" alt="Image A">
        </div>
        <div class="mySlides">
            <img src="https://pbs.twimg.com/media/F26UdyGbQAAwE3Y?format=jpg&name=small" style="height: 540px;" alt="Image F">
        </div>
        
        <div class="mySlides">
            <img src="https://pbs.twimg.com/media/F123VgmaQAMZPsV?format=jpg&name=small" style="height: 540px;" alt="Image C">
        </div>
        <div class="mySlides">
            <img src="https://pbs.twimg.com/media/F2hha9vacAEbLyp?format=jpg&name=small" style="height: 540px;" alt="Image C">
        </div>
    
    </div>

</main>
<div id="main-container">
    &emsp;&emsp;&emsp;&emsp;
    <div class="map-container">
        <img src="https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/62000420478/original/Zrwvzq5oIZostqm2bizj5eUsFg4s39mn4g.png?1587482406" style="float: left; height: 600px; width: 400px;">
    </div>
    <div class="contact-container">
        <h3>Our office members</h3>
        <?php
$host = 'aws-0-ap-south-1.pooler.supabase.com';
$port = '6543';
$dbname = 'postgres';
$user = 'postgres.egmwwfojqginumzzxagw';
$password = 'kesavkumarj';
        
        // Establish a connection to PostgreSQL
        $pdo = new PDO("pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password");
        
        // Fetch data from the 'official' table
        $query = $pdo->query("SELECT * FROM official");
        $data = $query->fetchAll(PDO::FETCH_ASSOC);
        ?>
        
        <table border="1" id="contact-details">
            <tr>
                <th>Name</th>
                <th>Position</th>
            </tr>
        
            <?php foreach ($data as $row): ?>
                <tr>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['position']; ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
</div>
<footer>
    <a target="_blank" href="https://play.google.com/store/apps/details?id=in.nic.eci.cvigil&hl=en_IN" title="cVIGIL">
    <img src="https://www.elections.tn.gov.in/Content/images/b.png" style="height: 100px; width: 200px;" alt="Image A"></a>&emsp;&emsp;&emsp;&emsp;
    <a target="_blank" href="https://play.google.com/store/apps/details?id=com.eci.citizen&hl=en_IN" title="Voter Helpline">
        <img src="https://www.elections.tn.gov.in/Content/images/f.png" style="height: 100px;width: 200px;" alt="Image F"></a>&emsp;&emsp;&emsp;&emsp;

        <a target="_blank" href="https://eci.gov.in/" title="Election Commission of India">
        <img src="https://www.elections.tn.gov.in/Content/images/c.png" style="height: 100px;width: 200px;" alt="Image C"></a>&emsp;&emsp;&emsp;&emsp;
        <a target="_blank" href="https://ecisveep.nic.in/" title="SVEEP">
        <img src="https://www.elections.tn.gov.in/Content/images/e.png" style="height: 100px;width: 200px;" alt="Image E"></a>
  <div id="bottom-div">
    <div class="qr-timer-container">
        <!-- QR code image -->
        <div>
            <p>Scan to download voter helpline</p><br>
            <img src="https://media.tenor.com/XDAe8PDHSIMAAAAd/downsign-qr-code.gif" alt="QR Code" class="qr-code">
            <br>
            <p> qr-code currently unavailable </p>
        </div>
        <!-- Timer for upcoming election -->
        <div>
          <p>Upcoming Election</p>
          <p id="countdown"></p>
        </div>

        <!-- Direction to main website -->
        <div>
            <p >Visit our main website</p>
            <a href="https://eci.gov.in/" target="_blank" style="color:cornflowerblue;">Election Commission of India</a><br><br>
        </div>
        
    </div>
    &copy; 2024  Election Commission of Tamil Nadu. All rights reserved.
</div>

</footer>

<script>
    // Set the date we're counting down to
    var countDownDate = new Date("Apr 1, 2026 00:00:00").getTime();
    
    // Update the count down every 1 second
    var x = setInterval(function() {
    
      // Get today's date and time
      var now = new Date().getTime();
        
      // Find the distance between now and
      countDownDate = new Date("Apr 1, 2026 00:00:00").getTime();
        
        // Find the distance between now and the count down date
        var distance = countDownDate - now;
          
        // Time calculations for days, hours, minutes, and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
          
        // Output the result in an element with id="countdown"
        document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
        + minutes + "m " + seconds + "s ";
          
        // If the count down is over, write some text 
        if (distance < 0) {
          clearInterval(x);
          document.getElementById("countdown").innerHTML = "EXPIRED";
        }
      }, 1000);
  
  let slideIndex = 0;
  
  function showSlides() {
      let i;
      const slides = document.getElementsByClassName("mySlides");
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }
      slideIndex++;
      if (slideIndex > slides.length) {
          slideIndex = 1;
      }
      slides[slideIndex - 1].style.display = "block";
      setTimeout(showSlides, 5000); // Change slide every 5 seconds
  }
  
  // Initial call to start the slideshow
  showSlides();
  
  </script>
  
  </body>
  </html>
  
