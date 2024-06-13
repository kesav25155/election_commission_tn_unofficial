INSERT INTO voter_details (first_name, last_name, date_of_birth, age, gender, acceptance) 
VALUES ('$firstName', '$lastName', '$dob', $age, '$gender', true);

INSERT INTO addresses (voter_id, district, address, pincode) 
VALUES ($voterId, '$district', '$address', '$pincode');

INSERT INTO contact_details (voter_id, email, phone) 
VALUES ($voterId, '$email', '$phone');


    
    
    SELECT voter_details.*, contact_details.email, contact_details.phone, addresses.district, addresses.address, addresses.pincode
    FROM voter_details
    LEFT JOIN contact_details ON voter_details.voter_id = contact_details.voter_id
    LEFT JOIN addresses ON voter_details.voter_id = addresses.voter_id
    WHERE voter_details.voter_id = $voter_id
    AND 
    WHERE voter_details.first_name = '$first_name'
    AND
    WHERE voter_details.last_name = '$last_name'
    AND
    WHERE addresses.district = '$district';

            


SELECT assembly_constituency FROM constituencies
WHERE constituency_id = :constituency_id;

SELECT Party.PartyName
FROM Party
WHERE Party.PartyID = (
    SELECT candidates.party_id
    FROM candidates
    WHERE candidates.candidate_id = :candidate_id
);


SELECT candidate_name FROM candidates 
WHERE candidate_id = :candidate_id;

SELECT votes FROM candidates 
WHERE candidate_id = :candidate_id;

SELECT percentage FROM candidates 
WHERE candidate_id = :candidate_id;


            SELECT candidates.*, 
                   Party.PartyName, 
                   election_results.constituency_id,
                   constituencies.assembly_constituency AS constituency_name
            FROM candidates
            JOIN Party ON candidates.party_id = Party.PartyID
            LEFT JOIN election_results ON candidates.candidate_id = election_results.winner_id
                                        OR candidates.candidate_id = election_results.runner_up_id
            LEFT JOIN constituencies ON election_results.constituency_id = constituencies.constituency_id
            WHERE candidates.candidate_id = :candidateId;


SELECT * FROM candidates 
WHERE candidate_name ILIKE :searchTerm;

SELECT * FROM Party 
WHERE PartyID = :partyID;

            SELECT PartyName, COALESCE(PollVotes.PollVotesCount, 0) AS PollVotesCount
                    FROM Party
                    LEFT JOIN PollVotes ON Party.PartyID = PollVotes.PartyID;

SELECT COUNT(*) FROM poll 
WHERE voter_id = ?;

INSERT INTO poll (voter_id, PartyID) 
VALUES (?, ?);

UPDATE PollVotes 
SET PollVotesCount = PollVotesCount + 1 
WHERE PartyID = ?;


SELECT * FROM election_results
 WHERE constituency_id IN (SELECT constituency_id FROM constituencies WHERE assembly_constituency=:constituency);




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
