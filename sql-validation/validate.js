const sqlite3 = require("sqlite3").verbose();
const https = require("https");

// Connect DB
const db = new sqlite3.Database("users.db");

// Fetch API users
function fetchApiUsers() {
  return new Promise((resolve, reject) => {
    https.get("https://jsonplaceholder.typicode.com/users", (res) => {
      let data = "";

      res.on("data", chunk => data += chunk);
      res.on("end", () => resolve(JSON.parse(data)));
    }).on("error", err => reject(err));
  });
}

// Fetch DB users
function fetchDbUsers() {
  return new Promise((resolve, reject) => {
    db.all("SELECT * FROM users", (err, rows) => {
      if (err) reject(err);
      else resolve(rows);
    });
  });
}

// Compare
async function validate() {
  const apiUsers = await fetchApiUsers();
  const dbUsers = await fetchDbUsers();

  console.log("\n--- VALIDATION RESULTS ---");

  dbUsers.forEach(dbUser => {
    const apiUser = apiUsers.find(u => u.id === dbUser.id);

    if (!apiUser) {
      console.log(`❌ User ID ${dbUser.id} missing in API`);
      return;
    }

    if (
      apiUser.name === dbUser.name &&
      apiUser.username === dbUser.username &&
      apiUser.email === dbUser.email
    ) {
      console.log(`✅ User ${dbUser.id} MATCH`);
    } else {
      console.log(`⚠️ User ${dbUser.id} MISMATCH`);
    }
  });

  db.close();
}

validate();
