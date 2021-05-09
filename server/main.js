const express = require('express');
const mysql = require('mysql2/promise');

let db = null;
const app = express();


app.use(express.json());

app.post('/create-user', async(req, res, next)=>{
const name = req.body.name;
const avivId = req.body.avivId;
await db.query('INSERT INTO clients (`name`, `avivId`) VALUES (?,?);', [name, avivId]);
res.json({status:'OK'});
next();
});

async function main() {
db = await mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'qwerty',
    database: 'posdata',
    timezone: '+00:00',
    charset: 'utf8',
});
app.listen(8000);
}
main();