# bobby-flay
Chef experimentation for webserver configuration and deployment

### About

Syncs from [mini-meyer] (https://github.com/mvs5465/mini-meyer) repository.

Attempts to configure an Ubuntu 16.04 node as a Flask webserver.

### Technical

The [bobby-flay] (https://github.com/mvs5465/bobby-flay/tree/master/cookbooks/bobby_flay) cookbook attempts the following:
1. Run apt-update
2. Install/upgrade *python*
3. Install/upgrade *pip*
4. Install/upgrade *flask*
5. Clone/sync git repo containing webserver code 
6. Init/run webserver

### Usage

To test deployment: run `kitchen converge` while within *bobby-flay/cookbooks/bobby-flay*.

### Misc

Author: Matthew Schwartz

Copyright: *you bet it is*


