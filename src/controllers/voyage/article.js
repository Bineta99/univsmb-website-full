
var Article = require('../../models/voyage/article');
var Comments = require('../../models/voyage/comment');


exports.render = async function (req, res) {
  var defaultComponent = new Article(req, res);
  var defaultcomments = new Comments(req, res);

  await defaultComponent.initialize();
  await defaultcomments.initialize();
  
  var gotID = req.params.id;

  var ArticleList = await defaultComponent.getArticle(gotID);
  var commentsList = await defaultcomments.getComments(gotID);

  res.render('voyage/article.html', { items: ArticleList, comments: commentsList});
}
