#!/bin/bash

# Download Client

curl -s https://testspace-client.s3.amazonaws.com/testspace-linux-dev.tgz | sudo tar -zxvf- -C /usr/local/bin

# Build

# Test

# Post (using "mark-s2-tec")
export MARK_TOKEN=095d8acfaaf71b4a0f3767e41152620ebdda1b31
testspace config url http://$MARK_TOKEN@mark.stridespace.com/box_CIs_standalone
testspace test.xml space-1