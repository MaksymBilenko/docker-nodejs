#!/bin/bash
set -e

cd $APP_HOME
NODE_EXEC=node

if [ $NODEMON == 'true' ]; then
	NODE_EXEC=nodemon
fi

npm install
if [[ $1 == \-\-* ]]; then	
	$NODE_EXEC $APP_MAIN "$@"
elif [ $1 ]; then
	exec "$@"
else
	$NODE_EXEC $APP_MAIN
fi
