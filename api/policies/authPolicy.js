/**
 * authPolicy
 *
 * @module      :: Policy
 * @description :: Simple policy to allow any authenticated user
 *
 */
module.exports = function (req, res, next) {
    if (req.session.user) {
        req.body.username = req.session.user.username;
        return next();
    }
    return res.redirect('/user/login?redirect=' + req.originalUrl);

};