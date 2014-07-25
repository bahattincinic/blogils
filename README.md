![logo](https://cloud.githubusercontent.com/assets/1684999/3682049/833254d0-12c3-11e4-8be8-b834685e761b.png)
=======

Simple Blog Application uses Sails.js, Angular Js, React Js and MongoDb

[![Build Status](https://travis-ci.org/bahattincinic/blogils.svg?branch=master)](https://travis-ci.org/bahattincinic/blogils) [![Dependency Status](https://david-dm.org/bahattincinic/blogils.svg)](https://david-dm.org/bahattincinic/blogils)

Screenshots
------
![screen shot 1](https://cloud.githubusercontent.com/assets/1684999/3694828/8a968210-1376-11e4-9032-1afcc451a5c2.png)

![screen shot 2](https://cloud.githubusercontent.com/assets/1684999/3694818/65251d5c-1376-11e4-8b2f-f5bbf1f3bb94.png)

![screen shot 3](https://cloud.githubusercontent.com/assets/1684999/3694819/652674cc-1376-11e4-891e-03768ecb2db2.png)

theme by [Dale-Anthony](https://github.com/daleanthony/uno)

Requirements
-------------
1. Node Js
2. Bower (`pip install -g bower`)
3. Sails (`npm install -g sails`)
4. mongodb

Installation
-------------
1. git clone https://github.com/bahattincinic/blogils blogils
2. cd blogils
3. npm install
4. cd assets/linker/
5. bower install
6. touch config/local.js

Install mongodb:
-------------

    sudo apt-get install mongodb
    # or on mac
    sudo brew install mongodb

Start mongodb:
-------------

    mongod

Edit mongoDb settings (`config/local.js`)
-------------

    module.exports = {
        port: process.env.PORT || 1337,
        environment: process.env.NODE_ENV || 'development',
        adapters: {
          'default': 'mongo',
            mongo: {
             module   : 'sails-mongo',
             host     : 'localhost',
             port     : 27017,
             user     : '<user>',
             password : '<password>',
             database : '<db>',
           }
        },
        session: {
          adapter: 'mongo',
          host: 'localhost',
          port: 27017,
          db: '<db>',
          collection: 'sessions',
          username: '<user>',
          password: '<password>',
          auto_reconnect: false,
          ssl: false,
          stringify: true
        }
    
    };

Personalize your theme
-------------
edit to file in the `config/bootstrap.js`
    
    module.exports.bootstrap = function (cb) {
      /* Blogger Settings */
      config.blogger = {
        name: 'Bahattin Cinic',
        subTitle: 'Developer',
        biography: 'Trust yourself! You can do it!',
        avatar: 'https://secure.gravatar.com/avatar/c1184fefac22e49bbf59e3775ef6e9dd.png?size=400'
      }
    
      /* Seo Settings */
      config.seo = {
        title: 'Bahattin Cinic',
        keyword: 'Developer, Js, Python, PHP, Javascript',
        description: 'Trust yourself! You can do it!'
      }
    
      /* Disqus Settings */
      config.comment = {
        is_active: true,
        disqus_shortname: 'bahattininic'
      }
    
      /* AddThis Share */
      config.share = true;
    
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

run the following commands:
-------------
    sails lift


Blog URls
-------------
1. /admin/
2. /user/login/
3. /user/logout/
4. /post/`:slug`/`:id`/
