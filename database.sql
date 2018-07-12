-- 1. Get all users from Chicago
SELECT * FROM "accounts"
WHERE "city" ILIKE 'Chicago';

-- 2. Get all users with usernames that contain the letter a
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%';

-- 3. Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give thema new account balance of 10.00
UPDATE "accounts" SET "account_balance" = 10.00
WHERE "account_balance" = 0 AND "transactions_attempted" = 0;

-- 4. Select all users that have attempted 9 or more transactions
SELECT * FROM "accounts"
WHERE "transactions_attempted" >= 9;

-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance
SELECT * FROM "accounts"
ORDER BY "account_balance" DESC
LIMIT 3;

-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance
SELECT * FROM "accounts"
ORDER BY "account_balance"
LIMIT 3;

-- 7. Get all users with account balances that are more than $100
SELECT * FROM "accounts"
WHERE "account_balance" > 100;

-- 8. Add a new record
INSERT INTO "accounts"
("username", 
"city", 
"transactions_completed", 
"transactions_attempted", 
"account_balance")
VALUES
('bj', 
'minneapolis', 
37, 
37, 
1245239.88);

-- 9. Delete users that reside in Miami OR Phoenix and have completed fewer than 5 transactions
DELETE FROM "accounts"
WHERE ("city" ILIKE 'Miami' OR "city" ILIKE 'Phoenix') AND "transactions_completed" < 5;