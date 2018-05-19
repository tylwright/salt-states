# Salt States
A collection of useful Salt states, formulas, and templates.

## How to Run
Since some of these states are deeply nested, you may be able to perform a series of tasks with the parent state.  For example:

Vim will be installed:
```
salt-call grains.append roles linux.packages.editors.vim
```

emacs, gedit, nano, and vim will be installed:
```
salt-call grains.append roles linux.packages.editors
```

## States
* linux
  * packages
      * alerting
          * zabbix
              * init (installs all below)
              * server
              * agent
      * databases
          * mysql
              * init (installs all below)
              * server (installs client also)
              * client
      * editors
          * init (installs all below)
          * emacs
          * gedit
          * nano
          * vim
      * languages
          * python
      * web-servers
          * apache
  * repositories
      * epel
      * zabbix


## Notes
This repo contains a collection of states that I find useful.  Please note that the structure of these states is unorthodox; the structure usually isn't this nested.  For me, I prefer this structure but you may wish to deviate from it.
