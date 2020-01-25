#!/bin/bash

# Coreaudiod can sometimes hang when switching sound cards in Mojave/Catalina. 
# This will kill it so that it restarts itself again and activates the correct sound card.
sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`
