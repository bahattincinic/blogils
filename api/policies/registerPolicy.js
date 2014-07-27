module.exports = function (req, res, next) {
    if (req.session.user) {
        return res.redirect('/');
    }
    User.count().done(function(err, num){
      if(num > 0){
        return res.redirect('/user/login');
      }
    });
    next();
};