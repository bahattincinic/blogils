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

  /* Blogger Settings */
  config.blogger = {
    name: 'Bahattin Cinic',
    subTitle: 'Developer',
    biography: 'Trust yourself! You can do it!',
    avatar: 'https://secure.gravatar.com/avatar/c1184fefac22e49bbf59e3775ef6e9dd.png?size=400'
  }

  config.seo = {
    title: 'Bahattin Cinic',
    keyword: 'Developer, Js, Python, PHP, Javascript',
    description: 'Trust yourself! You can do it!'
  }

  /* Blogger Social Accounts */
  config.accounts = [
    {
      title: 'facebook',
      link: 'https://facebook.com/bahattincinic/'
    },
    {
      title: 'twitter',
      link: 'https://twitter.com/bahattincinic/'
    },
    {
      title: 'github',
      link: 'https://github.com/bahattincinic/',
    },
    {
      title: 'mail',
      link: 'mailto:bahattincinic@gmail.com'
    }
  ];

  // It's very important to trigger this callack method when you are finished
  // with the bootstrap!  (otherwise your server will never lift, since it's waiting on the bootstrap)
  cb();
};