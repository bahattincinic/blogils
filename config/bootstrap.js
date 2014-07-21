/**
 * Bootstrap
 *
 * An asynchronous boostrap function that runs before your Sails app gets lifted.
 * This gives you an opportunity to set up your data model, run jobs, or perform some special logic.
 *
 * For more information on bootstrapping your app, check out:
 * http://sailsjs.org/#documentation
 */

module.exports.bootstrap = function (cb) {

  config.bloggerName = "Bahattin Cinic";
  config.subTitle = "Developer";
  config.biography = "Trust yourself! You can do it!";
  config.avatar = "https://secure.gravatar.com/avatar/c1184fefac22e49bbf59e3775ef6e9dd.png?size=400";
  config.facebook = "https://facebook.com/bahattincinic/";
  config.twitter = "https://twitter.com/bahattincinic/";
  config.github = "https://github.com/bahattincinic/";
  config.email = "bahattincinic@gmail.com";

  // It's very important to trigger this callack method when you are finished 
  // with the bootstrap!  (otherwise your server will never lift, since it's waiting on the bootstrap)
  cb();
};