---
title: "How to Edit This Site"
author: Joel Berger
---

# How To Edit This Site

This site is hosted on GitHub at
[https://github.com/ChicagoPM/ChicagoPM.github.io](https://github.com/ChicagoPM/ChicagoPM.github.io).
But wait! Thats not enough to go tinkering just yet. Please read at least
through the section entitled _For small changes_ before contributing. Thanks.

## Statocles

This site uses [Statocles](http://preaction.github.io/Statocles/) to manage and
publish a site hosted on [GitHub Pages](http://pages.github.com/).

## Structure

A Statocles site contains a bunch of Markdown documents with YAML at the top
(called Frontmatter).

The blog posts are located in the `blog` directory. Other directories have their
own markdown files that get generated into HTML.

## Setting up your system

To install Statocles, if you already have Perl installed, run `cpan Statocles`.

## For small changes ...

Running Statocles makes administering the site easy.

1. Fork the repo
2. Edit the files you want
3. Run `statocles daemon` to check that everything looks good
4. Commit to your fork
5. Submit a pull request for consideration

If you want to create new pages or blog posts, or if you want to be able to
deploy the site, you will need to read on!

## Create a new post

Create a new blog post by running:

    statocles blog post

This will create a new blog file. It will already contain some metadata.  Under
the metadata, add your markdown formatted content. Once the blog is regenerated
the post should show up in the blog section of the site.

## Create a new page

To create a new page, simply make a Markdown file anywhere in the repository.
For example, to make an "/example/" page:

    mkdir example
    # Open up example/index.markdown in your editor

If you need to add a link to the main navigation, you can do so in the `site.yml` file.

## Previewing the site locally

To start a local server to preview the site, run

    statocles daemon

and then visit the site at `localhost:3000` (or whatever it tells you). You
should be able to see the site. When you save source files, it should
regenerate the site for you, simply refresh the page to see the result.

## Deploying the site

If you have commit privileges to the main repository, and assuming you did the
required setup step above, you can issue

    statocles deploy

It should push the local changes to the `master` branch on GitHub and thus it
will be publically viewable. Note that in this case you should also commit your
changes and push them.

    git commit -a -m 'message'
    git push origin source

If you don't have commit rights, you should commit to your local fork, then
issue a pull request we will evaluate your changes and hopefully deploy them
soon.

