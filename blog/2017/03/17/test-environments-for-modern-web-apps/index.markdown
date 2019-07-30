---
date: 2017-03-17
status: published
tags: [ meeting, web, testing ]
title: Test Environments for Modern Web Apps
---

This month, [William Lindley](http://wlindley.com) ([<i class="fa fa-github"></i>](http://github.com/lindleyw) [blog](http://blog.wlindley.com)) will
[talk about writing a test harness for modern Perl programs](https://www.meetup.com/ChicagoPM/events/238505149/)
using [Test::More](http://metacpan.org/pod/Test::More),
[Test::Mojo](http://mojolicious.org/perldoc/Test/Mojo) for the API, and
[DBIx::TempDB](https://metacpan.org/pod/DBIx::TempDB) for the
database.

Building, testing, and deploying actual systems is more complex than
merely writing a program. Real testing often needs to be done against
databases of known large or problematic datasets. A test environment
cannot affect production data. Staging even minor changes, so we can
preview and find errors before moving to production servers, can prevent
expensive errors. The "best practices" in this field are relatively new
and still changing, and we look at the first steps from "I built this
mockup last night" by building the test suite for a simple
database-driven file-upload service with
[Mojolicious](http://mojolicious.org).

William Lindley has been hacking computers (in the good sense) since
1977, a database advocate since dBase II and PostgreSQL-predecessor
Ingres in the 1980s, a Perl monger since 1994, and a free-software
promoter since first getting Linux to run XWindows in 1995.

If time permits, [Doug Bell (preaction)](http://preaction.me) ([<i class="fa fa-twitter"></i>](http://twitter.com/preaction)[<i class="fa fa-github"></i>](https://github.com/preaction)) will
show a simple app to mock JSON REST APIs for testing using Mojolicious.

[RSVP for the meeting on the Chicago.PM
Meetup](https://www.meetup.com/ChicagoPM/events/238505149/)
