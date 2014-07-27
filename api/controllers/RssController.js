var Feed = require('feed');
var util = require('util');
var Entities = new require('html-entities').XmlEntities;
entities = new Entities();

var RssController = {
    /* get rss feed instance */
    feedInstance: function () {
        return new Feed({
            title: config.seo.title,
            description: config.seo.description,
            link: config.domain,
            copyright: util.format('Copyright © 2014 %s All rights reserved', config.blogger.name),
            author: {
                name: config.blogger.name,
                email: config.blogger.email,
                link: config.domain
            }
        });
    },

    /* all blogs */
    index: function (req, res) {
        var feed = RssController.feedInstance();
        Blog.find().sort('createdAt desc').done(function (err, blogs) {
            for (key in blogs) {
                feed.addItem({
                    title: blogs[key].title,
                    link: util.format('%spost/%s/%s', config.domain, blogs[key].slug, blogs[key].id),
                    content: blogs[key].description,
                    description: entities.encode(blogs[key].description),
                    date: new Date(blogs[key].createdAt)
                });
            }
            res.set('Content-Type', 'text/xml');
            res.send(feed.render('rss-2.0'));
        });
    },

    /* post deatail */
    post: function (req, res) {
        var feed = RssController.feedInstance();
        Blog.findOneById(req.param('id')).done(function (err, post) {
            if (err) return next(err);
            if (!post) {
                return res.notFound();
            }
            feed.title = post.title;
            feed.link = util.format('%spost/%s/%s', config.domain, post.slug, post.id);
            res.set('Content-Type', 'text/xml');
            res.send(feed.render('rss-2.0'));
        });
    }
}

module.exports = RssController;