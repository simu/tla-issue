#!/bin/sh
java -Djava.rmi.server.hostname=127.0.0.1 -Dtlc2.tool.distributed.TLCWorker.threadCount=4 -cp tla2tools.jar tlc2.tool.distributed.TLCWorker localhost
