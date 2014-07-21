/**
 * Blog
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs        :: http://sailsjs.org/#!documentation/models
 */

var slugify = require('slug');

module.exports = {

    attributes: {

        title: {
            type: 'string',
            required: true
        },

        slug: {
            type: 'string'
        },

        summary: {
            type: 'string',
            required: true
        },

        description: {
            type: 'string',
            required: true
        }

    },

    beforeCreate: function (values, next) {
        values.slug = slugify(values.title);
        next();
    }

};
