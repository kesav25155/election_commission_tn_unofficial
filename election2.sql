INSERT INTO Party (PartyName, LeaderFirstName, LeaderLastName, FoundedYear, Symbol, Headquarters, Ideology, Description)
VALUES 
    ('AIADMK', 'k.', 'Palaniswami', 1972, 'Two Leaves', 'Chennai', 'Regionalism, Populism', 'All India Anna Dravida Munnetra Kazhagam (AIADMK) is a regional political party in the state of Tamil Nadu and Puducherry.'),
    ('DMK', 'M. K.', 'Stalin', 1949, 'Rising Sun', 'Chennai', 'Social democracy, Dravidian nationalism', 'Dravida Munnetra Kazhagam (DMK) is a major political party in Tamil Nadu and Puducherry.'),
    ('BJP', 'Annamalai', 'Kuppusamy', 1980, 'Lotus', 'Chennai', 'Nationalism, Hindutva', 'Bharatiya Janata Party (BJP) is a national political party with a presence in Tamil Nadu.'),
    ('Congress', 'K. S.', 'Alagiri', 1885, 'Hand', 'Chennai', 'Social democracy, Secularism', 'Indian National Congress is one of the oldest political parties in India with a presence in Tamil Nadu.'),
    ('PMK', 'S.', 'Ramadoss', 1989, 'Mango', 'Chennai', 'Regionalism, Social justice', 'Pattali Makkal Katchi (PMK) is a political party active in Tamil Nadu and other southern states in India.'),
    ('DMDK', 'Vijayakanth', '', 2005, 'Drums', 'Chennai', 'Social democracy, Secularism', 'Desiya Murpokku Dravida Kazhagam (DMDK) is a regional political party founded by actor Vijayakanth.'),
    ('MDMK', 'Vaiko', '', 1994, 'Top', 'Chennai', 'Social democracy, Tamil nationalism', 'Marumalarchi Dravida Munnetra Kazhagam (MDMK) is a political party advocating for the rights of the Tamil people.'),
    ('VCK', 'Thol.', 'Thirumavalavan', 2007, 'Ring', 'Chennai', 'Social justice, Equality', 'Viduthalai Chiruthaigal Katchi (VCK) is a party working for the social upliftment of the Dalit community.'),
    ('AMMK', 'T. T. V.', 'Dhinakaran', 2018, 'Cooker', 'Chennai', 'Populism, Regionalism', 'Amma Makkal Munnetra Kazhagam (AMMK) was founded by T. T. V. Dhinakaran after a split from AIADMK.'),
    ('NTK', 'Seeman', '', 2010, 'Farmer', 'Chennai', 'Tamil nationalism, Social justice', 'Naam Tamilar Katchi (NTK) is a party advocating for Tamil identity and social justice.'),
    ('MMK', 'M. H.', 'Jawahirullah', 2009, 'Book', 'Chennai', 'Social justice, Minority rights', 'Manithaneya Makkal Katchi (MMK) is a political party working for the welfare of minority communities in Tamil Nadu.');


INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('T. J. Govindrajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 126452, 56.94),
    ('Prakash M', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 75514, 34),
    ('Durai Chandrasekar', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 94528, 44.94),
    ('P. Balaraman', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 84839, 40.33),
    ('S. Chandran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 120314, 51.72),
    ('G. Hari', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 91061, 39.15),
    ('V. G. Raajendran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 107709, 50.27),
    ('B. V. Ramanaa', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85008, 39.68),
    ('A. Krishnaswamy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 149578, 56.72),
    ('S. X. Rajamannar', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 55468, 21.03),
    ('S. M. Nasar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 150287, 49.94),
    ('K. Pandiarajan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 95012, 31.57);


-- Insert data into constituencies table
INSERT INTO constituencies (assembly_constituency)
VALUES 
    ('Gummidipoondi'),
    ('Ponneri (SC)'),
    ('Tiruttani'),
    ('Thiruvallur'),
    ('Poonamallee (SC)'),
    ('Avadi');

-- Insert data into election_results table
INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES 
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gummidipoondi'), 78.84, 1, 2, 50938),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ponneri (SC)'), 78.68, 3, 4, 9689),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruttani'), 79.85, 5, 6, 29253),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruvallur'), 77.91, 7, 8, 22701),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Poonamallee (SC)'), 73.62, 9, 10, 94110),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Avadi'), 67.96, 11, 12, 55275);


-- Continue inserting data into constituencies table
INSERT INTO constituencies (assembly_constituency)
VALUES 
    ('Maduravoyal'),
    ('Ambattur'),
    ('Madavaram'),
    ('Thiruvottiyur'),
    ('Dr. Radhakrishnan Nagar'),
    ('Perambur'),
    ('Kolathur'),
    ('Villivakkam'),
    ('Thiru-Vi-Ka-Nagar (SC)'),
    ('Egmore (SC)'),
    ('Royapuram'),
    ('Harbour'),
    ('Chepauk-Thiruvallikeni'),
    ('Thousand Lights'),
    ('Anna Nagar'),
    ('Virugampakkam'),
    ('Saidapet'),
    ('Thiyagaraya Nagar'),
    ('Mylapore'),
    ('Velachery'),
    ('Shozhinganallur'),
    ('Alandur');


-- Insert data into candidates table
INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('K. Ganapathy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 121298, 44.29),
    ('P. Benjamin', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 89577, 32.71),
    ('Joseph Samuel', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 114554, 47.67),
    ('V. Alexander', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 72408, 30.13),
    ('S. Sudharsanam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 151485, 50.04),
    ('V. Moorthy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 94414, 31.19),
    ('K. P. Shankar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 88185, 44.34),
    ('K. Kuppan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 50524, 25.40),
    ('J. John Ebenezer', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95763, 51.2),
    ('R. S. Raajesh', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 53284, 28.49),
    ('R. D. Sekar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 105267, 52.53),
    ('N. R. Dhanapalan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 50291, 25.1),
    ('M. K. Stalin', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 105522, 60.86),
    ('Aadhi Rajaram', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 35138, 20.27),
    ('A. Vetriazhagan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 76127, 52.83),
    ('J. C. D. Prabhakar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 38890, 26.99),
    ('P. Sivakumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 81727, 61.13),
    ('P. L. Kalyani', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 26714, 19.98),
    ('I. Paranthamen', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 68832, 57.71),
    ('B. John Pandian', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 30064, 25.21),
    ('Idream R. Murthy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 64424, 53.16),
    ('D. Jayakumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 36645, 30.24),
    ('P. K. Sekar Babu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 59317, 58.35),
    ('Vinoj P. Selvam', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 32043, 31.52),
    ('Udhayanidhi Stalin', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93285, 67.89),
    ('A. V. A. Kassali', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 23930, 17.42),
    ('Dr. Ezhilan Naganathan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 49080, 53.88),
    ('Khushbu', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 25079, 27.53),
    ('M. K. Mohan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 80054, 48.49),
    ('S. Gokula Indira', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 52609, 31.87),
    ('A. M. V. Prabhakara Raja', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 74351, 43.97),
    ('Virugai V. N. Ravi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 55984, 33.11),
    ('Ma.Subramanian', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 80194, 50.02),
    ('S. Duraisamy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 50786, 31.68),
    ('J. Karunanithi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 56035, 40.57),
    ('B. Sathyanarayanan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 55898, 40.47),
    ('Dha. Velu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 68392, 44.58),
    ('R. Nataraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 55759, 36.34),
    ('J. M. H. Aassan Maulaana', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 68493, 38.76),
    ('M. K. Ashok', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 64141, 36.3),
    ('S. Aravind Ramesh', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 171558, 44.18),
    ('K. P. Kandan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 136153, 35.06),
    ('T. M. Anbarasan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 116785, 49.12),
    ('B. Valarmathi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 76214, 32.06);


-- Continue inserting data into election_results table
INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Maduravoyal'), 60.56, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Ganapathy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Benjamin'), 31721),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ambattur'), 62.52, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Joseph Samuel'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Alexander'), 42146),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madavaram'), 66.60, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Sudharsanam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Moorthy'), 57071),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruvottiyur'), 65.36, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. Shankar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Kuppan'), 37661),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Dr. Radhakrishnan Nagar'), 71.12, (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. John Ebenezer'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. S. Raajesh'), 42479),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Perambur'), 63.43, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. D. Sekar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. R. Dhanapalan'), 54976),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kolathur'), 61.66, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. K. Stalin'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Aadhi Rajaram'), 70384),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Villivakkam'), 56.43, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Vetriazhagan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. C. D. Prabhakar'), 37237),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiru-Vi-Ka-Nagar (SC)'), 60.93, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Sivakumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. L. Kalyani'), 55013),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Egmore (SC)'), 61.75, (SELECT candidate_id FROM candidates WHERE candidate_name = 'I. Paranthamen'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'B. John Pandian'), 38768),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Royapuram'), 62.91, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Idream R. Murthy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. Jayakumar'), 27779),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Harbour'), 57.83, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. K. Sekar Babu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Vinoj P. Selvam'), 27274),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Chepauk-Thiruvallikeni'), 58.70, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Udhayanidhi Stalin'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. V. A. Kassali'), 69355),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thousand Lights'), 56.62, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. Ezhilan Naganathan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Khushbu'), 24001),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Anna Nagar'), 57.71, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. K. Mohan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Gokula Indira'), 27445),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Virugampakkam'), 57.97, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. M. V. Prabhakara Raja'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Virugai V. N. Ravi'), 18367),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Saidapet'), 57.46, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Ma.Subramanian'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Duraisamy'), 29408),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiyagaraya Nagar'), 56.36, (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. Karunanithi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'B. Sathyanarayanan'), 137),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mylapore'), 56.71, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dha. Velu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Nataraj'), 12633),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Velachery'), 56.17, (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. M. H. Aassan Maulaana'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. K. Ashok'), 4352),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Shozhinganallur'), 55.57, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Aravind Ramesh'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. Kandan'), 35405),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Alandur'), 61.10, (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. M. Anbarasan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'B. Valarmathi'), 40571);


-- Continue inserting data into constituencies table
INSERT INTO constituencies (assembly_constituency)
VALUES 
    ('Sriperumbudur (SC)'),
    ('Pallavaram'),
    ('Tambaram'),
    ('Chengalpattu'),
    ('Thiruporur'),
    ('Cheyyur (SC)'),
    ('Maduranthakam (SC)');


-- Insert data into candidates table for new constituencies
INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('K. Selvaperunthagai', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 115353, 43.65),
    ('K. Palani', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 104474, 39.53),
    ('I. Karunanithi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 126427, 47.49),
    ('S. Rajendran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88646, 33.3),
    ('S. R. Raja', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 116840, 46.93),
    ('T. K. M. Chinnayya', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 80016, 32.14),
    ('M. Varalakshmi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 130573, 47.64),
    ('M. Gajendran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 103908, 37.91),
    ('S. S. Balaji', (SELECT PartyID FROM Party WHERE PartyName = 'VCK'), 93954, 41.44),
    ('Thirukachur Arumugam', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 92007, 40.58),
    ('M. Babu', (SELECT PartyID FROM Party WHERE PartyName = 'VCK'), 82750, 46.2),
    ('S. Kanitha Sampath', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 78708, 43.94),
    ('Maragatham Kumaravel', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 86646, 46.62),
    ('Mallai C. E. Sathya', (SELECT PartyID FROM Party WHERE PartyName = 'MDMK'), 83076, 44.7);

INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sriperumbudur (SC)'), 74.68, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Selvaperunthagai'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Palani'), 10879),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Pallavaram'), 61.02, (SELECT candidate_id FROM candidates WHERE candidate_name = 'I. Karunanithi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Rajendran'), 37781),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tambaram'), 59.90, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. R. Raja'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. K. M. Chinnayya'), 36824),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Chengalpattu'), 63.97, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Varalakshmi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Gajendran'), 26665),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruporur'), 76.96, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. S. Balaji'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thirukachur Arumugam'), 1947),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Cheyyur (SC)'), 78.75, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Babu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Kanitha Sampath'), 4042),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Maduranthakam (SC)'), 81.97, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Maragatham Kumaravel'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Mallai C. E. Sathya'), 3570);



-- Insert data into constituencies table for new constituencies
INSERT INTO constituencies (assembly_constituency)
VALUES 
    ('Uthiramerur'),
    ('Kancheepuram'),
    ('Arakkonam (SC)'),
    ('Sholingur'),
    ('Ranipet'),
    ('Arcot'),
    ('Katpadi'),
    ('Vellore'),
    ('Anaikattu'),
    ('Kilvaithinankuppam (SC)'),
    ('Gudiyattam (SC)');

-- Insert data into candidates table for new constituencies
INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('K. Sundar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93427, 44.38),
    ('V. Somasundaram', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 91805, 43.61),
    ('C. V. M. P. Ezhilarasan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103235, 44.77),
    ('P. Mageshkumar', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 91236, 39.71),
    ('S. Ravi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85399, 49.82),
    ('J. Gowthama Sannah', (SELECT PartyID FROM Party WHERE PartyName = 'VCK'), 58230, 33.97),
    ('A. N. Munirathinam', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 110228, 49.18),
    ('A. M. Krishnan', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 83530, 37.27),
    ('R. Gandhi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103291, 49.79),
    ('S. M. Sukumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 86793, 41.84),
    ('J. L. Eswarappan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103885, 49.52),
    ('K. L. Elavazhagan', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 83927, 40.01),
    ('Durai Murugan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 85140, 45.71),
    ('V. Ramu', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 84394, 45.31),
    ('P. Karthikeyan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 84299, 46.86),
    ('S. R. K. Appu', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 75118, 41.76),
    ('A. P. Nandakumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95159, 48.11),
    ('D. Velazhagan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88799, 44.89),
    ('M. Jaganmoorthy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK (PBK)'), 84579, 48.57),
    ('K. Seetharaman', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 73997, 42.5),
    ('V. Amulu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 100412, 47.45),
    ('G. Paridha', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 93511, 44.19);

-- Insert data into election_results table for new constituencies
INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Uthiramerur'), 80.83, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Sundar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Somasundaram'), 1622),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kancheepuram'), 74.20, (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. V. M. P. Ezhilarasan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Mageshkumar'), 11999),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Arakkonam (SC)'), 75.41, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Ravi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. Gowthama Sannah'), 27169),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sholingur'), 80.60, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. N. Munirathinam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. M. Krishnan'), 24878),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ranipet'), 77.63, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Gandhi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. M. Sukumar'), 16498),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Arcot'), 79.93, (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. L. Eswarappan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. L. Elavazhagan'), 19958),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Katpadi'), 74.43, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Durai Murugan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Ramu'), 746),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vellore'), 70.96, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Karthikeyan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. R. K. Appu'), 9181),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Anaikattu'), 77.05, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. P. Nandakumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. Velazhagan'), 6360),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kilvaithinankuppam (SC)'), 76.63, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Jaganmoorthy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Seetharaman'), 10582),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gudiyattam (SC)'), 72.94, (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Amulu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Paridha'), 6901);


-- Insert data into constituencies table for new constituencies
INSERT INTO constituencies (assembly_constituency)
VALUES 
    ('Vaniyambadi'),
    ('Ambur'),
    ('Jolarpet'),
    ('Tirupattur (Vellore)'),
    ('Uthangarai (SC)'),
    ('Bargur'),
    ('Krishnagiri'),
    ('Veppanahalli'),
    ('Hosur'),
    ('Thalli');

-- Insert data into candidates table for new constituencies
INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('G Sendhil Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88018, 46.33),
    ('N. Mohammad Nayeem', (SELECT PartyID FROM Party WHERE PartyName = 'IUML'), 83114, 43.74),
    ('A. C. Vilwanathan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 90476, 50.86),
    ('K. Nazar Mohammed', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 70244, 39.49),
    ('K. Devaraji', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 89490, 45.57),
    ('K. C. Veeramani', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88399, 45.02),
    ('A. Nallathambi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 96522, 51.91),
    ('T. K. Raja', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 68282, 36.72),
    ('T. M. Tamilselvam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 99675, 52.96),
    ('J. S. Arumugam', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 71288, 37.87),
    ('D. Mathiazhagan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 97256, 49.17),
    ('A. Krishnan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 84642, 42.8),
    ('K. Ashok Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 96050, 45.38),
    ('T. Senguttuvan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95256, 45.01),
    ('K. P. Munusamy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 94104, 45.87),
    ('P. Murugan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 91050, 44.38),
    ('Y. Prakaash', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 118231, 47.65),
    ('S. Jyothi Balakrishna Reddy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 105864, 42.67),
    ('T. Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'CPI'), 120641, 62.18),
    ('Dr. C. Nagesh Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 64415, 33.2);

-- Insert data into election_results table for new constituencies
INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vaniyambadi'), 75.93, (SELECT candidate_id FROM candidates WHERE candidate_name = 'G Sendhil Kumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Mohammad Nayeem'), 4904),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ambur'), 74.59, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. C. Vilwanathan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Nazar Mohammed'), 20232),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Jolarpet'), 81.52, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Devaraji'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. C. Veeramani'), 1091),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tirupattur (Vellore)'), 77.72, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Nallathambi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. K. Raja'), 28240),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Uthangarai (SC)'), 78.99, (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. M. Tamilselvam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. S. Arumugam'), 28387),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Bargur'), 79.64, (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. Mathiazhagan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Krishnan'), 12614),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Krishnagiri'), 78.92, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Ashok Kumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Senguttuvan'), 794),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Veppanahalli'), 81.38, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. Munusamy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Murugan'), 3054),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Hosur'), 70.53, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Y. Prakaash'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Jyothi Balakrishna Reddy'), 12367),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thalli'), 77.23, (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Ramachandran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. C. Nagesh Kumar'), 56226);


-- Insert data into constituencies table for new constituencies
INSERT INTO constituencies (assembly_constituency)
VALUES 
    ('Palacode'),
    ('Pennagaram'),
    ('Dharmapuri'),
    ('Pappireddippatti'),
    ('Harur (SC)'),
    ('Chengam (SC)'),
    ('Tiruvannamalai'),
    ('Kilpennathur'),
    ('Kalasapakkam'),
    ('Polur'),
    ('Arani'),
    ('Cheyyar'),
    ('Vandavasi (SC)');

-- Insert data into candidates table for new constituencies
INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('K. P. Anbalagan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 110070, 53.28),
    ('P. K. Murugan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 81970, 39.68),
    ('G. K. Mani', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 106123, 50.46),
    ('P. N. P. Inbasekaran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 84937, 40.39),
    ('S. P. Venkateshwaran', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 105630, 48.6),
    ('Thadangam P. Subramani', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 78770, 36.24),
    ('A. Govindasamy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 114507, 51.81),
    ('M. Prabhu Rajasekar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 77564, 35.1),
    ('V. Sampathkumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 99061, 49.89),
    ('A. Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'CPI(M)'), 68699, 34.6),
    ('M. P. Giri', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 108081, 48.26),
    ('M. S. Nainakannu', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 96511, 43.09),
    ('E. V. Velu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 137876, 66.02),
    ('S. Thanigaivel', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 43203, 20.69),
    ('K. Pitchandi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 104675, 51.34),
    ('K. Selvakumar', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 77888, 38.2),
    ('P. S. T. Saravanan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 94134, 47.92),
    ('V. Panneerselvam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 84912, 43.23),
    ('S. S. Krishnamoorthy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 97732, 48.38),
    ('K. V. Sekaran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 88007, 43.57),
    ('Sevvoor S. Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 102961, 46.5),
    ('S. S. Anbazhagan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 99833, 45.09),
    ('O. Jothi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 102460, 47.78),
    ('K. Mohan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 90189, 42.05),
    ('S. Ambethkumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 102064, 54.88),
    ('S. Murali Shankar', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 66111, 35.55);

-- Insert data into election_results table for new constituencies
INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Palacode'), 87.03, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. Anbalagan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. K. Murugan'), 28100),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Pennagaram'), 85.22, (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. K. Mani'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. N. P. Inbasekaran'), 21186),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Dharmapuri'), 80.56, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. P. Venkateshwaran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thadangam P. Subramani'), 26860),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Pappireddippatti'), 83.24, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Govindasamy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Prabhu Rajasekar'), 36943),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Harur (SC)'), 79.39, (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Sampathkumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Kumar'), 30362),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Chengam (SC)'), 81.31, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. P. Giri'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. S. Nainakannu'), 11570),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruvannamalai'), 72.87, (SELECT candidate_id FROM candidates WHERE candidate_name = 'E. V. Velu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Thanigaivel'), 94673),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kilpennathur'), 80.41, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Pitchandi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Selvakumar'), 26787),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kalasapakkam'), 80.62, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. S. T. Saravanan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Panneerselvam'), 9222),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Polur'), 82.39, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. S. Krishnamoorthy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. V. Sekaran'), 9725),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Arani'), 79.73, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Sevvoor S. Ramachandran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. S. Anbazhagan'), 3128),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Cheyyar'), 82.52, (SELECT candidate_id FROM candidates WHERE candidate_name = 'O. Jothi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Mohan'), 12771),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vandavasi (SC)'), 77.28, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Ambethkumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Murali Shankar'), 35953);



    -- Insert data into constituencies table for the remaining constituencies
INSERT INTO constituencies (assembly_constituency) VALUES
    ('Gingee'),
    ('Mailam'),
    ('Tindivanam'),
    ('Vanur (SC)'),
    ('Villupuram'),
    ('Vikravandi'),
    ('Tirukkoyilur'),
    ('Ulundurpettai'),
    ('Rishivandiyam'),
    ('Sankarapuram'),
    ('Kallakurichi (SC)'),
    ('Gangavalli (SC)'),
    ('Attur (SC)'),
    ('Yercaud (ST)');

INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES 
    ('K. S. Masthan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 109625, 52.99),
    ('M. P. S. Rajendran', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 73822, 35.68),
    ('C. Sivakumar', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 81044, 45.79),
    ('Dr. R. Masilamani', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 78814, 44.53),
    ('P. Arjunan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 87152, 47.74),
    ('P. Seethapathy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 77399, 42.4),
    ('M. Chakrapani', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 92219, 50.61),
    ('Vanni Arasu', (SELECT PartyID FROM Party WHERE PartyName = 'VCK'), 70492, 38.69),
    ('R. Lakshmanan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 102271, 49.92),
    ('C. V. Shanmugam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 87403, 42.66),
    ('N. Pugazhenthi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93730, 48.81),
    ('R. Muthamilselvan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 84157, 43.47),
    ('K. Ponmudy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 110980, 56.56),
    ('V. A. T. Kalivaradhan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 51300, 26.14),
    ('A. J. Manikannan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 115451, 47.15),
    ('R. Kumaraguru', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 110195, 45),
    ('K. Karthikeyan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 113912, 52.96),
    ('A. Santhosh', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 72184, 33.56),
    ('T. Udhayasuriyan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 121186, 56.16),
    ('Dr. G. Raja', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 75223, 34.86),
    ('M. Senthilkumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 110643, 48.99),
    ('K. I. Manirathinam', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 84752, 37.52),
    ('A. Nallathambi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 89568, 48.02),
    ('J. Rekha Priyadarshini', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 82207, 44.08),
    ('A. P. Jayasankaran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 95308, 47.72),
    ('K. Chinnadurai', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 87051, 43.58),
    ('G. Chitra', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 121561, 50.88),
    ('C. Tamilselvan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95606, 40.02);

INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gingee' ORDER BY constituency_id DESC LIMIT 1),
        79.30,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. S. Masthan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. P. S. Rajendran' ORDER BY candidate_id DESC LIMIT 1),
        35803
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mailam' ORDER BY constituency_id DESC LIMIT 1),
        78.33,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Sivakumar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. R. Masilamani' ORDER BY candidate_id DESC LIMIT 1),
        2230
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tindivanam' ORDER BY constituency_id DESC LIMIT 1),
        79.17,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Arjunan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Seethapathy' ORDER BY candidate_id DESC LIMIT 1),
        9753
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vanur (SC)' ORDER BY constituency_id DESC LIMIT 1),
        80.41,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Chakrapani' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Vanni Arasu' ORDER BY candidate_id DESC LIMIT 1),
        21727
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Villupuram' ORDER BY constituency_id DESC LIMIT 1),
        78.14,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Lakshmanan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. V. Shanmugam' ORDER BY candidate_id DESC LIMIT 1),
        14868
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vikravandi' ORDER BY constituency_id DESC LIMIT 1),
        82.45,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Pugazhenthi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Muthamilselvan' ORDER BY candidate_id DESC LIMIT 1),
        9573
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tirukkoyilur' ORDER BY constituency_id DESC LIMIT 1),
        77.03,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Ponmudy' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. A. T. Kalivaradhan' ORDER BY candidate_id DESC LIMIT 1),
        59680
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ulundurpettai' ORDER BY constituency_id DESC LIMIT 1),
        83.44,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. J. Manikannan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Kumaraguru' ORDER BY candidate_id DESC LIMIT 1),
        5256
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Rishivandiyam' ORDER BY constituency_id DESC LIMIT 1),
        80.17,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Karthikeyan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Santhosh' ORDER BY candidate_id DESC LIMIT 1),
        41728
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sankarapuram' ORDER BY constituency_id DESC LIMIT 1),
        80.35,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Udhayasuriyan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. G. Raja' ORDER BY candidate_id DESC LIMIT 1),
        45963
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kallakurichi (SC)' ORDER BY constituency_id DESC LIMIT 1),
        78.80,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Senthilkumar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. I. Manirathinam' ORDER BY candidate_id DESC LIMIT 1),
        25891
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gangavalli (SC)' ORDER BY constituency_id DESC LIMIT 1),
        78.03,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Nallathambi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. Rekha Priyadarshini' ORDER BY candidate_id DESC LIMIT 1),
        7361
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Attur (SC)' ORDER BY constituency_id DESC LIMIT 1),
        78.42,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. P. Jayasankaran' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Chinnadurai' ORDER BY candidate_id DESC LIMIT 1),
        8257
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Yercaud (ST)' ORDER BY constituency_id DESC LIMIT 1),
        84.12,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Chitra' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Tamilselvan' ORDER BY candidate_id DESC LIMIT 1),
        25955
    );



INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Omalur'),
    ('Mettur'),
    ('Edappadi'),
    ('Sankari'),
    ('Salem (West)'),
    ('Salem (North)'),
    ('Salem (South)'),
    ('Veerapandi');

-- Insert values into the Election_Results table

INSERT INTO candidates (candidate_name, percentage, party_id, votes)
VALUES
    ('R. Mani', 57.22, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 142488),
    ('Rangarajan Mohan Kumaramangalam', 35.01, (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 87194),
    ('S. Sadhasivam', 44.43, (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 97055),
    ('S. Srinivasa Perumal', 44.13, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 96399),
    ('Edappadi K. Palaniswami', 65.97, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 163154),
    ('Sampath Kumar', 28.04, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 69352),
    ('S. Sundararajan', 49.72, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 115472),
    ('K. M. Rajesh', 41.09, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95427),
    ('Arul Ramadas', 48.69, (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 105483),
     ('A. Rajendran', 38.77, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 83984),
    ('R. Rajendran', 46.17, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93432),
    ('G. Venkatachalam', 42.42, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85844),
    ('E. Balasubramanian', 48.76, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 97506),
    ('A. S. Saravanan', 37.45, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 74897),
    ('M. Rajamuthu', 49.92, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 111682),
    
    ('Dr. A. K. Tharun', 41.03, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 91787);
    
    
   
    
    INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Omalur' ORDER BY constituency_id DESC LIMIT 1),
        84.08,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Mani' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Rangarajan Mohan Kumaramangalam' ORDER BY candidate_id DESC LIMIT 1),
        55294
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mettur' ORDER BY constituency_id DESC LIMIT 1),
        76.15,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Sadhasivam' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Srinivasa Perumal' ORDER BY candidate_id DESC LIMIT 1),
        656
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Edappadi' ORDER BY constituency_id DESC LIMIT 1),
        86.68,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Edappadi K. Palaniswami' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Sampath Kumar' ORDER BY candidate_id DESC LIMIT 1),
        93802
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sankari' ORDER BY constituency_id DESC LIMIT 1),
        84.67,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Sundararajan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. M. Rajesh' ORDER BY candidate_id DESC LIMIT 1),
        20045
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Salem (West)' ORDER BY constituency_id DESC LIMIT 1),
        72.28,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Arul Ramadas' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Rajendran' ORDER BY candidate_id DESC LIMIT 1),
        21499
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Salem (North)' ORDER BY constituency_id DESC LIMIT 1),
        73.32,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Rajendran' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Venkatachalam' ORDER BY candidate_id DESC LIMIT 1),
        7588
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Salem (South)' ORDER BY constituency_id DESC LIMIT 1),
        76.08,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'E. Balasubramanian' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. S. Saravanan' ORDER BY candidate_id DESC LIMIT 1),
        22609
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Veerapandi' ORDER BY constituency_id DESC LIMIT 1),
        86.02,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Rajamuthu' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. A. K. Tharun' ORDER BY candidate_id DESC LIMIT 1),
        19895
    );



INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Rasipuram (SC)'),
    ('Senthamangalam (ST)'),
    ('Namakkal'),
    ('Paramathi-Velur'),
    ('Tiruchengodu'),
    ('Kumarapalayam'),
    ('Erode (East)'),
    ('Erode (West)'),
    ('Modakkurichi'),
    ('Dharapuram (SC)'),
    ('Kangayam');

    
INSERT INTO candidates (candidate_name, percentage, party_id, votes)
VALUES
    -- Winner
    ('M. Mathiventhan', 83.23, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 90727),
    -- Runner-up
    ('V. Saroja', 46.08, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88775),
    -- Repeat the pattern for other sets of candidates
    ('K. Ponnusamy', 81.80, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 90681),
    ('S. Chandran', 45.51, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 80188),
    ('P. Ramalingam', 80.18, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 106494),
    ('K. P. P. Baskar', 51.51, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 78633),
    ('S. Sekar', 82.87, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 86034),
    ('K. S. Moorthy', 46.83, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 78372),
    ('E. R. Eswaran', 79.90, (SELECT PartyID FROM Party WHERE PartyName = 'DMK (KMDK)'), 81688),
    ('Pon. Saraswathi', 44.23, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 78826),
    ('P. Thangamani', 79.35, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 100800),
    ('M. Venkatachalam', 49.92, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 69154),
    ('Thirumagan Evera', 66.56, (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 67300),
    ('M. Yuvaraja', 44.27, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK (TMC(M))'), 58396),
    ('S. Muthusamy', 70.14, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 100757),
    ('K. V. Ramalingam', 49.01, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 78668),
    ('Dr. C.K. Saraswathi', 76.11, (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 78125),
    ('Subbulakshmi Jagadeesan', 42.96, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 77844),
    ('N. Kayalvizhi', 75.02, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 89986),
    ('L. Murugan', 46.39, (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 88593),
    ('M. P. Saminathan', 77.69, (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 94197),
    ('A. S. Ramalingam', 47.14, (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 86866);


INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Rasipuram (SC)' ORDER BY constituency_id DESC LIMIT 1),
        83.23,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Mathiventhan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Saroja' ORDER BY candidate_id DESC LIMIT 1),
        1952
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Senthamangalam (ST)' ORDER BY constituency_id DESC LIMIT 1),
        81.80,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Ponnusamy' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Chandran' ORDER BY candidate_id DESC LIMIT 1),
        10493
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Namakkal' ORDER BY constituency_id DESC LIMIT 1),
        80.18,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Ramalingam' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. P. Baskar' ORDER BY candidate_id DESC LIMIT 1),
        27861
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Paramathi-Velur' ORDER BY constituency_id DESC LIMIT 1),
        82.87,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Sekar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. S. Moorthy' ORDER BY candidate_id DESC LIMIT 1),
        7662
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruchengodu' ORDER BY constituency_id DESC LIMIT 1),
        79.90,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'E. R. Eswaran' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Pon. Saraswathi' ORDER BY candidate_id DESC LIMIT 1),
        2862
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kumarapalayam' ORDER BY constituency_id DESC LIMIT 1),
        79.35,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Thangamani' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Venkatachalam' ORDER BY candidate_id DESC LIMIT 1),
        31646
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Erode (East)' ORDER BY constituency_id DESC LIMIT 1),
        66.56,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thirumagan Evera' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Yuvaraja' ORDER BY candidate_id DESC LIMIT 1),
        8904
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Erode (West)' ORDER BY constituency_id DESC LIMIT 1),
        70.14,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Muthusamy' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. V. Ramalingam' ORDER BY candidate_id DESC LIMIT 1),
        22089
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Modakkurichi' ORDER BY constituency_id DESC LIMIT 1),
        76.11,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. C.K. Saraswathi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Subbulakshmi Jagadeesan' ORDER BY candidate_id DESC LIMIT 1),
        281
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Dharapuram (SC)' ORDER BY constituency_id DESC LIMIT 1),
        75.02,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Kayalvizhi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'L. Murugan' ORDER BY candidate_id DESC LIMIT 1),
        1393
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kangayam' ORDER BY constituency_id DESC LIMIT 1),
        77.69,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. P. Saminathan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. S. Ramalingam' ORDER BY candidate_id DESC LIMIT 1),
        7331
    );


    
INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Perundurai'),
    ('Bhavani'),
    ('Anthiyur'),
    ('Gobichettipalayam'),
    ('Bhavanisagar (SC)'),
    ('Udhagamandalam'),
    ('Gudalur (SC)'),
    ('Coonoor'),
    ('Mettupalayam'),
    ('Avanashi (SC)'),
    ('Tiruppur (North)'),
    ('Tiruppur (South)'),
    ('Palladam');

   INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('S. Jayakumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85125, 44.84),
    ('K. K. C. Balu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 70618, 37.2),
    ('K. C. Karuppannan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 100915, 50.11),
    ('K. P. Durairaj', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 78392, 38.93),
    ('A. G. Venkatachalam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 79096, 44.84),
    ('K. S. Shanmugavel', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 77821, 44.12),
    ('K. A. Sengottaiyan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 108608, 50.68),
    ('G. V. Manimaaran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 80045, 37.36),
    ('A. Bannari', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 99181, 49.45),
    ('P. L. Sundaram', (SELECT PartyID FROM Party WHERE PartyName = 'CPI'), 83173, 41.47),
    ('R. Ganesh', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 65530, 46.44),
    ('M. Bhojarajan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 60182, 42.65),
    ('Pon. Jayaseelan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 64496, 46.65),
    ('S. Kasilingam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 62551, 45.24),
    ('K. Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 61820, 45.49),
    ('Kappachi D. Vinoth', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 57715, 42.47),
    ('A. K. Selvaraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 105231, 46.75),
    ('T. R. Shanmuga Sundaram', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 102775, 45.66),
    ('P. Dhanapal', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 117284, 55.16),
    ('R. Athiyamaan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (ATP)'), 66382, 31.22),
    ('K. N. Vijayakumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 113384, 47.62),
    ('Ravi @ Subramanian M', (SELECT PartyID FROM Party WHERE PartyName = 'CPI'), 73282, 30.78),
    ('K. Selvaraj', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 75535, 43.31),
    ('Gunasekaran S', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 70826, 40.61),
    ('M. S. M. Anandan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 126903, 48.53),
    ('K. Muthurathinam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MDMK)'), 94212, 36.03);




INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Perundurai'), 83.31, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Jayakumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. K. C. Balu'), 14507),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Bhavani'), 84.36, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. C. Karuppannan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. Durairaj'), 22523),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Anthiyur'), 80.32, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. G. Venkatachalam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. S. Shanmugavel'), 1275),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gobichettipalayam'), 83.58, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. A. Sengottaiyan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. V. Manimaaran'), 28563),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Bhavanisagar (SC)'), 77.08, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Bannari'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. L. Sundaram'), 16008),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Udhagamandalam'), 68.48, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Ganesh'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Bhojarajan'), 5348),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gudalur (SC)'), 73.08, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Pon. Jayaseelan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Kasilingam'), 1945),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Coonoor'), 70.74, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Ramachandran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Kappachi D. Vinoth'), 4105),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mettupalayam'), 75.80, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. K. Selvaraj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. R. Shanmuga Sundaram'), 2456),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Avanashi (SC)'), 75.79, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Dhanapal'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Athiyamaan'), 50982),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruppur (North)'), 62.80, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. N. Vijayakumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Ravi @ Subramanian M'), 40102),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruppur (South)'), 62.79, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Selvaraj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Gunasekaran S'), 4709),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Palladam'), 67.09, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. S. M. Anandan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Muthurathinam'), 32691);

INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Sulur'),
    ('Kavundampalayam'),
    ('Coimbatore (North)'),
    ('Thondamuthur'),
    ('Coimbatore (South)'),
    ('Singanallur'),
    ('Kinathukadavu'),
    ('Pollachi'),
    ('Valparai (SC)'),
    ('Udumalaipettai'),
    ('Madathukulam'),
    ('Palani'),
    ('Oddanchatram'),
    ('Athoor'),
    ('Nilakottai (SC)'),
    ('Natham'),
    ('Dindigul'),
    ('Vedasandur');


INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('V. P. Kandasamy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 118968, 49.23),
    ('Premier Selvam (A) M. Kalichamy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 87036, 36.02),
    ('G. Arunkumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 135669, 43.78),
    ('R Krishnan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 125893, 40.62),
    ('Amman K. Arjunan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 81454, 40.16),
    ('V M Shamuga Sundaram', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 77453, 38.19),
    ('S. P. Velumani', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 124225, 53.89),
    ('Karthikeya Sivasenapathy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 82595, 35.83),
    ('Vanathi Srinivasan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 53209, 34.38),
    ('Kamal Haasan', (SELECT PartyID FROM Party WHERE PartyName = 'MNM'), 51481, 33.26),
    ('K. R. Jayaram', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 81244, 40.22),
    ('Karthik N', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 70390, 34.84),
    ('S. Damodaran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 101537, 43.68),
    ('Kuruchi Prabhakaran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 100442, 43.21),
    ('Pollachi V. Jayaraman', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 80567, 45.44),
    ('K Varadharajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 78842, 44.47),
    ('T. K. Amulkandasami', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 71672, 49.37),
    ('Arumugam M', (SELECT PartyID FROM Party WHERE PartyName = 'CPI'), 59449, 40.95),
    ('Udumalai K. Radhakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 96893, 49.85),
    ('K. Thennarsu', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 74998, 38.59),
    ('C. Mahendran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 84313, 46.35),
    ('Jayaramakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 77875, 42.81),
    ('I. P. Senthil Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 108566, 52.86),
    ('K. Ravi Manoharan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 78510, 38.23),
    ('R. Sakkarapani', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 109970, 54.51),
    ('N. P. Nataraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 81228, 40.26),
    ('I. Periyasamy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 165809, 72.11),
    ('M Thilagabama', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 30238, 13.15),
    ('S. Thenmozhi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 91461, 49.49),
    ('S. K. Murugavel Rajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MVK)'), 63843, 34.55),
    ('Natham R. Viswanathan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 107762, 47.84),
    ('M. A. Andi Ambalam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95830, 42.54),
    ('Dindigul C. Sreenivaasan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 90545, 46.83),
    ('N. Pandi', (SELECT PartyID FROM Party WHERE PartyName = 'CPI(M)'), 72848, 34.34),
    ('S. Gandhirajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 106481, 49.97),
    ('V. P. B. Paramasivam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88928, 41.73);


INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sulur'), 76.18, (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. P. Kandasamy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Premier Selvam (A) M. Kalichamy'), 32302),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kavundampalayam'), 66.60, (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Arunkumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R Krishnan'), 9776),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Coimbatore (North)'), 59.87, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Amman K. Arjunan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V M Shamuga Sundaram'), 4001),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thondamuthur'), 70.54, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. P. Velumani'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Karthikeya Sivasenapathy'), 41630),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Coimbatore (South)'), 61.22, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Vanathi Srinivasan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Kamal Haasan'), 1728),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Singanallur'), 62.11, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. R. Jayaram'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Karthik N'), 10854),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kinathukadavu'), 71.10, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Damodaran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Kuruchi Prabhakaran'), 1095),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Pollachi'), 78.08, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Pollachi V. Jayaraman'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K Varadharajan'), 1725),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Valparai (SC)'), 70.63, (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. K. Amulkandasami'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Arumugam M'), 12223),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Udumalaipettai'), 72.05, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Udumalai K. Radhakrishnan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Thennarsu'), 21895),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madathukulam'), 73.20, (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Mahendran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Jayaramakrishnan'), 6438),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Palani'), 74.07, (SELECT candidate_id FROM candidates WHERE candidate_name = 'I. P. Senthil Kumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Ravi Manoharan'), 30056),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Oddanchatram'), 83.63, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Sakkarapani'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. P. Nataraj'), 28742),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Athoor'), 78.76, (SELECT candidate_id FROM candidates WHERE candidate_name = 'I. Periyasamy'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M Thilagabama'), 135571),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Nilakottai (SC)'), 75.57, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Thenmozhi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. K. Murugavel Rajan'), 27618),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Natham'), 79.44, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Natham R. Viswanathan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. A. Andi Ambalam'), 11932),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Dindigul'), 70.49, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dindigul C. Sreenivaasan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Pandi'), 17697),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vedasandur'), 80.85, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Gandhirajan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. P. B. Paramasivam'), 17553);


INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Aravakurichi'),
    ('Karur'),
    ('Krishnarayapuram (SC)'),
    ('Kulithalai'),
    ('Manapaarai'),
    ('Srirangam'),
    ('Tiruchirappalli (West)'),
    ('Tiruchirappalli (East)'),
    ('Thiruverumbur'),
    ('Lalgudi'),
    ('Manachanallur'),
    ('Musiri'),
    ('Thuraiyur (SC)');

    INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('R. Elango', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93369, 52.72),
    ('Annamalai Kuppuswamy', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 68553, 38.71),
    ('V. Senthilbalaji', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 101757, 49.08),
    ('M. R. Vijayabhaskar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 89309, 43.08),
    ('K. Sivagama Sundari', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 96540, 53.37),
    ('N. Muthukumar (A) Thanesh', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 64915, 35.88),
    ('R. Manickam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 100829, 51.06),
    ('N. R. Chandrasekar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 77289, 39.14),
    ('P. Abdul Samad', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MMK)'), 98077, 44.23),
    ('Chandraseker. R', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85834, 38.71),
    ('M. Palaniyandi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 113904, 47.41),
    ('K. P. Krishnan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 93989, 39.12),
    ('K. N. Nehru', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 118133, 64.52),
    ('V. Padmanathan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 33024, 18.04),
    ('Inigo S. Irudayaraj', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 94302, 54.56),
    ('Vellamandi N. Natarajan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 40505, 23.43),
    ('Anbil Mahesh Poyyamozhi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 105424, 53.51),
    ('P. Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 55727, 28.29),
    ('A. Soundara Pandian', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 84914, 48.59),
    ('D. R. Dharmarajè', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK (TMC(M))'), 67965, 38.89),
    ('S. Kathiravan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 116334, 59.14),
    ('M. Paranjothi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 56716, 28.83),
    ('N. Thiyagarajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 90624, 50.43),
    ('M. Selvarasu', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 63788, 35.5),
    ('S. Stalinkumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 87786, 49.91),
    ('T. Indira Gandhi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 65715, 37.36);



INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Aravakurichi'), 82.78, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Elango'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Annamalai Kuppuswamy'), 24816),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Karur'), 84.49, (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Senthilbalaji'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. R. Vijayabhaskar'), 12448),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Krishnarayapuram (SC)'), 84.91, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Sivagama Sundari'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Muthukumar (A) Thanesh'), 29625),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kulithalai'), 86.88, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Manickam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. R. Chandrasekar'), 23540),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Manapaarai'), 76.54, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Abdul Samad'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Chandraseker. R'), 12243),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Srirangam'), 77.07, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Palaniyandi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. P. Krishnan'), 19915),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruchirappalli (West)'), 68.02, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. N. Nehru'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Padmanathan'), 85109),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruchirappalli (East)'), 67.77, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Inigo S. Irudayaraj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Vellamandi N. Natarajan'), 53797),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruverumbur'), 67.19, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Anbil Mahesh Poyyamozhi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Kumar'), 49697),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Lalgudi'), 80.11, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Soundara Pandian'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. R. Dharmarajè'), 16949),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Manachanallur'), 80.56, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Kathiravan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Paranjothi'), 59618),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Musiri'), 77.24, (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Thiyagarajan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Selvarasu'), 26836),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thuraiyur (SC)'), 77.77, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Stalinkumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Indira Gandhi'), 22071);



INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Perambalur (SC)'),
    ('Kunnam'),
    ('Ariyalur'),
    ('Jayankondam'),
    ('Tittakudi (SC)'),
    ('Vriddhachalam'),
    ('Neyveli'),
    ('Panruti'),
    ('Cuddalore'),
    ('Kurinjipadi'),
    ('Bhuvanagiri'),
    ('Chidambaram'),
    ('Kattumannarkoil (SC)'),
    ('Sirkazhi (SC)'),
    ('Mayiladuthurai'),
    ('Poompuhar');

    INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('M. Prabhakaran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 122090, 50.87),
    ('R. Thamizhselvan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 90325, 37.94),
    ('S. S. Sivasankar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103922, 47.26),
    ('R. T. Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 97593, 44.38),
    ('K. Chinnappa', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MDMK)'), 103975, 46.16),
    ('Thamarai S. Rajendran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 100741, 44.73),
    ('Ka. So. Ka. Kannan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 99529, 46.0),
    ('K. Balu', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 94077, 43.48),
    ('C. V. Ganesan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 83726, 49.78),
    ('D. Periyasamy', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 62163, 36.96),
    ('R. Radhakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 77064, 39.17),
    ('J. Karthikeyan', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 76202, 38.73),
    ('Saba Rajendran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 75177, 45.8),
    ('K. Jagan', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 74200, 45.21),
    ('T. Velmurugan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (TVK)'), 93801, 47.6),
    ('R. Rajendran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 89104, 45.22),
    ('G. Iyappan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 84563, 46.46),
    ('M. C. Sampath', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 79412, 43.63),
    ('M. R. K. Panneerselvam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 101456, 51.04),
    ('Selvi Ramajayam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 83929, 42.22),
    ('A. Arunmozhithevan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 96453, 48.92),
    ('Durai K. Saravanan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 88194, 44.73),
    ('K. A. Pandian', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 91961, 50.16),
    ('A. S. Abdul Rahman Rabbani', (SELECT PartyID FROM Party WHERE PartyName = 'IUML'), 75024, 40.92),
    ('Sinthanai Selvan', (SELECT PartyID FROM Party WHERE PartyName = 'VCK'), 86056, 49.02),
    ('N. Murugumaran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 74608, 43.0),
    ('M. Panneerselvam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 94057, 49.16),
    ('P. V. Bharathi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 81909, 42.81),
    ('S. Rajakumar', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 73642, 42.17),
    ('Sithamalli A. Palanisami', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 70900, 40.6),
    ('Nivedha M. Murugan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 96102, 46.24),
    ('S. Pavunraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 92803, 44.65);


INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Perambalur (SC)' ORDER BY constituency_id DESC LIMIT 1),
        79.28,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Prabhakaran' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Thamizhselvan' ORDER BY candidate_id DESC LIMIT 1),
        31765
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kunnam' ORDER BY constituency_id DESC LIMIT 1),
        80.39,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. S. Sivasankar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. T. Ramachandran' ORDER BY candidate_id DESC LIMIT 1),
        6329
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ariyalur' ORDER BY constituency_id DESC LIMIT 1),
        85.00,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Chinnappa' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thamarai S. Rajendran' ORDER BY candidate_id DESC LIMIT 1),
        3234
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Jayankondam' ORDER BY constituency_id DESC LIMIT 1),
        81.12,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Ka. So. Ka. Kannan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Balu' ORDER BY candidate_id DESC LIMIT 1),
        5452
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tittakudi (SC)' ORDER BY constituency_id DESC LIMIT 1),
        76.65,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. V. Ganesan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. Periyasamy' ORDER BY candidate_id DESC LIMIT 1),
        21563
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vriddhachalam' ORDER BY constituency_id DESC LIMIT 1),
        77.79,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Radhakrishnan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. Karthikeyan' ORDER BY candidate_id DESC LIMIT 1),
        862
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Neyveli' ORDER BY constituency_id DESC LIMIT 1),
        75.06,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Saba Rajendran' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Jagan' ORDER BY candidate_id DESC LIMIT 1),
        977
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Panruti' ORDER BY constituency_id DESC LIMIT 1),
        80.26,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Velmurugan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Rajendran' ORDER BY candidate_id DESC LIMIT 1),
        4697
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Cuddalore' ORDER BY constituency_id DESC LIMIT 1),
        76.00,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Iyappan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. C. Sampath' ORDER BY candidate_id DESC LIMIT 1),
        5151
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kurinjipadi' ORDER BY constituency_id DESC LIMIT 1),
        81.71,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. R. K. Panneerselvam' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Selvi Ramajayam' ORDER BY candidate_id DESC LIMIT 1),
        17527
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Bhuvanagiri' ORDER BY constituency_id DESC LIMIT 1),
        79.30,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Arunmozhithevan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Durai K. Saravanan' ORDER BY candidate_id DESC LIMIT 1),
        8259
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Chidambaram' ORDER BY constituency_id DESC LIMIT 1),
        73.02,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. A. Pandian' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. S. Abdul Rahman Rabbani' ORDER BY candidate_id DESC LIMIT 1),
        16937
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kattumannarkoil (SC)' ORDER BY constituency_id DESC LIMIT 1),
        76.61,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Sinthanai Selvan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Murugumaran' ORDER BY candidate_id DESC LIMIT 1),
        11448
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sirkazhi (SC)' ORDER BY constituency_id DESC LIMIT 1),
        75.74,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Panneerselvam' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. V. Bharathi' ORDER BY candidate_id DESC LIMIT 1),
        12148
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mayiladuthurai' ORDER BY constituency_id DESC LIMIT 1),
        70.97,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Rajakumar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Sithamalli A. Palanisami' ORDER BY candidate_id DESC LIMIT 1),
        2742
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Poompuhar' ORDER BY constituency_id DESC LIMIT 1),
        75.33,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Nivedha M. Murugan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Pavunraj' ORDER BY candidate_id DESC LIMIT 1),
        3299
    );


INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Nagapattinam'),
    ('Kilvelur (SC)'),
    ('Vedaranyam'),
    ('Thiruthuraipoondi (SC)'),
    ('Mannargudi'),
    ('Thiruvarur'),
    ('Nannilam'),
    ('Thiruvidaimarudur (SC)'),
    ('Kumbakonam'),
    ('Papanasam'),
    ('Thiruvaiyaru'),
    ('Thanjavur'),
    ('Orathanadu'),
    ('Pattukkottai'),
    ('Peravurani');

    INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('Aloor Shanavas', (SELECT PartyID FROM Party WHERE PartyName = 'VCK'), 66281, 46.17),
    ('Thanga Kathiravan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 59043, 41.13),
    ('Nagai Maali (A) P. Mahalingam', (SELECT PartyID FROM Party WHERE PartyName = 'CPI(M)'), 67988, 47.55),
    ('Vadivel Ravanan', (SELECT PartyID FROM Party WHERE PartyName = 'PMK'), 51003, 35.67),
    ('O. S. Manian', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 78719, 49.8),
    ('S. K. Vetharathinam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 66390, 42),
    ('K. Marimuthu', (SELECT PartyID FROM Party WHERE PartyName = 'CPI'), 97092, 52.23),
    ('C. Suresh Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 67024, 36.06),
    ('Dr. T. R. B. Rajaa', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 87172, 45.11),
    ('Siva. Rajamanickam', (SELECT PartyID FROM Party WHERE PartyName = 'AlADMK'), 49779, 25.76),
    ('K. Poondi Kalaivanan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 108906, 52.29),
    ('A. N. R. Panneerselvam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 57732, 27.72),
    ('R. Kamaraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 103637, 46.7),
    ('S. Jothiraman', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 99213, 44.7),
    ('Govi. Chezhiyan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 95763, 48.26),
    ('Union S. Veeramani', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85083, 42.87),
    ('G. Anbalagan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 96057, 48.62),
    ('M. Srithar Vandayar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK (MMK)'), 74674, 37.8),
    ('Dr. M. H. Jawahirullah', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MMK)'), 86567, 43.95),
    ('K. Gopinathan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 70294, 35.69),
    ('Durai Chandrasekaran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103210, 48.82),
    ('Poondi S. Venkatesan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 49560, 23.44),
    ('T. K. G. Neelamegam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103772, 53.25),
    ('V. Arivudainambi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 56623, 29.06),
    ('R. Vaithilingam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 90063, 46.95),
    ('M. Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 61228, 31.92),
    ('K. Annadurai', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 79065, 44.62),
    ('N. R. Rengarajan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 53796, 30.36),
    ('Peravurani N. Ashokkumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 89130, 52.17),
    ('S. V. Thirugnana Sambandam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 65627, 38.41);




INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Nagapattinam'), 72.52, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Aloor Shanavas'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thanga Kathiravan'), 7238),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kilvelur (SC)'), 79.99, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Nagai Maali (A) P. Mahalingam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Vadivel Ravanan'), 16985),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vedaranyam'), 81.99, (SELECT candidate_id FROM candidates WHERE candidate_name = 'O. S. Manian'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. K. Vetharathinam'), 12329),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruthuraipoondi (SC)'), 77.43, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Marimuthu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Suresh Kumar'), 30068),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mannargudi'), 74.31, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. T. R. B. Rajaa'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Siva. Rajamanickam'), 37393),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruvarur'), 73.68, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Poondi Kalaivanan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. N. R. Panneerselvam'), 51174),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Nannilam'), 81.51, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Kamaraj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Jothiraman'), 4424),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruvidaimarudur (SC)'), 76.47, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Govi. Chezhiyan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Union S. Veeramani'), 10680),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kumbakonam'), 72.34, (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Anbalagan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Srithar Vandayar'), 21383),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Papanasam'), 75.49, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. M. H. Jawahirullah'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Gopinathan'), 16273),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruvaiyaru'), 78.72, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Durai Chandrasekaran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Poondi S. Venkatesan'), 53650),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thanjavur'), 66.98, (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. K. G. Neelamegam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. Arivudainambi'), 47149),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Orathanadu'), 78.70, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Vaithilingam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Ramachandran'), 28835),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Pattukkottai'), 72.07, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Annadurai'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. R. Rengarajan'), 25269),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Peravurani'), 77.6, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Peravurani N. Ashokkumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. V. Thirugnana Sambandam'), 23503);


INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Gandharvakottai (SC)'),
    ('Viralimalai'),
    ('Pudukkottai'),
    ('Thirumayam'),
    ('Alangudi'),
    ('Aranthangi'),
    ('Karaikudi'),
    ('Tiruppattur (Sivaganga)'),
    ('Sivaganga'),
    ('Manamadurai (SC)'),
    ('Melur'),
    ('Madurai East'),
    ('Sholavandan (SC)'),
    ('Madurai North'),
    ('Madurai South'),
    ('Madurai Central'),
    ('Madurai West'),
    ('Thiruparankundram'),
    ('Tirumangalam'),
    ('Usilampatti');

    INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('M. Chinnadurai', (SELECT PartyID FROM Party WHERE PartyName = 'CPI(M)'), 69710, 44.23),
    ('S. Jayabharati', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 56989, 36.16),
    ('C. Vijayabaskar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 102179, 52.83),
    ('M. Palaniappan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 78581, 40.63),
    ('Dr. V. Muthuraja', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 85802, 47.7),
    ('V. R. Karthik Thondaiman', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 72801, 40.47),
    ('S. Regupathy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 71349, 41),
    ('P. K. Vairamuthu', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 69967, 40.2),
    ('Meyyanathan Siva V', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 87935, 51.17),
    ('Dharma. Thangavel', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 62088, 36.13),
    ('T. Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 81835, 48.7),
    ('M. Rajanayagam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 50942, 30.31),
    ('S. Mangudi', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 75954, 35.75),
    ('H. Raja', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 54365, 25.59),
    ('K. R. Periyakaruppan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 103682, 49.19),
    ('Marudhu Alaguraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 66308, 31.46),
    ('P. R. Senthilnathan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 82153, 40.66),
    ('S. Gunasekaran', (SELECT PartyID FROM Party WHERE PartyName = 'CPI(M)'), 70900, 35.09),
    ('A. Tamilarasi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 89364, 44.01),
    ('S. Nagarajan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 75273, 37.07),
    ('P. Selvam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 83344, 45.6),
    ('T. Ravichandran', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 48182, 26.36),
    ('P. Moorthy', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 122729, 51.59),
    ('Gopalakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'ADMK'), 73125, 30.74),
    ('A. Venkatesan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 84240, 48.04),
    ('Manickam', (SELECT PartyID FROM Party WHERE PartyName = 'ADMK'), 67195, 38.32),
    ('G. Thalapathi', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 73010, 46.64),
    ('P. Saravanan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 50094, 32),
    ('M. Boominathan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MDMK)'), 62812, 42.49),
    ('S.S.Saravanan', (SELECT PartyID FROM Party WHERE PartyName = 'ADMK'), 56297, 38.08),
    ('Palanivel Thiagarajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 73205, 48.99),
    ('Jothi Muthuramalingam', (SELECT PartyID FROM Party WHERE PartyName = 'ADMK'), 39029, 26.12),
    ('Sellur K. Raju', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 83883, 41.59),
    ('C. Chinnammal', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 74762, 37.07),
    ('V. V. Rajan Chellappa', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 103683, 43.96),
    ('S. K. Ponnuthai', (SELECT PartyID FROM Party WHERE PartyName = 'CPI(M)'), 74194, 31.46),
    ('R. B. Udhaya Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 100338, 45.51),
    ('M. Maniraman', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 86251, 39.12),
    ('P. Ayyappan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 71255, 33.53),
    ('Kathiravan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 63778, 30.01);



INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Gandharvakottai (SC)' ORDER BY constituency_id DESC LIMIT 1),
        78.18,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Chinnadurai' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Jayabharati' ORDER BY candidate_id DESC LIMIT 1),
        12721
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Viralimalai' ORDER BY constituency_id DESC LIMIT 1),
        85.89,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Vijayabaskar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Palaniappan' ORDER BY candidate_id DESC LIMIT 1),
        23598
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Pudukkottai' ORDER BY constituency_id DESC LIMIT 1),
        73.72,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. V. Muthuraja' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. R. Karthik Thondaiman' ORDER BY candidate_id DESC LIMIT 1),
        13001
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thirumayam' ORDER BY constituency_id DESC LIMIT 1),
        76.37,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Regupathy' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. K. Vairamuthu' ORDER BY candidate_id DESC LIMIT 1),
        1382
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Alangudi' ORDER BY constituency_id DESC LIMIT 1),
        79.06,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Meyyanathan Siva V' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dharma. Thangavel' ORDER BY candidate_id DESC LIMIT 1),
        25847
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Aranthangi' ORDER BY constituency_id DESC LIMIT 1),
        70.90,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Ramachandran' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Rajanayagam' ORDER BY candidate_id DESC LIMIT 1),
        30893
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Karaikudi' ORDER BY constituency_id DESC LIMIT 1),
        66.96,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Mangudi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'H. Raja' ORDER BY candidate_id DESC LIMIT 1),
        21589
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruppattur (Sivaganga)' ORDER BY constituency_id DESC LIMIT 1),
        72.24,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. R. Periyakaruppan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Marudhu Alaguraj' ORDER BY candidate_id DESC LIMIT 1),
        37374
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sivaganga' ORDER BY constituency_id DESC LIMIT 1),
        67.09,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. R. Senthilnathan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Gunasekaran' ORDER BY candidate_id DESC LIMIT 1),
        11253
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Manamadurai (SC)' ORDER BY constituency_id DESC LIMIT 1),
        72.88,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Tamilarasi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Nagarajan' ORDER BY candidate_id DESC LIMIT 1),
        14091
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Melur' ORDER BY constituency_id DESC LIMIT 1),
        74.61,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Selvam' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. Ravichandran' ORDER BY candidate_id DESC LIMIT 1),
        35162
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madurai East' ORDER BY constituency_id DESC LIMIT 1),
        72.26,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Moorthy' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Gopalakrishnan' ORDER BY candidate_id DESC LIMIT 1),
        49604
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sholavandan (SC)' ORDER BY constituency_id DESC LIMIT 1),
        80.17,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Venkatesan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Manickam' ORDER BY candidate_id DESC LIMIT 1),
        17045
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madurai North' ORDER BY constituency_id DESC LIMIT 1),
        64.27,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Thalapathi' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Saravanan' ORDER BY candidate_id DESC LIMIT 1),
        22916
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madurai South' ORDER BY constituency_id DESC LIMIT 1),
        62.24,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Boominathan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S.S.Saravanan' ORDER BY candidate_id DESC LIMIT 1),
        6515
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madurai Central' ORDER BY constituency_id DESC LIMIT 1),
        61.77,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Palanivel Thiagarajan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Jothi Muthuramalingam' ORDER BY candidate_id DESC LIMIT 1),
        34176
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Madurai West' ORDER BY constituency_id DESC LIMIT 1),
        65.67,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Sellur K. Raju' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Chinnammal' ORDER BY candidate_id DESC LIMIT 1),
        9121
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thiruparankundram' ORDER BY constituency_id DESC LIMIT 1),
        73.36,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. V. Rajan Chellappa' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. K. Ponnuthai' ORDER BY candidate_id DESC LIMIT 1),
        29489
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tirumangalam' ORDER BY constituency_id DESC LIMIT 1),
        78.86,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. B. Udhaya Kumar' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Maniraman' ORDER BY candidate_id DESC LIMIT 1),
        14087
    ),
    (
        (SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Usilampatti' ORDER BY constituency_id DESC LIMIT 1),
        74.19,
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Ayyappan' ORDER BY candidate_id DESC LIMIT 1),
        (SELECT candidate_id FROM candidates WHERE candidate_name = 'Kathiravan' ORDER BY candidate_id DESC LIMIT 1),
        7477
    );


INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Andipatti'),
    ('Periyakulam (SC)'),
    ('Bodinayakanur'),
    ('Cumbum'),
    ('Rajapalayam'),
    ('Srivilliputhur (SC)'),
    ('Sattur'),
    ('Sivakasi'),
    ('Virudhunagar'),
    ('Aruppukkottai'),
    ('Tiruchuli'),
    ('Paramakudi (SC)'),
    ('Tiruvadanai'),
    ('Ramanathapuram'),
    ('Mudhukulathur'),
    ('Vilathikulam'),
    ('Thoothukkudi'),
    ('Tiruchendur'),
    ('Srivaikuntam'),
    ('Ottapidaram (SC)'),
    ('Kovilpatti');


INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('A. Maharajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93541, 44.64),
    ('A. Logirajan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85003, 40.57),
    ('K. S. Saravana Kumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 92251, 45.71),
    ('M. Murugan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 70930, 35.15),
    ('O. Panneerselvam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 100050, 46.58),
    ('Thanga Tamil Selvan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 89029, 41.45),
    ('N. Eramakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 104800, 51.81),
    ('S. P. M. Syed Khan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 62387, 30.84),
    ('S. Thangappandian', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 74158, 41.5),
    ('K. T. Rajenthra Bhalaji', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 70260, 39.32),
    ('E. M. Manraj', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 70475, 38.09),
    ('P. S. W. Madhava Rao', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 57737, 31.2),
    ('A. R. R. Raghuraman', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MDMK)'), 74174, 38.68),
    ('R. K. Ravichandran', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 62995, 32.85),
    ('A. M. S. G. Ashokan', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 78947, 42.66),
    ('Lakshmi Ganesan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 61628, 33.3),
    ('A. R. R. Seenivasan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 73297, 45.32),
    ('G. Pandurangan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 51598, 32.13),
    ('Sattur Ramachandran', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 91040, 53.18),
    ('Vaigaichelvan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 52006, 30.38),
    ('Thangam Thennarasu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 102225, 59.15),
    ('S. Rajasekar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK (AIMMK)'), 41233, 23.86),
    ('S. Murugesan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 84864, 46.59),
    ('N. Sadhan Prabhakar', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 71579, 39.3),
    ('R. M. Karumanikam', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 79364, 39.33),
    ('K. C. Animuthu', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 65512, 32.46),
    ('K. Muthuramalingam', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 111082, 51.88),
    ('D. Kuppuram', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 60603, 28.31),
    ('R. S. Raja Kannappan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 101901, 46.06),
    ('Keerthika Muniyasamy', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 81180, 36.7),
    ('G. V. Markandayan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 90348, 54.05),
    ('P. Chinnappan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 51799, 30.99),
    ('P. Geetha Jeevan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 92314, 49),
    ('S. D. R. Vijayaseelan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 42004, 22.29),
    ('Anitha R. Radhakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 88274, 50.58),
    ('M. Radhakrishnan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 63011, 36.1),
    ('Oorvasi S. Amirtharaj', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 76843, 46.75),
    ('S. P. Shanmuganathan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 59471, 36.18),
    ('M. C. Shunmugaiah', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 73110, 41.11),
    ('P. Mohan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 64600, 36.32),
    ('Kadambur C. Raju', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 68556, 37.89),
    ('T. T. V. Dhinakaran', (SELECT PartyID FROM Party WHERE PartyName = 'AMMK'), 56153, 31.04);



INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Andipatti'), 75.28, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Maharajan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Logirajan'), 8538),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Periyakulam (SC)'), 70.69, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. S. Saravana Kumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Murugan'), 21321),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Bodinayakanur'), 77.04, (SELECT candidate_id FROM candidates WHERE candidate_name = 'O. Panneerselvam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thanga Tamil Selvan'), 11021),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Cumbum'), 70.17, (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Eramakrishnan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. P. M. Syed Khan'), 42413),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Rajapalayam'), 74.63, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Thangappandian'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. T. Rajenthra Bhalaji'), 3898),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Srivilliputhur (SC)'), 73.83, (SELECT candidate_id FROM candidates WHERE candidate_name = 'E. M. Manraj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. S. W. Madhava Rao'), 12738),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sattur'), 75.69, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. R. R. Raghuraman'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. K. Ravichandran'), 11179),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sivakasi'), 70.88, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. M. S. G. Ashokan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Lakshmi Ganesan'), 17319),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Virudhunagar'), 72.16, (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. R. R. Seenivasan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Pandurangan'), 21699),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Aruppukkottai'), 76.49, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Sattur Ramachandran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Vaigaichelvan'), 39034),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruchuli'), 78.65, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Thangam Thennarasu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Rajasekar'), 60992),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Paramakudi (SC)'), 71.11, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Murugesan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Sadhan Prabhakar'), 13285),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruvadanai'), 69.30, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. M. Karumanikam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. C. Animuthu'), 13852),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ramanathapuram'), 69.41, (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. Muthuramalingam'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. Kuppuram'), 50479),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Mudhukulathur'), 71.13, (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. S. Raja Kannappan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Keerthika Muniyasamy'), 20721),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vilathikulam'), 77.06, (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. V. Markandayan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Chinnappan'), 38549),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Thoothukkudi'), 65.99, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Geetha Jeevan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. D. R. Vijayaseelan'), 50310),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tiruchendur'), 71.20, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Anitha R. Radhakrishnan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Radhakrishnan'), 25263),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Srivaikuntam'), 73.16, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Oorvasi S. Amirtharaj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. P. Shanmuganathan'), 17372),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ottapidaram (SC)'), 70.68, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. C. Shunmugaiah'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Mohan'), 8510),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kovilpatti'), 67.86, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Kadambur C. Raju'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'T. T. V. Dhinakaran'), 12403);


INSERT INTO constituencies (assembly_constituency)
VALUES
    ('Sankarankovil (SC)'),
    ('Vasudevanallur (SC)'),
    ('Kadayanallur'),
    ('Tenkasi'),
    ('Alangulam'),
    ('Tirunelveli'),
    ('Ambasamudram'),
    ('Palayamkottai'),
    ('Nanguneri'),
    ('Radhapuram'),
    ('Kanniyakumari'),
    ('Nagercoil'),
    ('Colachel'),
    ('Padmanabhapuram'),
    ('Vilavancode'),
    ('Killiyoor');

INSERT INTO candidates (candidate_name, party_id, votes, percentage)
VALUES
    ('E. Raja', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 71347, 38.92),
    ('V. M. Rajalakshmi', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 66050, 36.03),
    ('Dr. T. Sadhan Tirumalaikumar', (SELECT PartyID FROM Party WHERE PartyName = 'DMK (MDMK)'), 68730, 39.08),
    ('A. Manoharan', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 66363, 37.70),
    ('C. Krishnamurali', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88474, 43.08),
    ('K. A. M. Muhammed Abubacker', (SELECT PartyID FROM Party WHERE PartyName = 'IUML'), 64125, 31.22),
    ('S. Palani Nadar', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 89315, 41.71),
    ('S. Selvamohandas Pandian', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 88945, 41.54),
    ('P. H. Manoj Pandian', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 74153, 36.44),
    ('Dr. Poongothai Aladi Aruna', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 70614, 34.70),
    ('Nainar Nagendran', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 92282, 46.70),
    ('A. L. S. Lakshmanan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 69175, 35.01),
    ('E. Subaya', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 85211, 47.96),
    ('R. Avudaiappan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 68296, 38.44),
    ('M. Abdul Wahab', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 89117, 55.32),
    ('G. Gerald', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 36976, 22.95),
    ('Ruby R. Manoharan', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 75902, 39.43),
    ('Ganesa Raja', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 59416, 30.86),
    ('M. Appavu', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 82331, 43.95),
    ('I.S. Inbudurai', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 76406, 40.79),
    ('N. Thalavai Sundaram', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 109745, 48.8),
    ('S. Austin', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 93532, 41.59),
    ('M. R. Gandhi', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 88804, 48.21),
    ('N. Suresh Rajan', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 77135, 41.88),
    ('J. G. Prince', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 90681, 49.56),
    ('P. Ramesh', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 65849, 35.99),
    ('Mano Thangaraj', (SELECT PartyID FROM Party WHERE PartyName = 'DMK'), 87744, 51.57),
    ('D. John Thangam', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 60859, 35.77),
    ('S. Vijayadharani', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 87473, 52.12),
    ('R. Jayaseelan', (SELECT PartyID FROM Party WHERE PartyName = 'BJP'), 58804, 35.04),
    ('S. Rajeshkumar', (SELECT PartyID FROM Party WHERE PartyName = 'INC'), 101541, 59.76),
    ('K. V. Jude Dev', (SELECT PartyID FROM Party WHERE PartyName = 'AIADMK'), 46141, 27.15);


INSERT INTO election_results (constituency_id, turnout_percentage, winner_id, runner_up_id, margin)
VALUES
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Sankarankovil (SC)'), 72.11, (SELECT candidate_id FROM candidates WHERE candidate_name = 'E. Raja'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'V. M. Rajalakshmi'), 5297),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vasudevanallur (SC)'), 72.75, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. T. Sadhan Tirumalaikumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. Manoharan'), 2367),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kadayanallur'), 70.71, (SELECT candidate_id FROM candidates WHERE candidate_name = 'C. Krishnamurali'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. A. M. Muhammed Abubacker'), 24349),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tenkasi'), 73.19, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Palani Nadar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Selvamohandas Pandian'), 370),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Alangulam'), 78.05, (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. H. Manoj Pandian'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Dr. Poongothai Aladi Aruna'), 3539),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Tirunelveli'), 67.57, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Nainar Nagendran'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'A. L. S. Lakshmanan'), 23107),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Ambasamudram'), 72.52, (SELECT candidate_id FROM candidates WHERE candidate_name = 'E. Subaya'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Avudaiappan'), 16915),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Palayamkottai'), 58.89, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Abdul Wahab'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'G. Gerald'), 52141),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Nanguneri'), 69.29, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Ruby R. Manoharan'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'Ganesa Raja'), 16486),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Radhapuram'), 69.18, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. Appavu'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'I.S. Inbudurai'), 5925),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Kanniyakumari'), 76.66, (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Thalavai Sundaram'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Austin'), 16213),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Nagercoil'), 68.00, (SELECT candidate_id FROM candidates WHERE candidate_name = 'M. R. Gandhi'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'N. Suresh Rajan'), 11669),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Colachel'), 67.95, (SELECT candidate_id FROM candidates WHERE candidate_name = 'J. G. Prince'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'P. Ramesh'), 24832),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Padmanabhapuram'), 70.65, (SELECT candidate_id FROM candidates WHERE candidate_name = 'Mano Thangaraj'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'D. John Thangam'), 26885),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Vilavancode'), 67.12, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Vijayadharani'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'R. Jayaseelan'), 28669),
    ((SELECT constituency_id FROM constituencies WHERE assembly_constituency = 'Killiyoor'), 66.54, (SELECT candidate_id FROM candidates WHERE candidate_name = 'S. Rajeshkumar'), (SELECT candidate_id FROM candidates WHERE candidate_name = 'K. V. Jude Dev'), 55400);



INSERT INTO PollVotes (PartyID, PollVotesCount) VALUES
    (1, 0),
    (2, 0),
    (3, 0),
    (4, 0),
    (5, 0),
    (6, 0),
    (7, 0),
    (8, 0),
    (9, 0),
    (10, 0),
    (11, 0);


INSERT INTO official (name, position) VALUES
('Thiru. Satyabrata Sahoo, I.A.S.', 'Chief Electoral Officer (CEO) & Principal Secretary to Government'),
('Tmt. Anne Joseph', 'Additional CEO & Additional Secretary to Government'),
('Thiru. V.Sridhar', 'Joint CEO & Joint Secretary to Government'),
('Thiru. S.Kannan', 'Under Secretary to Government'),
('Tmt. G. Sampoornam', 'Under Secretary to Government'),
('Thiru. P.Ashok Kumar', 'System Manager (Web Information Manager)');







select * from constituencies;
select * from candidates;
select * from  election_results;





