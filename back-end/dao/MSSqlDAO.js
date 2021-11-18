const mssql = require('mssql');
//
require('dotenv/config');
//

// async/await style:
const pool = new mssql.ConnectionPool({
    server: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_MSSQL,
    pool: {
      max: 5,
      min: 0      
    },
    options: {
      encrypt: true, // for azure
      trustServerCertificate: true // change to true for local dev / self-signed certs
    }
});
pool.connect();
//const poolConnect = pool.connect();

/*
pool.on('error', err => {
    // ... error handler
})

async function messageHandler() {
    await pool1Connect; // ensures that the pool has been created
    try {
        const request = pool1.request(); // or: new sql.Request(pool1)
        const result = await request.query('select 1 as number')
        console.dir(result)
        return result;
    } catch (err) {
        console.error('SQL error', err);
    }
}
*/

module.exports = {
    readAny : async () => {       
        //let request = new mssql.Request(pool);
        let result = await pool.query('SELECT * FROM Paises');
        return result.recordset;
    }     
};