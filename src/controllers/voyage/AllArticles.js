
var Article = require('../../models/voyage/AllArticles');

exports.render = async function (req, res) {
  var defaultComponent = new Article(req, res);

  await defaultComponent.initialize();
  
  var ArticleList = await defaultComponent.getArticleList();

  res.render('voyage/accueil.html', { items: ArticleList});
}
