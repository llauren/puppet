# puppetserver

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with puppetserver](#setup)
    * [What puppetserver affects](#what-puppetserver-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with puppetserver](#beginning-with-puppetserver)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module is just to configure my puppet server. By such, it is quite likely
of very little use to you. Sorry about that.


## Setup

Don't.

### What puppetserver affects 

This module was just created, so it actually does not do anything. At all.

The module will _eventually_ conigure my puppet server so that it can receive
code from git. For that, it needs a local directory `/usr/local/puppet` which
i will have to init with `git init bare puppet` -- manually unless there's a 
nice and nifty module for that. And then i'll have to create a mechanism for 
puppet modules. Oh dear.

But anyway, the idea is that a post-receive hook (errrrr--err--error checking
anyone?) deploys the code into my `/etc/puppetlabs/code` or something.

There shall be no secret stuff from my infrastructure here, apart from some 
hostnames. I'm not skilled enough to know how to hide those (cf. ansible vault).


### Setup Requirements 

You'll need my puppet server.

If you're handy with these things, you should be able to get by on yours.

### Beginning with puppetserver

Assign the class `puppetserver` to the puppet servers. Huzzah!


## Usage

Umm, don't?

## Reference

None, for now. Sloppy coding, i know.


## Limitations

All this development is severy limited by my skills. I'm trying to mitigate
this by learning (in public -- aargh!)

## Development

This stuff is developed during my copious spare time. 

