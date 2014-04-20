---
layout: post
title: perldelta - What's New in Perl Since 5.8 - April 24, 2014
date: 2014-04-19 21:02
comments: true
categories: meeting presentation
---

This month, [Doug Bell](http://blogs.perl.org/users/preaction) will be giving a presentation on
the most important features and modules added to the Perl core since the 5.8 series.

RSVP on the [Chicago.PM Meetup page](http://www.meetup.com/ChicagoPM/events/176551582/) to attend.

If you upgrade to 5.10 you get:

* say
* state
* defined-or (//)
* Switch (given/when)
* Module::CoreList - List the modules your Perl has in core

If you upgrade to 5.12 you get:

* The yada-yada operator (...)
* each(), keys(), and values() on arrays
* autodie

If you upgrade to 5.14 you get:

* Non-destructive substitution (s///r)
* More reliable exception throwing
* HTTP::Tiny
* JSON::PP

If you upgrade to 5.16 you get:

* Reference to the current running sub (__SUB__)

If you upgrade to 5.18 you get:

* Lexical subroutines (my sub, our sub, state sub)

Awaiting us in 5.20:

* Hash-based slices (%hash{...} and %array[...])
* EXP: Postfix dereference operators ($ref->%*)
* EXP: Subroutine signatures (sub mysub( $foo, $bar, @baz ) { ... })
* IO::Socket::IP
