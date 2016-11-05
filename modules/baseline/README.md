# baseline

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with baseline](#setup)
    * [What baseline affects](#what-baseline-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with baseline](#beginning-with-baseline)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module sets basic settings for the managed nodes. This includes `apt` updates
and firewall settings... uh, setting. Again, nothing fancy, but if i learn in public,
maybe i take care of doing it with some thought...

## Setup

Set all your nodes to use the `baseline` class. Probably only works for Debian systems
for now. Will possibly support Darwin (macOS) at some stage, but that's about it.

### What baseline affects 

* Makes sure the `puppet` agent is running
* Links `/usr/local/bin/puppet` so that it can be run from the command line. 
  This will fail miserably since Macs by default don't have a `bin` directory
  under `/usr/local`
* Sets the firewall to only open port 22 for incoming traffic, and rate-limit
  incoming calls to six per half-minute
* Sets `apt` to do its work automatically and rebooting the machines if so
  needed without asking


### Setup Requirements 

You'll probably need _my_  machines... :D


### Beginning with baseline

In your `site.pp` (possibly `/etc/puppetlabs/code/environments/production/manifests/site.pp`),
set all nodes to `include baseline`. If you're just starting out, 

```
node default {
  notify { "Hello, ${fqdn}!": }
  include baseline
}
```

will do just fine.

## Usage

Don't?

## Reference

None, for now.

## Limitations

Me, mostly. 

## Development

Developed mostly during my copious spare time (or at work when i 
need to figure something out)
