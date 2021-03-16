#!/bin/bash
set -euxo pipefail

##############################################################################
##
##  GH actions CI test script
##
##############################################################################

# LMP 3.0+ goals are listed here: https://github.com/OpenLiberty/ci.maven#goals
export HOSTNAME=localhost


## Rebuild the application
#       package                   - Take the compiled code and package it in its distributable format.
#       liberty:create            - Create a Liberty server.
#       liberty:install-feature   - Install a feature packaged as a Subsystem Archive (esa) to the Liberty runtime.
#       liberty:deploy            - Copy applications to the Liberty server's dropins or apps directory.
mvn -q clean package 
mvn -pl system liberty:create 
mvn -pl system liberty:install-feature 
mvn -pl system liberty:deploy

mvn -pl inventory liberty:create 
mvn -pl inventory liberty:install-feature 
mvn -pl inventory liberty:deploy


## Run the tests
# These commands are separated because if one of the commands fail, the test script will fail and exit.
# e.g if liberty:start fails, then there is no need to run the failsafe commands.
#       liberty:start             - Start a Liberty server in the background.
#       failsafe:integration-test - Runs the integration tests of an application.
#       liberty:stop              - Stop a Liberty server.
#       failsafe:verify           - Verifies that the integration tests of an application passed.
mvn -pl system liberty:start
mvn -pl inventory liberty:start
mvn verify -Dsystem.ip=localhost:9080 -Dinventory.ip=localhost:8080 liberty:stop
# mvn failsafe:integration-test 
# mvn failsafe:verify