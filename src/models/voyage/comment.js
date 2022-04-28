var sql = require('../db/db_mariadb');

var connexion = null;

class Comments {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();

  }

  async getComments(id) {
      try {
        this.comment = await connexion.query("SELECT * FROM comments WHERE post_id = ?", [id]);
        return this.comment;
    }
    catch (anError) {
      console.log('Error to get comment list !');

      // See error from SQL Client
      //console.log(anError);
    }
  }
  getNat() {
    return this.comment;
  }
}

module.exports = Comments;
