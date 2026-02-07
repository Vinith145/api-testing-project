SQL Validation Steps

1. Create database
   sqlite3 users.db

2. Run schema
   sqlite3 users.db < setup.sql

3. Verify data
   sqlite3 users.db
   SELECT * FROM users;

4. Run validation
   node validate.js

Expected Output:
User 1 MATCH
User 2 MISMATCH
User 3 MISMATCH

