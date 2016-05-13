#!/bin/bash
set -e

cd $APP_HOME
NODE_EXEC=node

if [ $NODEMON == 'true' ]; then
	NODE_EXEC=nodemon
fi

npm install
$NODE_EXEC $APP_MAIN