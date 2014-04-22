chef-ferry
========

Provisioning [ferry](https://github.com/opencore/ferry)'s environment.

## Requirements

- virtualbox
- vagrant
- ruby

## Setup

```
$ git clone https://github.com/calorie/chef-ferry.git
$ cd chef-dev
$ bundle install --path vendor/bundle --binstubs .bundle/bin
$ berks vendor cookbooks
$ vagrant up
```
