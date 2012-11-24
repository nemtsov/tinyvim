Simple VIM Configuration
========================

The goal is to keep the configuration minimal.

I've been using [janus](https://github.com/carlhuda/janus) for about a year and a half and 
have been happy with it. Since I installed it, I've been disabling plugins I don't use, to ensure good performance. 
Now, I realized that only a handful are really useful for me and decided to go over my vimrc files, pull out just
the configuration I really use, organize it and create a minimal distro I can use across different machines. 

Pre-requisites
------------

  - git
  - make
  - [Inconsolata-g](http://leonardo-m.livejournal.com/77079.html) font

Installation
------------

Just run make:

    make

What's Inside
-------------

Configuration

  - sets spaces, not tabs
  - removes common annoyances
  - (gvim) colorscheme, font, gui-config

Plugins

  - pathogen
  - nerdtree
  - snipmate
