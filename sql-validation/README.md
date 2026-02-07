# SQL Validation Project

This project validates API response data against SQLite database records using Node.js.

## Tools Used
- SQLite
- Node.js
- sqlite3 npm package

## Project Structure

sql-validation/
├── users.db
├── validate.js
├── package.json
└── README.md

## What This Project Does

1. Calls Public API (JSONPlaceholder)
2. Stores sample users in SQLite database
3. Compares API response with DB records
4. Prints MATCH / MISMATCH result

## How To Run

bash
npm install
node validate.js

## Sample Output 

VALIDATION RESULTS
User 1 MATCH
User 2 MATCH
User 3 MATCH

