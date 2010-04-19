#! /bin/bash
wget --mirror http://luarocks.org/repositories/rocks/ -I 'repositories/rocks*'
wget --mirror http://luarocks.org/repositories/rocks-cvs/ -I 'repositories/rocks-cvs*'
