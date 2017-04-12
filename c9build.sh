#!/bin/bash

# Client install and configure (using "mark-s2-tec")
mkdir -p $HOME/bin  
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux-dev.tgz | tar -zxvf- -C $HOME/bin
testspace config url http://095d8acfaaf71b4a0f3767e41152620ebdda1b31:@mark.stridespace.com/box_CIs_standalone

# Test
printenv > printenv.txt

testspace test.xml printenv.txt c9