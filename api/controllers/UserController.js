/**
 * UserController
 *
 * @module      :: Controller
 * @description	:: A set of functions called `actions`.
 *
 *                 Actions contain code telling Sails how to respond to a certain type of request.
 *                 (i.e. do stuff, then send some JSON, show an HTML page, or redirect to another URL)
 *
 *                 You can configure the blueprint URLs which trigger these actions (`config/controllers.js`)
 *                 and/or override them with custom routes (`config/routes.js`)
 *
 *                 NOTE: The code you write here supports both HTTP and Socket.io automatically.
 *
 * @docs        :: http://sailsjs.org/#!documentation/controllers
 */

var bcrypt = require('bcrypt');

module.exports = {

  /**
   * User Login
  */
  login: function(req, res){
    var redirect = req.param('redirect');
    redirect = redirect != 'undefined' ? redirect : '/';
    User.findOneByUsername(req.param('username'), function (err, user) {
        if(user && !err){
            var match = bcrypt.compareSync(req.param('password'), user.password);
            if(match){
                req.session.user = user;
                res.redirect(redirect);
            }else{
                res.view('user/login');
            }
        }else {
            res.view('user/login');
        }
    });
  },

  /**
   * User Register
  */
  register: function(req, res){
    res.view('user/register')
  },

  /**
   * User Logout
  */
  logout: function(req, res){
    User.findOne(req.session.user.id, function (err, user) {
      req.session.user = undefined;
      res.redirect('/user/login/');
    });
  },


  /**
   * Overrides for the settings in `config/controllers.js`
   * (specific to UserController)
   */
  _config: {}


};
