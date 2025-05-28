-- Keep a log of any SQL queries you execute as you solve the mystery.
-- NOTES:
-- July 28, 2024 on Humphrey Street     <- Crime Location

-- 1.
SELECT * FROM crime_scene_reports WHERE year = 2024 AND month = 07 AND day = 28;
/* This selects all the crimes committed on July 28, 2024. The theft of the CS50 Duck
Took place at the Humphrey Street bakery, and has a crime id of 295.
THE INFO:
Theft of the CS50 duck took place at 10:15am at the Humphrey Street bakery.
Interviews were conducted today with three witnesses who were present at the time –
each of their interview transcripts mentions the bakery. */

-- 2.
-- First, the schema of the bakery was found using .schema.
SELECT * FROM bakery_security_logs WHERE year = 2024 AND month = 07 AND day = 28 AND hour = 10;
/* The exact time, 10:15, is too broad to pinpoint an exact time. There are only two entrances before 10:15; too
broad to pinpoint an exact culprit. */

-- 3.

SELECT * FROM interviews WHERE year = 2024 AND month = 07 AND day = 28 AND transcript LIKE '%akery%';

/* THE INFO RECOVERED FROM THE INTERVIEWS:
| 161 | Ruth    | 2024 | 7     | 28  | Sometime within ten minutes of the theft, I saw the thief get into a car
in the bakery parking lot and drive away. If you have security footage from the bakery parking lot, you might want
 to look for cars that left the parking lot in that time frame.

| 162 | Eugene  | 2024 | 7     | 28  | I don't know the thief's name, but it was someone I recognized.
Earlier this morning, before I arrived at Emma's bakery, I was walking by the ATM on Leggett Street
and saw the thief there withdrawing some money.

| 163 | Raymond | 2024 | 7     | 28  | As the thief was leaving the bakery, they called someone who talked to them for less than a minute.
In the call, I heard the thief say that they were planning to take the earliest flight out of Fiftyville tomorrow.
The thief then asked the person on the other end of the phone to purchase the flight ticket.

THE CLUES SO FAR:
1. The thief left the scene somewhere between 10:15 and 10:25.
2. Before 10:15, the thief withdrew some money fron an atm on Leggett Street.
3. Sometime between 10:15 and 10:25, a call was made for the earliest flight departing from Fiftyville on 2024-07-29
*/

-- 4.
-- We can now run the command from part 2 with proper context.
SELECT license_plate, hour, minute FROM bakery_security_logs WHERE year = 2024 AND month = 07 AND day = 28 AND hour = 10;
/*
R3G7486       | 10   | 8      |
13FNH73       | 10   | 14     |
5P2BI95       | 10   | 16     |
94KL13X       | 10   | 18     |
6P58WS2       | 10   | 18     |
4328GD8       | 10   | 19     |
G412CB7       | 10   | 20     |
L93JTIZ       | 10   | 21     |
322W7JE       | 10   | 23     |
0NTHK55       | 10   | 23     |

These are the Licence plates of vehicles which left the bakery between 10:15 and 10:25.
Will use this info later.
*/

-- 5.
-- Looking at atm history,
SELECT * FROM atm_transactions WHERE year = 2024 AND month = 07 AND day = 28 AND atm_location LIKE '%Leggett%' AND transaction_type LIKE '%withdraw%';
/*
+----------------+--------+
| account_number | amount |
+----------------+--------+
| 28500762       | 48     |
| 28296815       | 20     |
| 76054385       | 60     |
| 49610011       | 50     |
| 16153065       | 80     |
| 25506511       | 20     |
| 81061156       | 30     |
| 26013199       | 35     |
+----------------+--------+

This is the account numbers of people whose ATM transactions match that day's description of a withdrawal on 07-28 at Leggett Street.
Will use this data later. */

-- 6.
-- Now, we look at phone calls
SELECT caller, receiver, duration FROM phone_calls WHERE year = 2024 AND month = 7 AND day = 28 AND duration < 60;
/*
+----------------+----------------+----------+
|     caller     |    receiver    | duration |
+----------------+----------------+----------+
| (130) 555-0289 | (996) 555-8899 | 51       |
| (499) 555-9472 | (892) 555-8872 | 36       |
| (367) 555-5533 | (375) 555-8161 | 45       |
| (499) 555-9472 | (717) 555-1342 | 50       |
| (286) 555-6063 | (676) 555-6554 | 43       |
| (770) 555-1861 | (725) 555-3243 | 49       |
| (031) 555-6622 | (910) 555-3251 | 38       |
| (826) 555-1652 | (066) 555-9701 | 55       |
| (338) 555-6650 | (704) 555-2131 | 54       |
+----------------+----------------+----------+

This is a list of phone calls on the day of the robbery. Will use this later if needed.
*/

 -- 7.
 -- Now that we have some basic info, we can search for flights using identifying info:
 SELECT * FROM airports WHERE full_name LIKE '%Fiftyville%';
-- This helps find the ID of Fiftyville airport. The id is 8, and the abbreviation is CSF.

-- 8.
-- Now we will search departingflights  from fiftyville on the day immediately after the robbery.
-- Note that the thief took the first flight out of fiftyville possible.
SELECT * FROM flights WHERE year = 2024 AND month = 7 AND day = 29 AND origin_airport_id = 8;
/*
+----+-------------------+------------------------+------+-------+-----+------+--------+
| id | origin_airport_id | destination_airport_id | year | month | day | hour | minute |
+----+-------------------+------------------------+------+-------+-----+------+--------+
| 36 | 8                 | 4                      | 2024 | 7     | 29  | 8    | 20     |
+----+-------------------+------------------------+------+-------+-----+------+--------+

This Flight is the earliest flight out of Fiftyville on that day. Our thief is most likely aboard this flight.
*/

-- 9.
-- We now search flight 36 out of Fiftyville for all passengers;
/*
+-----------+-----------------+------+
| flight_id | passport_number | seat |
+-----------+-----------------+------+
| 36        | 7214083635      | 2A   |
| 36        | 1695452385      | 3B   |
| 36        | 5773159633      | 4A   |
| 36        | 1540955065      | 5C   |
| 36        | 8294398571      | 6C   |
| 36        | 1988161715      | 6D   |
| 36        | 9878712108      | 7A   |
| 36        | 8496433585      | 7B   |
+-----------+-----------------+------+

This is the list of all passengers aboard the flight. Our thief is one of these people.
*/

--10. We now have enough information to search the People database for people which match the info provided.

SELECT * FROM people
WHERE
phone_number  IN
(
    SELECT caller FROM phone_calls WHERE year = 2024 AND month = 7 AND day = 28 AND duration < 60
)
AND
passport_number IN
(
    SELECT passport_number FROM flights WHERE year = 2024 AND month = 7 AND day = 29 AND origin_airport_id = 8
)
AND
license_plate IN
(
    SELECT license_plate FROM bakery_security_logs WHERE year = 2024 AND month = 07 AND day = 28 AND hour = 10
)
;

/*
+--------+--------+----------------+-----------------+---------------+
|   id   |  name  |  phone_number  | passport_number | license_plate |
+--------+--------+----------------+-----------------+---------------+
| 398010 | Sofia  | (130) 555-0289 | 1695452385      | G412CB7       |
| 449774 | Taylor | (286) 555-6063 | 1988161715      | 1106N58       |
| 514354 | Diana  | (770) 555-1861 | 3592750733      | 322W7JE       |
| 560886 | Kelsey | (499) 555-9472 | 8294398571      | 0NTHK55       |
| 686048 | Bruce  | (367) 555-5533 | 5773159633      | 94KL13X       |
+--------+--------+----------------+-----------------+---------------+
These are the list of suspects.
*/

-- 11. To narrow the list of people down, we will find which one of these people made a transaction at the ATM on Leggett St, as well as including the exact flight id in the search.
SELECT account_number, person_id FROM bank_accounts
WHERE
person_id IN
(
    SELECT id FROM people
    WHERE
    phone_number  IN
    (
        SELECT caller FROM phone_calls WHERE year = 2024 AND month = 7 AND day = 28 AND duration < 60
    )
    AND
    passport_number IN
    (
        SELECT passport_number FROM flights WHERE year = 2024 AND month = 7 AND day = 29 AND id = 36
    )
    AND
    license_plate IN
    (
        SELECT license_plate FROM bakery_security_logs WHERE year = 2024 AND month = 07 AND day = 28 AND hour = 10
    )
    AND
    (
        account_number IN
        (
            SELECT account_number FROM atm_transactions WHERE year = 2024 AND month = 07 AND day = 28
            AND atm_location LIKE '%Leggett%' AND transaction_type LIKE '%withdraw%'
        )
    )
)
;

/* Of these people, we can see that:
+----------------+-----------------+
| account_number |    person_id    |
+----------------+-----------------+
| 49610011       | 686048/Bruce    |
| 26013199       | 514354/Diana    |
| 76054385       | 449774/Taylor   |
+----------------+-----------------+
These three accounts all match the criteria. I will rewrite the query to include the passengers from the flight id.
*/

SELECT name FROM people
WHERE id IN (686048, 514354, 449774)
AND passport_number IN
(
    SELECT passport_number FROM passengers WHERE flight_id = 36
);
/* Of these, we have now narrowed down the search to :
+--------+--------+----------------+-----------------+---------------+
|   id   |  name  |  phone_number  | passport_number | license_plate |
+--------+--------+----------------+-----------------+---------------+
| 449774 | Taylor | (286) 555-6063 | 1988161715      | 1106N58       |
| 686048 | Bruce  | (367) 555-5533 | 5773159633      | 94KL13X       |
+--------+--------+----------------+-----------------+---------------+
*/

-- 12. I will now narrow down the search a final time by including the exact minutes of the bakery security log.
SELECT * FROM people
WHERE id IN (686048, 449774)
AND license_plate IN
(
    SELECT license_plate FROM bakery_security_logs WHERE year = 2024 AND month = 07 AND day = 28 AND hour = 10 AND minute < 25
);

/* This leaves us with a final answer of:
+--------+-------+----------------+-----------------+---------------+
|   id   | name  |  phone_number  | passport_number | license_plate |
+--------+-------+----------------+-----------------+---------------+
| 686048 | Bruce | (367) 555-5533 | 5773159633      | 94KL13X       |
+--------+-------+----------------+-----------------+---------------+

Bruce took Flight 36 out of Fiftyville. Flight 36 arrived at LGA, LaGuardia Airport, New York City.
Bruce spoke with the phone number (375) 555-8161. This phone is registered in the database as belonging to:
*/
SELECT * FROM people WHERE phone_number = '(375) 555-8161';
/*
+--------+-------+----------------+-----------------+---------------+
|   id   | name  |  phone_number  | passport_number | license_plate |
+--------+-------+----------------+-----------------+---------------+
| 864400 | Robin | (375) 555-8161 | NULL            | 4V16VO0       |
+--------+-------+----------------+-----------------+---------------+
*/

-- How hilarious, CS50. Positively comical.
