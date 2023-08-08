const mysql = require('mysql');
const dotenv = require('dotenv');
const util = require('util');
dotenv.config()

const client = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
})

const query = util.promisify(client.query).bind(client);

client.connect((err) => {
    if (err) {
        console.log(err);
    } else {
        console.log('Database connected!');
    }
});

// USERS
async function createNewUser(username, password, email, isAdmin) {
    const result = await query(`INSERT INTO users VALUES(null, ?, ?, ?, ?, null)`,
        [username, password, email, isAdmin])
    return result;
    // return getUserById(id);
};

async function getUserByUsername(username) {
    const result = await query(`SELECT * FROM users WHERE username = ?`,
        [username])
    return result[0];
};

async function getUserById(id) {
    const result = await query(`SELECT * FROM users WHERE id = ?`,
        [id])
    return result[0];
};

module.exports = {
    client,
    createNewUser,
    getUserByUsername,
    getUserById,
};