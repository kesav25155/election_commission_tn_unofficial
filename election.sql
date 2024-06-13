DROP DATABASE election_commission_tamilnadu;

CREATE DATABASE election_commission_tamilnadu;

\c election_commission_tamilnadu

CREATE TABLE voter_details (
    voter_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE ,
    age INT,
    gender VARCHAR(10),
    acceptance BOOLEAN NOT NULL CHECK (acceptance = true)
);


CREATE TABLE contact_details (
    contact_id SERIAL PRIMARY KEY,
    voter_id INT REFERENCES voter_details(voter_id),
    email VARCHAR(100),
    phone VARCHAR(15)
    
);

CREATE TABLE addresses (
    address_id SERIAL PRIMARY KEY,
    voter_id INT REFERENCES voter_details(voter_id),
    district VARCHAR(50) NOT NULL,
    address TEXT NOT NULL,
    pincode VARCHAR(10)
    
);

CREATE TABLE Party (
    PartyID SERIAL PRIMARY KEY,
    PartyName VARCHAR(255) NOT NULL,
    LeaderFirstName VARCHAR(255),
    LeaderLastName VARCHAR(255),
    FoundedYear INT,
    Symbol VARCHAR(255),
    Headquarters VARCHAR(255),
    Ideology VARCHAR(255),
    Description TEXT
);

CREATE TABLE poll (
    voter_id INT PRIMARY KEY REFERENCES voter_details(voter_id),
    PartyID INT REFERENCES Party(PartyID),
    poll_votes INT
);

CREATE TABLE PollVotes (
    VoteID SERIAL PRIMARY KEY,
    PartyID INT REFERENCES Party(PartyID),
    PollVotesCount INT DEFAULT 0
 );

CREATE TABLE candidates (
    candidate_id SERIAL PRIMARY KEY,
    candidate_name VARCHAR(100) NOT NULL,
    party_id INT REFERENCES Party(PartyID),
    votes INT NOT NULL,
    percentage NUMERIC NOT NULL
);

CREATE TABLE constituencies (
    constituency_id SERIAL PRIMARY KEY,
    assembly_constituency VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE election_results (
    result_id SERIAL PRIMARY KEY,
    constituency_id INT REFERENCES constituencies(constituency_id),
    turnout_percentage NUMERIC NOT NULL,
    winner_id INT REFERENCES candidates(candidate_id),
    runner_up_id INT REFERENCES candidates(candidate_id),
    margin INT NOT NULL
);

CREATE TABLE official (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    position VARCHAR(150)
);


