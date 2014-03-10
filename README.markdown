# Redmine Named Priorities plugin #

## What? ##

A plugin for Redmine 2.x that makes issues' CSS classes (in the table in the *Issues* tab) include their priority's name.

## Why? ##

I needed to style issues based on priority. The CSS classes for an issue include its priority in the form `priority-n` where `n` is the priority's ID in the `enumerations` table. Priority IDs can be inconsistent across different environments and I needed a better way to identify them.

## How? ##

Create the `plugins/redmine_named_priorities_plugin` directory, copy `init.rb` into it and restart Redmine.

## License ##

This plugin is released under the [MIT License](http://opensource.org/licenses/MIT). Copyright (c) 2014 [marquete](https://github.com/marquete).