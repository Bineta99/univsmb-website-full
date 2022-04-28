var db = require('mariadb');

var connexion = null;
var options = {};

class DbMariaDB {
  constructor() { 
    options = {
      host: 'localhost',
      user: 'websiteaccount',
      password: 'passwordDbUniv01',
      database: 'webiptables',
      allowPublicKeyRetrieval: true
    };
  }

  async startConnexion() {
    try {
      connexion = await db.createConnection(options);
    } catch (error) {
      console.log(error)
    }
  }
  
  async query(aQuery, anArgList) {
    return await connexion.query( aQuery, anArgList);
  }
  async close() {
    await connexion.end();
  }
}

module.exports = DbMariaDB;