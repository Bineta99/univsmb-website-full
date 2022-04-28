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

  async getArticle(id) {
      try {
        this.article = await connexion.query("SELECT * FROM articles WHERE id = ?", [id]);
        return this.article;
    }
    catch (anError) {
      console.log('Error to get article list !');

      // See error from SQL Client
      //console.log(anError);
    }
  }
  getNat() {
    return this.article;
  }
}

module.exports = Articles;
