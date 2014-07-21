/**
 * Blog
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs		:: http://sailsjs.org/#!documentation/models
 */

var slugify = require('slug');

module.exports = {

  attributes: {

  	title: {
        type: 'string',
        reqired: true
    },

    slug: {
        type: 'string',
        reqired: true
    },

    summary: {
      type: 'test',
      reqired: true
    },

    description: {
        type: 'text',
        reqired: true
    },

    created_at: {
        type: 'datetime'
    }

  },

  beforeCreate: function (values, next) {
     var now = new Date();
     values.slug = slugify(values.title);
     values.created_at = now.format("dd/M/yy h:mm tt");
     next();
  }

};
