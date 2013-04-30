Tiny VIM Configuration
======================

The goal is to keep the configuration minimal.

I've been using [janus](https://github.com/carlhuda/janus) for about a year and a half and 
have been happy with it, but since I installed it, I've been disabling plugins I don't use, to ensure good performance. 
Now, I've realized that only a handful are useful to me and decided to go over my vimrc files, pull out just
the configuration I really use, organize it and create a minimal distro I can use across different machines.

On my MBP, circa 2009 (w/ ssd), I went from a noticable ~1.5-second load-time with janus to a snappy ~200ms
with this setup; which, obviously, makes me happy.

Pre-requisites
------------

  - git
  - make
  - [Inconsolata-g](http://leonardo-m.livejournal.com/77079.html) font (for gvim/macvim)

Installation
------------

Just run make. This will save your a back-up of your current vim config to `~/.vim_old_bkp`. Also,
since the make will create alises back to this dir, I recommend putting it somewhere you want to keep:

    cd <DIR_YOU_WANT_TO_KEEP>
    git clone https://github.com/nemtsov/tinyvim.git
    cd tinyvim
    make

What's Inside
-------------

**Configuration**

  - sets spaces, not tabs
  - removes common annoyances
  - (gvim) colorscheme, font, gui-config

**Plugins**

Take a look at the [bundles file](https://github.com/nemtsov/tinyvim/blob/master/bundles).
It's a list of the plugins that this distribution includes.
