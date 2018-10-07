# What is this?

This is curated collection of styles and components to allow you to quickly create high quality webpages and apps.

# Running the Styleguide

## Prerequisites

Before proceeding to the setup, ensure you have these installed on your system:

* node
* npm
* ruby

## Setup

```sh
$ make install
$ make start
```

## I just want to compile the css and not run a server, cool?

```sh
$ make
```

## Javascript?

The js is just for the styleguide itself. All shared javascript will be
published as private npm modules. Every project using the styleguide
will use browserify to require only what the project needs.

## essentials.css

We are basing this initially on <http://basscss.com>. Basscss is a
lightweight collection of base element styles, utilities, layout
modules, and color styles designed for speed, performance, and
scalability.

We will modify it to suite our needs. The tradeoffs we are embraceing
are:

* Minimalistic OOCSS which means lots of class names per element
* Speed is prioritized highest as designs will be done in the browser
* Sacrificing semantics and higher reusability
* Speed is prioritized for the viewer as well by not including lots of
  unused css
* Creating a new component should 95% of the time not require new css
* All updates are versioned with git tags: a project will freeze to a
  git tag directly
* All component updates are documented in the CHANGELOG by version
* Assets are linked directly from a CDN with url including it's version

## How do I use the compiled assets?

Simply run `make urls` and grab whatever you need, already served from the CDN

## Future stuff

There might be an upgrade script that will scan and find updated
components and instruct how to upgrade and what changed.
