var sql = require('../db/db_mariadb');

var connexion = null;

class Articles {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();

  }

  async getArticleList() {
    try {
      this.articlesList = await connexion.query("SELECT * FROM articles");

      return this.articlesList;
    }
    catch (anError) {
      console.log('Error to get article list !');

      // See error from SQL Client
      //console.log(anError);
    }
  }
  getNat() {
    return this.articlesList;
  }
}

module.exports = Articles;
