#!/usr/bin/env bash
cd ..
mvn clean install -am -pl leaf-server -Dmaven.test.skip=true
cd leaf-server
mvn  jib:build -Dmaven.test.skip=true -DsendCredentialsOverHttp=true
