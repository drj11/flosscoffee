# CoffeeScript and JavaScript

CoffeeScript compiles to JavaScript. That means that it runs everywhere
that JavaScript runs. In the browser obviously, but also on the command
line/server environment with the increasingly popular node.js. There
are also esoteric places like inside PDFs. The Wikipedia page suggests
lots of other places you might find JavaScript.

When writing a library to be used on the web, the CoffeeScript is
usually compiled to JavaScript first. There are often several steps,
such as minification, before JavaScript goes onto a Content
Distribution Network, so the compilation is Just Another Step.
It's possible however to include the CoffeeScript compiler as a
script tag in your web page, and then you can include CoffeeScript
directly as a script in your web page. It will be compiled into
JavaScript by the CoffeeScript compiler running on your browser.
This isn't very sensible use of resources, but it's okay for toy
projects: CoffeePlay is currently implemented like that, and so
is the very similar tool on coffeescript.org.

The golden rule of CoffeeScript is "it's just JavaScript". So the
builtins of CoffeeScript are really just the builtins of JavaScript.
Math, Array, RegExp and so on. A CoffeeScript function is really
just a JavaScript function.

Any JavaScript library is usable by a CoffeeScript program, and
vice-versa (if you compile your CoffeeScript). Both on the browser
and in node.js.

node.js is a command line environment for running JavaScript, and it
includes a completely different set of builtin libraries compared
with the browser.

At ScraperWiki we use CoffeeScript both in the browser for writing
the web-browser based component of our new platform, and on the
server for writing the server part of our web application, and for
writing command line tools which get run both on the server and
development laptops. It has been quite hard work. 

For the node.js environment we generally don't bother compiling the
CoffeeScript explicitly. For a command line tool we use
"#!/usr/bin/env coffee" and for a server we start it with
"coffee server.coffee" or similar. In both cases the CoffeeScript
is compiled on-the-fly. It's just fine.


# Installing on Ubuntu

apt-get install coffeescript

If that's an old version you may need to install from source.
You'll need git and curl and then node.js and npm.
And then coffeescript.

Googling for "installing coffeescript on ubuntu" gives what seems
to be a reasonable blog article, though I haven't actually tried it.

# Packaging

JavaScript, and hence CoffeeScript, does not come with many
batteries. Which means... 3rd party libraries. There are lots of
them. In the node.js environment one tool has become popular enough
to be recognised as the de facto packaging system: npm, Node Package
Manager. Packaging is basically writing a package.json file that
describes your dependencies. It's entirely possible that different
libraries that you depend on will themselves require different
versions of some library that each of them depends on. This all works
npm intelligently chooses version of libraries so that it can share
sub-dependencies where possible, but does not require that only
one version of any particular library be used by all the parts that
depend on it.

It also doesn't make me spell isntall correctly.

In the browser, there is no packaging, you just include
script tags in your HTML. If you're lucky a well used CDN will host
the library you want to use. Otherwise you have to download them
yourself and include them in a static /vendor path.

# 3rd party libraries

On the browser it is difficult to escape the dominance of jQuery
which makes using the HTML DOM and AJAX requests sane. Of course
this works fine from CoffeeScript though jQuery tends to need
lots of brackets so the resulting code tends to look a bit
JavaScripty.

For writing servers and command line tools the APIs tend to be
asynchronous, which means you'll be passing a function which will
get called later (when some file is available for opening, reading,
when a socket is ready for writing, and so on). This often means
lots of nested functions. The CoffeeScript syntax is quite compact
and quite helpful here. Dealing with lists in an asynchronous
fashion almost always calls for async.js. underscore is another
very useful helper library, containing lots of functions that
a functional programmer would use (map, reduce, every).

async and underscore can be used on the browser too, but they
tend not to be required.

For web-scraping, server-to-server proxying, and for tests, the
request library is really useful. It does HTTP requests.

# ScraperWiki stack (if time):

For web servers: Express for routing, passport for user sessions,
MongoDB for storing application data, mongoose for modelling that
data in CoffeeScript, eco for templating.

For testing: mocha as a framework, sinon for mocking, should.js
for assertions. And for testing the browser interface, after
many frustrating hours with Phantom and Zombie, we now have
frustrating hours with Selenium 2 and webdriver.

# Documentation and learning more

There's more to the language that we haven't had
time to cover. Regular Expressions which are just the same as
in JavaScript, the existential operator, and the class/object
system. The object system is based on JavaScript's prototype
inheritance, but is just a little bit more structured and
more conventional. Frameworks like backbone use it extensively.

coffeescript.org without a doubt. It's the definitive source
of CoffeeScript. The home page is quite terse, but pretty
much everything is in there.

There are a few books now about CoffeeScript. I haven't read them.

You'll also need to learn about JavaScript, the builtin objects are
JavaScript's builtin objects. The methods and operators available
on strings, arrays, and so on, are just as in JavaScript.

The ECMAScript standard is dry and fairly hard reading at times
(because it has to be very precise) but good.
Mozilla Developer Network is more accessible.

Then there's always google and Stack Overflow. But not everything
you read there is true.
